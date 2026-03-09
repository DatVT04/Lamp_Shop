<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title>Ướm thử AR - Lamp Shop</title>
        <style>
            body, html {
                margin: 0; padding: 0;
                width: 100%; height: 100%;
                overflow: hidden;
                background-color: #000;
                font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
            }

            #camera-container {
                position: relative;
                width: 100%; height: 100%;
            }

            #camera-feed {
                position: absolute;
                top: 0; left: 0;
                width: 100%; height: 100%;
                object-fit: cover;
                z-index: 1;
            }

            #overlay-container {
                position: absolute;
                top: 0; left: 0;
                width: 100%; height: 100%;
                z-index: 10;
                touch-action: none;
                overflow: hidden;
            }

            /* Canvas overlay — drop-shadow follows actual lamp shape */
            #product-canvas {
                position: absolute;
                left: 50%; top: 40%;
                transform: translate(-50%, -50%);
                pointer-events: none;
                width: 220px;
                height: auto;
                filter:
                    drop-shadow(0 18px 14px rgba(0, 0, 0, 0.45))
                    drop-shadow(0 6px 5px rgba(0, 0, 0, 0.25));
                opacity: 0;
                transition: opacity 0.4s ease;
            }

            /* UI layer */
            .ui-layer {
                position: absolute;
                top: 0; left: 0;
                width: 100%; height: 100%;
                z-index: 20;
                pointer-events: none;
            }

            .header-bar {
                position: absolute;
                top: 0; left: 0; width: 100%; height: 60px;
                background: linear-gradient(180deg, rgba(0,0,0,0.6) 0%, rgba(0,0,0,0) 100%);
                display: flex;
                align-items: center;
                padding: 0 15px;
                pointer-events: auto;
            }

            .back-btn {
                color: white;
                background: rgba(255,255,255,0.2);
                border: none;
                padding: 8px 15px;
                border-radius: 20px;
                font-size: 14px;
                cursor: pointer;
                backdrop-filter: blur(5px);
                text-decoration: none;
                display: flex;
                align-items: center;
            }
            .back-btn::before { content: "←"; margin-right: 5px; font-size: 18px; }

            .controls {
                position: absolute;
                bottom: 30px; left: 0; width: 100%;
                display: flex;
                justify-content: center;
                gap: 12px;
                pointer-events: auto;
            }

            .control-btn {
                background: rgba(255,255,255,0.88);
                color: #333;
                border: none;
                padding: 10px 20px;
                border-radius: 30px;
                font-weight: 600;
                box-shadow: 0 4px 12px rgba(0,0,0,0.25);
                font-size: 14px;
                cursor: pointer;
            }

            /* Loading overlay */
            #ar-loading {
                position: absolute;
                top: 50%; left: 50%;
                transform: translate(-50%, -50%);
                background: rgba(0,0,0,0.68);
                color: #fff;
                padding: 18px 28px;
                border-radius: 14px;
                font-size: 14px;
                text-align: center;
                z-index: 30;
                min-width: 200px;
                line-height: 1.7;
            }
            #ar-loading::after {
                content: '';
                display: block;
                margin: 10px auto 0;
                width: 24px; height: 24px;
                border: 3px solid rgba(255,255,255,0.25);
                border-top-color: #fff;
                border-radius: 50%;
                animation: spin 0.7s linear infinite;
            }
            @keyframes spin { to { transform: rotate(360deg); } }

            .instruction {
                position: absolute;
                top: 50%; left: 50%;
                transform: translate(-50%, -50%);
                background: rgba(0,0,0,0.6);
                color: white;
                padding: 14px 22px;
                border-radius: 10px;
                text-align: center;
                pointer-events: none;
                opacity: 0;
                transition: opacity 0.5s;
                z-index: 25;
                font-size: 14px;
                line-height: 1.6;
            }

            #error-message {
                position: absolute;
                top: 50%; left: 50%;
                transform: translate(-50%, -50%);
                background: rgba(0,0,0,0.85);
                color: #ff6b6b;
                padding: 22px;
                border-radius: 12px;
                text-align: center;
                display: none;
                z-index: 50;
                width: 80%;
            }
        </style>
    </head>
    <body>
        <div id="camera-container">
            <video id="camera-feed" autoplay playsinline></video>

            <!-- Product overlay (canvas with drop-shadow) -->
            <div id="overlay-container">
                <canvas id="product-canvas"></canvas>
            </div>

            <!-- Loading indicator -->
            <div id="ar-loading">Đang xử lý ảnh...</div>

            <!-- UI Layer -->
            <div class="ui-layer">
                <div class="header-bar">
                    <a href="javascript:history.back()" class="back-btn">Quay lại</a>
                </div>

                <div class="instruction" id="instruction-toast">
                    Chạm 1 ngón để di chuyển<br>Chạm 2 ngón để phóng to/nhỏ
                </div>

                <div id="error-message">
                    <h3>Không thể truy cập Camera</h3>
                    <p>Vui lòng cấp quyền Camera hoặc thử trên Chrome/Safari (HTTPS).</p>
                    <button onclick="window.history.back()" style="margin-top:10px;padding:6px 18px;">Quay lại</button>
                </div>

                <div class="controls">
                    <button class="control-btn" onclick="resetTransform()">↺ Reset</button>
                </div>
            </div>
        </div>

        <script>
            // ── Image URL ──────────────────────────────────────────────────
            const urlParams = new URLSearchParams(window.location.search);
            const rawImageUrl = urlParams.get('image');
            const canvas = document.getElementById('product-canvas');
            const loadingEl = document.getElementById('ar-loading');

            function getProxiedUrl(url) {
                if (!url) return url;
                const origin = window.location.origin;
                if (url.startsWith(origin) || url.startsWith('/')) return url;
                return origin + '/lampshop/imageProxy?url=' + encodeURIComponent(url);
            }

            // ── Camera ─────────────────────────────────────────────────────
            async function startCamera() {
                try {
                    const stream = await navigator.mediaDevices.getUserMedia({
                        video: { facingMode: 'environment', width: { ideal: 1280 }, height: { ideal: 720 } },
                        audio: false
                    });
                    const video = document.getElementById('camera-feed');
                    video.srcObject = stream;
                    setTimeout(() => {
                        const toast = document.getElementById('instruction-toast');
                        toast.style.opacity = '1';
                        setTimeout(() => { toast.style.opacity = '0'; }, 4000);
                    }, 1200);
                } catch (err) {
                    console.error('Camera error:', err);
                    document.getElementById('error-message').style.display = 'block';
                }
            }
            startCamera();

            // ── BFS Background Removal ──────────────────────────────────────
            function removeBg(imageUrl) {
                return new Promise((resolve, reject) => {
                    const img = new Image();
                    img.crossOrigin = 'anonymous';
                    img.onload = function () {
                        const MAX = 1000;
                        let w = img.naturalWidth, h = img.naturalHeight;
                        if (w > MAX || h > MAX) {
                            const r = Math.min(MAX / w, MAX / h);
                            w = Math.round(w * r); h = Math.round(h * r);
                        }

                        const offscreen = document.createElement('canvas');
                        offscreen.width = w; offscreen.height = h;
                        const ctx = offscreen.getContext('2d');
                        ctx.drawImage(img, 0, 0, w, h);

                        let imageData;
                        try { imageData = ctx.getImageData(0, 0, w, h); }
                        catch (e) { return reject('cors'); }

                        const d = imageData.data;

                        // Sample background from 4 corners
                        function px(i) { return [d[i*4], d[i*4+1], d[i*4+2]]; }
                        const corners = [px(0), px(w-1), px((h-1)*w), px((h-1)*w+w-1)];
                        const bgR = Math.round(corners.reduce((s,c) => s+c[0], 0) / 4);
                        const bgG = Math.round(corners.reduce((s,c) => s+c[1], 0) / 4);
                        const bgB = Math.round(corners.reduce((s,c) => s+c[2], 0) / 4);
                        const T = 38;

                        function match(i) {
                            return Math.abs(d[i*4]-bgR) <= T
                                && Math.abs(d[i*4+1]-bgG) <= T
                                && Math.abs(d[i*4+2]-bgB) <= T;
                        }

                        // BFS flood-fill from 4 corners
                        const visited = new Uint8Array(w * h);
                        const q = [];
                        [0, w-1, (h-1)*w, (h-1)*w+w-1].forEach(i => {
                            if (match(i)) { visited[i] = 1; q.push(i); }
                        });

                        let head = 0;
                        while (head < q.length) {
                            const i = q[head++];
                            d[i*4+3] = 0;
                            const x = i % w, y = (i / w) | 0;
                            if (x > 0   && !visited[i-1] && match(i-1)) { visited[i-1]=1; q.push(i-1); }
                            if (x < w-1 && !visited[i+1] && match(i+1)) { visited[i+1]=1; q.push(i+1); }
                            if (y > 0   && !visited[i-w] && match(i-w)) { visited[i-w]=1; q.push(i-w); }
                            if (y < h-1 && !visited[i+w] && match(i+w)) { visited[i+w]=1; q.push(i+w); }
                        }

                        // Soft feathered edges
                        for (let i = 0; i < w * h; i++) {
                            if (visited[i]) continue;
                            const x = i % w, y = (i / w) | 0;
                            let n = 0;
                            if (x > 0   && visited[i-1]) n++;
                            if (x < w-1 && visited[i+1]) n++;
                            if (y > 0   && visited[i-w]) n++;
                            if (y < h-1 && visited[i+w]) n++;
                            if (n > 0) d[i*4+3] = Math.round(d[i*4+3] * (1 - n * 0.28));
                        }

                        ctx.putImageData(imageData, 0, 0);
                        resolve({ canvas: offscreen, w, h });
                    };
                    img.onerror = reject;
                    img.src = imageUrl;
                });
            }

            // ── Draw lamp onto product-canvas ──────────────────────────────
            function drawLamp(src) {
                removeBg(src)
                    .then(({ canvas: src_canvas, w, h }) => {
                        canvas.width = w;
                        canvas.height = h;
                        const ctx = canvas.getContext('2d');
                        ctx.drawImage(src_canvas, 0, 0);
                        canvas.style.width = '220px';
                        canvas.style.height = 'auto';
                        canvas.style.opacity = '1';
                        loadingEl.style.display = 'none';
                    })
                    .catch(() => {
                        // Fallback: show original image directly on canvas
                        const img = new Image();
                        img.onload = function () {
                            canvas.width = img.naturalWidth;
                            canvas.height = img.naturalHeight;
                            canvas.getContext('2d').drawImage(img, 0, 0);
                            canvas.style.width = '220px';
                            canvas.style.height = 'auto';
                            canvas.style.opacity = '0.92';
                            canvas.style.mixBlendMode = 'multiply';
                            loadingEl.style.display = 'none';
                        };
                        img.src = rawImageUrl;
                    });
            }

            if (rawImageUrl) {
                drawLamp(getProxiedUrl(rawImageUrl));
            } else {
                alert('Không tìm thấy hình ảnh sản phẩm!');
            }

            // ── Transform state ────────────────────────────────────────────
            let state = { x: 0, y: 0, scale: 1, lastX: 0, lastY: 0, pinchDist: null, pinchScale: 1 };

            function updateTransform() {
                canvas.style.transform =
                    'translate(calc(-50% + ' + state.x + 'px), calc(-50% + ' + state.y + 'px)) scale(' + state.scale + ')';
            }

            function resetTransform() {
                state.x = 0; state.y = 0; state.scale = 1;
                updateTransform();
            }

            function dist(t) {
                const dx = t[0].clientX - t[1].clientX;
                const dy = t[0].clientY - t[1].clientY;
                return Math.sqrt(dx*dx + dy*dy);
            }

            const overlay = document.getElementById('overlay-container');

            overlay.addEventListener('touchstart', e => {
                if (e.touches.length === 1) {
                    state.lastX = e.touches[0].clientX;
                    state.lastY = e.touches[0].clientY;
                } else if (e.touches.length === 2) {
                    state.pinchDist = dist(e.touches);
                    state.pinchScale = state.scale;
                }
            });

            overlay.addEventListener('touchmove', e => {
                e.preventDefault();
                if (e.touches.length === 1) {
                    state.x += e.touches[0].clientX - state.lastX;
                    state.y += e.touches[0].clientY - state.lastY;
                    state.lastX = e.touches[0].clientX;
                    state.lastY = e.touches[0].clientY;
                    updateTransform();
                } else if (e.touches.length === 2 && state.pinchDist) {
                    const factor = dist(e.touches) / state.pinchDist;
                    state.scale = Math.min(Math.max(0.2, state.pinchScale * factor), 5);
                    updateTransform();
                }
            }, { passive: false });

            let isDragging = false;
            overlay.addEventListener('mousedown', e => { isDragging = true; state.lastX = e.clientX; state.lastY = e.clientY; });
            window.addEventListener('mousemove', e => {
                if (!isDragging) return;
                state.x += e.clientX - state.lastX;
                state.y += e.clientY - state.lastY;
                state.lastX = e.clientX;
                state.lastY = e.clientY;
                updateTransform();
            });
            window.addEventListener('mouseup', () => { isDragging = false; });
            overlay.addEventListener('wheel', e => {
                e.preventDefault();
                state.scale *= e.deltaY > 0 ? 0.9 : 1.1;
                state.scale = Math.min(Math.max(0.2, state.scale), 5);
                updateTransform();
            });
        </script>
    </body>
</html>
