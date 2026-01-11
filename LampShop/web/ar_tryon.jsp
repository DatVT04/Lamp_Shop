<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title>Ướm thử AR - Lamp Shop</title>
        <style>
            body, html {
                margin: 0;
                padding: 0;
                width: 100%;
                height: 100%;
                overflow: hidden;
                background-color: #000;
                font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            }

            #camera-container {
                position: relative;
                width: 100%;
                height: 100%;
            }

            #camera-feed {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
                z-index: 1;
            }

            #overlay-container {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 10;
                touch-action: none; /* Prevent browser scrolling */
                overflow: hidden;
            }

            #product-image {
                position: absolute;
                /* Start centered */
                left: 50%;
                top: 50%;
                transform: translate(-50%, -50%);
                width: 200px; /* Base size */
                pointer-events: none; /* Let touches pass through to container or handle on container */
            }

            .ui-layer {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 20;
                pointer-events: none; /* Allow clicks to pass through to canvas/image logic */
            }

            .header-bar {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 60px;
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
            
            .back-btn:before {
                content: "←";
                margin-right: 5px;
                font-size: 18px;
            }

            .controls {
                position: absolute;
                bottom: 30px;
                left: 0;
                width: 100%;
                display: flex;
                justify-content: center;
                gap: 15px;
                pointer-events: auto;
            }

            .control-btn {
                background: rgba(255, 255, 255, 0.9);
                color: #333;
                border: none;
                padding: 12px 24px;
                border-radius: 30px;
                font-weight: 600;
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
                font-size: 16px;
            }
            
            .instruction {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background: rgba(0,0,0,0.6);
                color: white;
                padding: 15px 25px;
                border-radius: 10px;
                text-align: center;
                pointer-events: none;
                opacity: 0;
                transition: opacity 0.5s;
                z-index: 100;
            }
            
            #error-message {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background: rgba(0,0,0,0.8);
                color: #ff6b6b;
                padding: 20px;
                border-radius: 10px;
                text-align: center;
                display: none;
                z-index: 100;
                width: 80%;
            }

        </style>
    </head>
    <body>
        <div id="camera-container">
            <video id="camera-feed" autoplay playsinline></video>
            
            <!-- Interactable Area -->
            <div id="overlay-container">
                <img id="product-image" src="" alt="Lamp AR">
            </div>

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
                    <p>Vui lòng cấp quyền truy cập Camera hoặc thử trên trình duyệt Safari/Chrome (HTTPS).</p>
                    <button onclick="window.history.back()" style="margin-top:10px; padding:5px 15px;">Quay lại</button>
                </div>
            </div>
        </div>

        <script>
            // Get Image URL from Params
            const urlParams = new URLSearchParams(window.location.search);
            const imageUrl = urlParams.get('image');
            const imgElement = document.getElementById('product-image');
            
            if (imageUrl) {
                imgElement.src = imageUrl;
            } else {
                alert("Không tìm thấy hình ảnh sản phẩm!");
            }

            // Camera handling
            async function startCamera() {
                try {
                    const stream = await navigator.mediaDevices.getUserMedia({
                        video: {
                            facingMode: 'environment', // Rear camera preferred
                            width: { ideal: 1280 },
                            height: { ideal: 720 }
                        },
                        audio: false
                    });
                    const video = document.getElementById('camera-feed');
                    video.srcObject = stream;
                    
                    // Show instructions
                    setTimeout(() => {
                        const toast = document.getElementById('instruction-toast');
                        toast.style.opacity = '1';
                        setTimeout(() => {
                            toast.style.opacity = '0';
                        }, 4000);
                    }, 1000);

                } catch (err) {
                    console.error("Camera Error:", err);
                    document.getElementById('error-message').style.display = 'block';
                }
            }
            
            startCamera();

            // Transformations Logic
            const overlay = document.getElementById('overlay-container');
            
            let state = {
                x: 0,
                y: 0,
                scale: 1,
                lastX: 0,
                lastY: 0,
                initialPinchDistance: null,
                initialScale: 1
            };

            // Helper to get distance between two touch points
            function getDistance(touches) {
                const dx = touches[0].clientX - touches[1].clientX;
                const dy = touches[0].clientY - touches[1].clientY;
                return Math.sqrt(dx * dx + dy * dy);
            }

            function updateTransform() {
                // We apply transform to the image center anchor
                // translate(-50%, -50%) centers it, then we add our custom X/Y translation
                imgElement.style.transform = `translate(calc(-50% + ${state.x}px), calc(-50% + ${state.y}px)) scale(${state.scale})`;
            }

            overlay.addEventListener('touchstart', (e) => {
                if (e.touches.length === 1) {
                    // Drag Start
                    state.lastX = e.touches[0].clientX;
                    state.lastY = e.touches[0].clientY;
                } else if (e.touches.length === 2) {
                    // Pinch Start
                    state.initialPinchDistance = getDistance(e.touches);
                    state.initialScale = state.scale;
                }
            });

            overlay.addEventListener('touchmove', (e) => {
                e.preventDefault(); // Prevent scrolling

                if (e.touches.length === 1) {
                    // Dragging
                    const deltaX = e.touches[0].clientX - state.lastX;
                    const deltaY = e.touches[0].clientY - state.lastY;

                    state.x += deltaX;
                    state.y += deltaY;

                    state.lastX = e.touches[0].clientX;
                    state.lastY = e.touches[0].clientY;
                    
                    updateTransform();

                } else if (e.touches.length === 2) {
                    // Pinching
                    const currentDistance = getDistance(e.touches);
                    if (state.initialPinchDistance) {
                        const factor = currentDistance / state.initialPinchDistance;
                        state.scale = state.initialScale * factor;
                        
                        // Limit scale
                        state.scale = Math.min(Math.max(0.2, state.scale), 5);
                        
                        updateTransform();
                    }
                }
            });

            // Mouse support for desktop testing
            let isDragging = false;
            overlay.addEventListener('mousedown', (e) => {
                isDragging = true;
                state.lastX = e.clientX;
                state.lastY = e.clientY;
            });

            window.addEventListener('mousemove', (e) => {
                if (!isDragging) return;
                const deltaX = e.clientX - state.lastX;
                const deltaY = e.clientY - state.lastY;
                state.x += deltaX;
                state.y += deltaY;
                state.lastX = e.clientX;
                state.lastY = e.clientY;
                updateTransform();
            });

            window.addEventListener('mouseup', () => {
                isDragging = false;
            });
            
            // Wheel to zoom on desktop
            overlay.addEventListener('wheel', (e) => {
                e.preventDefault();
                const delta = e.deltaY > 0 ? 0.9 : 1.1;
                state.scale *= delta;
                state.scale = Math.min(Math.max(0.2, state.scale), 5);
                updateTransform();
            });

        </script>
    </body>
</html>
