const CACHE_NAME = "pandora-scan-v9";
const STATIC_ASSETS = [
    "./",
    "./index.html",
    "./styles.css?v=8",
    "./app.js?v=8",
    "./config.js",
    "./manifest.webmanifest",
    "./icons/icon.svg"
];
const CACHEABLE_DESTINATIONS = new Set([
    "document",
    "style",
    "script",
    "image",
    "font",
    "manifest"
]);

self.addEventListener("install", (event) => {
    event.waitUntil(
        caches.open(CACHE_NAME).then((cache) => cache.addAll(STATIC_ASSETS))
    );
    self.skipWaiting();
});

self.addEventListener("activate", (event) => {
    event.waitUntil(
        caches.keys().then((keys) =>
            Promise.all(
                keys
                    .filter((key) => key !== CACHE_NAME)
                    .map((oldKey) => caches.delete(oldKey))
            )
        )
    );
    self.clients.claim();
});

self.addEventListener("fetch", (event) => {
    if (event.request.method !== "GET") {
        return;
    }

    const url = new URL(event.request.url);

    if (url.pathname.startsWith("/api/")) {
        event.respondWith(fetch(event.request));
        return;
    }

    if (url.origin !== self.location.origin) {
        return;
    }

    if (!CACHEABLE_DESTINATIONS.has(event.request.destination)) {
        event.respondWith(fetch(event.request));
        return;
    }

    event.respondWith((async () => {
        const cached = await caches.match(event.request);
        if (cached) {
            return cached;
        }

        const response = await fetch(event.request);
        if (response.ok && response.status === 200 && response.type === "basic") {
            const cache = await caches.open(CACHE_NAME);
            await cache.put(event.request, response.clone());
        }

        return response;
    })());
});
