param(
    [string]$XlsxPath = "",
    [string]$SheetName = "",
    [string]$OutputApiPath = "data/products.api.json",
    [string]$OutputFullPath = "data/products.full.json",
    [string]$OutputDuplicatesPath = "data/products.duplicates.json",
    [string]$OutputImagesDir = "product_images",
    [string]$ImageUrlPrefix = "/product_images",
    [bool]$ClearImageFolder = $true
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Add-Type -AssemblyName System.IO.Compression.FileSystem

$projectRoot = Resolve-Path (Join-Path $PSScriptRoot "..")

function Resolve-ProjectPath {
    param([string]$PathValue)
    if ([System.IO.Path]::IsPathRooted($PathValue)) {
        return [System.IO.Path]::GetFullPath($PathValue)
    }
    return [System.IO.Path]::GetFullPath((Join-Path $projectRoot $PathValue))
}

function Normalize-ZipPath {
    param([string]$PathValue)
    $parts = $PathValue -replace "\\", "/" -split "/"
    $stack = New-Object System.Collections.Generic.List[string]

    foreach ($part in $parts) {
        if ([string]::IsNullOrWhiteSpace($part) -or $part -eq ".") {
            continue
        }
        if ($part -eq "..") {
            if ($stack.Count -gt 0) {
                $stack.RemoveAt($stack.Count - 1)
            }
            continue
        }
        $stack.Add($part)
    }

    return ($stack -join "/")
}

function Resolve-ZipTarget {
    param(
        [string]$SourcePartPath,
        [string]$TargetPath
    )

    if ([string]::IsNullOrWhiteSpace($TargetPath)) {
        return $null
    }

    if ($TargetPath -match "^[a-zA-Z]+:") {
        return $TargetPath
    }

    $sourceNormalized = Normalize-ZipPath $SourcePartPath
    $sourceParts = $sourceNormalized -split "/"
    $baseDir = ""
    if ($sourceParts.Count -gt 1) {
        $baseDir = ($sourceParts[0..($sourceParts.Count - 2)] -join "/")
    }

    if ([string]::IsNullOrWhiteSpace($baseDir)) {
        return Normalize-ZipPath $TargetPath
    }

    return Normalize-ZipPath "$baseDir/$TargetPath"
}

function Get-ZipEntry {
    param(
        [System.IO.Compression.ZipArchive]$Zip,
        [string]$EntryPath
    )

    $normalizedPath = Normalize-ZipPath $EntryPath
    return $Zip.Entries | Where-Object { $_.FullName -eq $normalizedPath } | Select-Object -First 1
}

function Read-ZipText {
    param(
        [System.IO.Compression.ZipArchive]$Zip,
        [string]$EntryPath
    )

    $entry = Get-ZipEntry -Zip $Zip -EntryPath $EntryPath
    if (-not $entry) {
        return $null
    }

    $reader = [System.IO.StreamReader]::new($entry.Open())
    try {
        return $reader.ReadToEnd()
    }
    finally {
        $reader.Dispose()
    }
}

function Copy-ZipEntryToFile {
    param(
        [System.IO.Compression.ZipArchive]$Zip,
        [string]$EntryPath,
        [string]$DestinationPath
    )

    $entry = Get-ZipEntry -Zip $Zip -EntryPath $EntryPath
    if (-not $entry) {
        return $false
    }

    $destinationDir = Split-Path -Path $DestinationPath -Parent
    if (-not (Test-Path -Path $destinationDir)) {
        New-Item -Path $destinationDir -ItemType Directory -Force | Out-Null
    }

    $inputStream = $entry.Open()
    $outputStream = [System.IO.File]::Create($DestinationPath)

    try {
        $inputStream.CopyTo($outputStream)
    }
    finally {
        $outputStream.Dispose()
        $inputStream.Dispose()
    }

    return $true
}

function Get-RelationshipMap {
    param(
        [xml]$RelsXml,
        [string]$OwnerPartPath
    )

    $result = @{}
    if (-not $RelsXml) {
        return $result
    }

    $rels = $RelsXml.SelectNodes("//*[local-name()='Relationship']")
    foreach ($rel in $rels) {
        $id = $rel.GetAttribute("Id")
        $target = $rel.GetAttribute("Target")
        if ([string]::IsNullOrWhiteSpace($id)) {
            continue
        }
        $result[$id] = [ordered]@{
            Type = $rel.GetAttribute("Type")
            Target = Resolve-ZipTarget -SourcePartPath $OwnerPartPath -TargetPath $target
            TargetMode = $rel.GetAttribute("TargetMode")
        }
    }

    return $result
}

function Get-CellValue {
    param(
        [System.Xml.XmlNode]$CellNode,
        [System.Collections.Generic.List[string]]$SharedStrings
    )

    $type = $null
    if ($CellNode.Attributes["t"]) {
        $type = $CellNode.Attributes["t"].Value
    }
    $valueNode = $CellNode.SelectSingleNode("./*[local-name()='v']")

    if ($type -eq "s" -and $valueNode) {
        $index = 0
        if ([int]::TryParse($valueNode.InnerText, [ref]$index)) {
            if ($index -ge 0 -and $index -lt $SharedStrings.Count) {
                return $SharedStrings[$index]
            }
        }
        return $valueNode.InnerText
    }

    if ($type -eq "inlineStr") {
        $textNode = $CellNode.SelectSingleNode(".//*[local-name()='t']")
        if ($textNode) {
            return $textNode.InnerText
        }
    }

    if ($valueNode) {
        return $valueNode.InnerText
    }

    return ""
}

function Parse-Decimal {
    param([string]$RawValue)

    if ([string]::IsNullOrWhiteSpace($RawValue)) {
        return $null
    }

    $normalized = $RawValue.Trim().Replace(",", ".")
    $number = 0.0
    if ([double]::TryParse($normalized, [System.Globalization.NumberStyles]::Any, [System.Globalization.CultureInfo]::InvariantCulture, [ref]$number)) {
        return [math]::Round($number, 2)
    }

    return $null
}

function Normalize-Barcode {
    param([string]$Barcode)
    if ($null -eq $Barcode) {
        return ""
    }
    return ($Barcode.ToLowerInvariant() -replace "[\s_-]+", "")
}

function Write-JsonFile {
    param(
        [object]$Payload,
        [string]$FilePath
    )

    $directory = Split-Path -Path $FilePath -Parent
    if (-not (Test-Path -Path $directory)) {
        New-Item -Path $directory -ItemType Directory -Force | Out-Null
    }

    $json = $Payload | ConvertTo-Json -Depth 16
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($FilePath, $json, $utf8NoBom)
}

function To-SafeFileToken {
    param([string]$TextValue)

    $token = ($TextValue -replace "[^A-Za-z0-9\-]+", "-").Trim("-")
    if ([string]::IsNullOrWhiteSpace($token)) {
        return "product"
    }
    return $token
}

function Get-CharacteristicValue {
    param(
        [object]$CharacteristicObject,
        [string]$PropertyName
    )

    if ($null -eq $CharacteristicObject) {
        return $null
    }

    $property = $CharacteristicObject.PSObject.Properties[$PropertyName]
    if ($null -eq $property) {
        return $null
    }

    return $property.Value
}

$xlsxFile = $null
if ([string]::IsNullOrWhiteSpace($XlsxPath)) {
    $xlsxCandidate = Get-ChildItem -Path $projectRoot -Filter "*.xlsx" -File | Sort-Object LastWriteTime -Descending | Select-Object -First 1
    if ($xlsxCandidate) {
        $xlsxFile = $xlsxCandidate.FullName
    }
}
else {
    $xlsxFile = Resolve-ProjectPath $XlsxPath
}

$apiOutputFile = Resolve-ProjectPath $OutputApiPath
$fullOutputFile = Resolve-ProjectPath $OutputFullPath
$dupesOutputFile = Resolve-ProjectPath $OutputDuplicatesPath
$imagesDirPath = Resolve-ProjectPath $OutputImagesDir
$imagePrefix = "/" + ($ImageUrlPrefix.Trim().Trim("/"))

if ([string]::IsNullOrWhiteSpace($xlsxFile) -or -not (Test-Path -Path $xlsxFile)) {
    throw "Input XLSX not found: $xlsxFile"
}

if (-not (Test-Path -Path $imagesDirPath)) {
    New-Item -Path $imagesDirPath -ItemType Directory -Force | Out-Null
}
elseif ($ClearImageFolder) {
    Get-ChildItem -Path $imagesDirPath -File -Force | Remove-Item -Force
}

$zip = [System.IO.Compression.ZipFile]::OpenRead($xlsxFile)
try {
    $workbookXmlText = Read-ZipText -Zip $zip -EntryPath "xl/workbook.xml"
    if (-not $workbookXmlText) {
        throw "Workbook XML missing in XLSX."
    }

    $workbookXml = [xml]$workbookXmlText
    $workbookRelsXml = [xml](Read-ZipText -Zip $zip -EntryPath "xl/_rels/workbook.xml.rels")
    $workbookRelMap = Get-RelationshipMap -RelsXml $workbookRelsXml -OwnerPartPath "xl/workbook.xml"

    $sheetNodes = $workbookXml.SelectNodes("//*[local-name()='sheets']/*[local-name()='sheet']")
    if (-not $sheetNodes -or $sheetNodes.Count -eq 0) {
        throw "No worksheets found in workbook."
    }

    $selectedSheet = $null
    if (-not [string]::IsNullOrWhiteSpace($SheetName)) {
        foreach ($sheetNode in $sheetNodes) {
            if ($sheetNode.GetAttribute("name") -eq $SheetName) {
                $selectedSheet = $sheetNode
                break
            }
        }
        if (-not $selectedSheet) {
            throw "Sheet '$SheetName' was not found."
        }
    }
    else {
        $selectedSheet = $sheetNodes[0]
    }

    $sheetRidAttr = $selectedSheet.Attributes | Where-Object { $_.LocalName -eq "id" } | Select-Object -First 1
    if (-not $sheetRidAttr) {
        throw "Sheet relationship id is missing."
    }

    $sheetRid = $sheetRidAttr.Value
    if (-not $workbookRelMap.ContainsKey($sheetRid)) {
        throw "Workbook relationship not found for sheet rid '$sheetRid'."
    }

    $sheetPath = $workbookRelMap[$sheetRid].Target
    $sheetXmlText = Read-ZipText -Zip $zip -EntryPath $sheetPath
    if (-not $sheetXmlText) {
        throw "Worksheet XML missing: $sheetPath"
    }

    $sheetXml = [xml]$sheetXmlText

    $sharedStrings = [System.Collections.Generic.List[string]]::new()
    $sharedXmlText = Read-ZipText -Zip $zip -EntryPath "xl/sharedStrings.xml"
    if ($sharedXmlText) {
        $sharedXml = [xml]$sharedXmlText
        $stringNodes = $sharedXml.SelectNodes("//*[local-name()='si']")
        foreach ($stringNode in $stringNodes) {
            $segments = $stringNode.SelectNodes(".//*[local-name()='t']")
            if (-not $segments -or $segments.Count -eq 0) {
                $sharedStrings.Add("")
                continue
            }

            $builder = [System.Text.StringBuilder]::new()
            foreach ($segment in $segments) {
                [void]$builder.Append($segment.InnerText)
            }
            $sharedStrings.Add($builder.ToString())
        }
    }

    $sheetNameInBook = $selectedSheet.GetAttribute("name")
    Write-Host "Exporting from sheet: $sheetNameInBook"

    $imageByRow = @{}
    $sheetNormalized = Normalize-ZipPath $sheetPath
    $sheetParts = $sheetNormalized -split "/"
    if ($sheetParts.Count -lt 2) {
        throw "Invalid worksheet part path: $sheetPath"
    }

    $sheetDir = ($sheetParts[0..($sheetParts.Count - 2)] -join "/")
    $sheetFile = $sheetParts[$sheetParts.Count - 1]
    $sheetRelsPath = Normalize-ZipPath "$sheetDir/_rels/$sheetFile.rels"
    $sheetRelsText = Read-ZipText -Zip $zip -EntryPath $sheetRelsPath

    if ($sheetRelsText) {
        $sheetRelsXml = [xml]$sheetRelsText
        $sheetRelMap = Get-RelationshipMap -RelsXml $sheetRelsXml -OwnerPartPath $sheetPath
        $drawingRel = $sheetRelMap.GetEnumerator() | Where-Object { $_.Value.Type -like "*relationships/drawing" } | Select-Object -First 1

        if ($drawingRel) {
            $drawingPath = $drawingRel.Value.Target
            $drawingXmlText = Read-ZipText -Zip $zip -EntryPath $drawingPath

            if ($drawingXmlText) {
                $drawingXml = [xml]$drawingXmlText

                $drawingParts = (Normalize-ZipPath $drawingPath) -split "/"
                $drawingDir = ($drawingParts[0..($drawingParts.Count - 2)] -join "/")
                $drawingFile = $drawingParts[$drawingParts.Count - 1]
                $drawingRelsPath = Normalize-ZipPath "$drawingDir/_rels/$drawingFile.rels"
                $drawingRelsText = Read-ZipText -Zip $zip -EntryPath $drawingRelsPath

                $drawingRelMap = @{}
                if ($drawingRelsText) {
                    $drawingRelXml = [xml]$drawingRelsText
                    $drawingRelMap = Get-RelationshipMap -RelsXml $drawingRelXml -OwnerPartPath $drawingPath
                }

                $anchorNodes = $drawingXml.SelectNodes("//*[local-name()='twoCellAnchor' or local-name()='oneCellAnchor']")
                foreach ($anchorNode in $anchorNodes) {
                    $fromNode = $anchorNode.SelectSingleNode("./*[local-name()='from']")
                    if (-not $fromNode) {
                        continue
                    }

                    $colNode = $fromNode.SelectSingleNode("./*[local-name()='col']")
                    $rowNode = $fromNode.SelectSingleNode("./*[local-name()='row']")
                    if (-not $colNode -or -not $rowNode) {
                        continue
                    }

                    $fromCol = 0
                    $fromRow = 0
                    if (-not [int]::TryParse($colNode.InnerText, [ref]$fromCol)) {
                        continue
                    }
                    if (-not [int]::TryParse($rowNode.InnerText, [ref]$fromRow)) {
                        continue
                    }

                    if ($fromCol -ne 1) {
                        continue
                    }

                    $blipNode = $anchorNode.SelectSingleNode(".//*[local-name()='blip']")
                    if (-not $blipNode) {
                        continue
                    }

                    $embedAttr = $blipNode.Attributes | Where-Object { $_.LocalName -eq "embed" } | Select-Object -First 1
                    if (-not $embedAttr) {
                        continue
                    }

                    $rid = $embedAttr.Value
                    if (-not $drawingRelMap.ContainsKey($rid)) {
                        continue
                    }

                    $mediaTarget = $drawingRelMap[$rid].Target
                    if ([string]::IsNullOrWhiteSpace($mediaTarget)) {
                        continue
                    }

                    $excelRow = $fromRow + 1
                    if (-not $imageByRow.ContainsKey($excelRow)) {
                        $imageByRow[$excelRow] = $mediaTarget
                    }
                }
            }
        }
    }

    $rowNodes = $sheetXml.SelectNodes("//*[local-name()='sheetData']/*[local-name()='row']")
    $fullProducts = [System.Collections.Generic.List[object]]::new()
    $writtenImageCount = 0
    $webImageExtensions = @(".png", ".jpg", ".jpeg", ".webp", ".gif")

    foreach ($rowNode in $rowNodes) {
        $rowIndexRaw = $null
        if ($rowNode.Attributes["r"]) {
            $rowIndexRaw = $rowNode.Attributes["r"].Value
        }
        $rowIndex = 0
        if (-not [int]::TryParse($rowIndexRaw, [ref]$rowIndex)) {
            continue
        }
        if ($rowIndex -eq 1) {
            continue
        }

        $cells = $rowNode.SelectNodes("./*[local-name()='c']")
        if (-not $cells -or $cells.Count -eq 0) {
            continue
        }

        $rowMap = @{}
        foreach ($cellNode in $cells) {
            $ref = $null
            if ($cellNode.Attributes["r"]) {
                $ref = $cellNode.Attributes["r"].Value
            }
            if ([string]::IsNullOrWhiteSpace($ref)) {
                continue
            }

            $column = [regex]::Match($ref, "^[A-Z]+").Value
            if ([string]::IsNullOrWhiteSpace($column)) {
                continue
            }

            $value = (Get-CellValue -CellNode $cellNode -SharedStrings $sharedStrings)
            if ($null -eq $value) {
                $value = ""
            }

            $clean = ($value -replace "\r", "").Trim()
            if ($clean -ne "") {
                $rowMap[$column] = $clean
            }
        }

        if (-not $rowMap.ContainsKey("A")) {
            continue
        }

        $barcode = $rowMap["A"]
        if ([string]::IsNullOrWhiteSpace($barcode)) {
            continue
        }

        $imageUrl = $null
        if ($imageByRow.ContainsKey($rowIndex)) {
            $mediaEntryPath = $imageByRow[$rowIndex]
            $extension = [System.IO.Path]::GetExtension($mediaEntryPath)
            if ([string]::IsNullOrWhiteSpace($extension)) {
                $extension = ".png"
            }
            $extensionLower = $extension.ToLowerInvariant()

            if ($webImageExtensions -contains $extensionLower) {
                $fileName = "{0}-r{1}{2}" -f (To-SafeFileToken $barcode), $rowIndex, $extensionLower
                $destinationPath = Join-Path $imagesDirPath $fileName

                if (Copy-ZipEntryToFile -Zip $zip -EntryPath $mediaEntryPath -DestinationPath $destinationPath) {
                    $imageUrl = "$imagePrefix/$fileName"
                    $writtenImageCount++
                }
            }
        }

        $characteristics = [ordered]@{}
        if ($rowMap.ContainsKey("D")) { $characteristics["dimensions"] = $rowMap["D"] }
        if ($rowMap.ContainsKey("E")) { $characteristics["features"] = $rowMap["E"] }
        if ($rowMap.ContainsKey("F")) { $characteristics["bulb"] = $rowMap["F"] }
        if ($rowMap.ContainsKey("G")) { $characteristics["stock"] = $rowMap["G"] }

        $unitPriceRaw = $null
        if ($rowMap.ContainsKey("H")) {
            $unitPriceRaw = $rowMap["H"]
        }

        $listPriceRaw = $null
        if ($rowMap.ContainsKey("I")) {
            $listPriceRaw = $rowMap["I"]
        }

        $product = [pscustomobject][ordered]@{
            barcode = $barcode
            name = if ($rowMap.ContainsKey("C")) { $rowMap["C"] } else { $null }
            image_url = $imageUrl
            unit_price = Parse-Decimal $unitPriceRaw
            currency = "TRY"
            unit = "adet"
            characteristics = [pscustomobject]$characteristics
            list_price = Parse-Decimal $listPriceRaw
            source_row = $rowIndex
        }

        $fullProducts.Add($product)
    }

    $apiProducts = [System.Collections.Generic.List[object]]::new()
    $duplicates = [System.Collections.Generic.List[object]]::new()
    $indexByBarcode = @{}

    foreach ($product in $fullProducts) {
        $barcodeKey = Normalize-Barcode $product.barcode
        if ([string]::IsNullOrWhiteSpace($barcodeKey)) {
            continue
        }

        if (-not $indexByBarcode.ContainsKey($barcodeKey)) {
            $indexByBarcode[$barcodeKey] = $apiProducts.Count
            $apiProducts.Add($product)
            continue
        }

        $keptIndex = $indexByBarcode[$barcodeKey]
        $kept = $apiProducts[$keptIndex]
        $duplicates.Add([pscustomobject][ordered]@{
            barcode = $product.barcode
            kept_source_row = $kept.source_row
            dropped_source_row = $product.source_row
            kept_dimensions = Get-CharacteristicValue -CharacteristicObject $kept.characteristics -PropertyName "dimensions"
            dropped_dimensions = Get-CharacteristicValue -CharacteristicObject $product.characteristics -PropertyName "dimensions"
        })

        $shouldReplace = [string]::IsNullOrWhiteSpace($kept.image_url) -and -not [string]::IsNullOrWhiteSpace($product.image_url)
        if (-not $shouldReplace) {
            $shouldReplace = ($null -eq $kept.unit_price) -and ($null -ne $product.unit_price)
        }

        if ($shouldReplace) {
            $apiProducts[$keptIndex] = $product
        }
    }

    Write-JsonFile -Payload $fullProducts -FilePath $fullOutputFile
    Write-JsonFile -Payload $apiProducts -FilePath $apiOutputFile
    Write-JsonFile -Payload $duplicates -FilePath $dupesOutputFile

    Write-Host ("Rows exported: {0}" -f $fullProducts.Count)
    Write-Host ("Unique barcodes: {0}" -f $apiProducts.Count)
    Write-Host ("Duplicate barcode rows: {0}" -f $duplicates.Count)
    Write-Host ("Images written: {0}" -f $writtenImageCount)
    Write-Host ("API data file: {0}" -f $apiOutputFile)
}
finally {
    $zip.Dispose()
}
