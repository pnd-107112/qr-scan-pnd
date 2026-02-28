const { contextBridge, ipcRenderer } = require("electron");

const pathname = (globalThis.location && globalThis.location.pathname) || "";
const isAdminPage = /\/admin\.html$/i.test(pathname);

const sharedApi = {
    openAdmin: () => ipcRenderer.invoke("openAdmin"),
    focusScanner: () => ipcRenderer.invoke("focusScanner")
};

const adminApi = {
    dataLoad: () => ipcRenderer.invoke("data:load"),
    dataGetProducts: () => ipcRenderer.invoke("data:getProducts"),
    dataLoadFromFile: (mode, options) => ipcRenderer.invoke("data:loadFromFile", mode, options),
    dataGetProductByBarcode: (barcode) => ipcRenderer.invoke("data:getProductByBarcode", barcode),
    dataAddProduct: (product) => ipcRenderer.invoke("data:addProduct", product),
    dataSaveImage: (opts) => ipcRenderer.invoke("data:saveImage", opts),
    dataDeleteProduct: (barcode) => ipcRenderer.invoke("data:deleteProduct", barcode),
    dialogOpenFile: (opts) => ipcRenderer.invoke("dialog:openFile", opts),
    qrGenerateAndOpenPrint: () => ipcRenderer.invoke("qr:generateAndOpenPrint")
};

contextBridge.exposeInMainWorld("electronAPI", isAdminPage ? { ...sharedApi, ...adminApi } : sharedApi);
