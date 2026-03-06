<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán QR Code</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .payment-container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            max-width: 500px;
            width: 100%;
        }

        .payment-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 30px 20px;
            text-align: center;
        }

        .payment-header h2 {
            margin: 0;
            font-weight: 700;
            font-size: 24px;
        }

        .payment-body {
            padding: 30px 20px;
            text-align: center;
        }

        .qr-code-section {
            margin: 20px 0;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 15px;
            border: 2px dashed #667eea;
        }

        .qr-code-image {
            max-width: 100%;
            width: 100%;
            height: auto;
            border-radius: 10px;
            background: white;
            padding: 10px;
        }

        .order-info {
            background: #f0f4ff;
            padding: 15px;
            border-radius: 10px;
            margin: 15px 0;
            text-align: left;
        }

        .order-info-item {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            border-bottom: 1px solid #e0e0e0;
        }

        .order-info-item:last-child {
            border-bottom: none;
        }

        .order-info-label {
            font-weight: 600;
            color: #333;
        }

        .order-info-value {
            color: #667eea;
            font-weight: 700;
        }

        .countdown-section {
            background: #fff3cd;
            padding: 15px;
            border-radius: 10px;
            margin: 20px 0;
        }

        .countdown-timer {
            font-size: 48px;
            font-weight: 700;
            color: #dc3545;
            font-family: 'Courier New', monospace;
            margin: 10px 0;
        }

        .countdown-label {
            color: #856404;
            font-weight: 600;
        }

        .instruction-section {
            background: #e7f3ff;
            padding: 15px;
            border-radius: 10px;
            margin: 20px 0;
            text-align: left;
            border-left: 4px solid #667eea;
        }

        .instruction-section h5 {
            color: #0066cc;
            margin-bottom: 10px;
            font-weight: 700;
        }

        .instruction-section ol {
            margin: 0;
            padding-left: 20px;
        }

        .instruction-section li {
            margin: 8px 0;
            color: #333;
        }

        .button-group {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .btn-verify {
            flex: 1;
            padding: 12px;
            font-weight: 600;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            color: white;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .btn-verify:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
        }

        .btn-cancel {
            flex: 1;
            padding: 12px;
            font-weight: 600;
            background: #f0f0f0;
            border: 1px solid #ddd;
            color: #333;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .btn-cancel:hover {
            background: #e0e0e0;
        }

        .status-message {
            padding: 12px 15px;
            border-radius: 8px;
            margin: 15px 0;
            display: none;
        }

        .status-message.success {
            background: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
            display: block;
        }

        .status-message.error {
            background: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
            display: block;
        }

        .status-message.waiting {
            background: #d1ecf1;
            color: #0c5460;
            border: 1px solid #bee5eb;
            display: block;
        }

        .bank-info {
            background: #fff5e1;
            padding: 15px;
            border-radius: 10px;
            margin: 15px 0;
            border-left: 4px solid #ff9800;
        }

        .bank-info-item {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            color: #333;
        }

        .bank-info-item strong {
            color: #ff9800;
        }

        @media (max-width: 480px) {
            .payment-container {
                border-radius: 0;
            }

            .countdown-timer {
                font-size: 36px;
            }

            .button-group {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="payment-container">
        <!-- Header -->
        <div class="payment-header">
            <h2><i class="fas fa-qrcode me-2"></i>Thanh Toán QR Code</h2>
        </div>

        <!-- Body -->
        <div class="payment-body">
            <!-- Order Info -->
            <div class="order-info">
                <div class="order-info-item">
                    <span class="order-info-label">Mã đơn hàng:</span>
                    <span class="order-info-value">${order.orderCode}</span>
                </div>
                <div class="order-info-item">
                    <span class="order-info-label">Số tiền:</span>
                    <span class="order-info-value"><fmt:formatNumber value="${order.total}" type="currency" currencySymbol="₫" maxFractionDigits="0"/></span>
                </div>
                <div class="order-info-item">
                    <span class="order-info-label">Trạng thái:</span>
                    <span class="order-info-value" id="paymentStatus">Chờ thanh toán</span>
                </div>
            </div>

            <!-- Countdown Timer -->
            <div class="countdown-section">
                <div class="countdown-label">Thời gian còn lại:</div>
                <div class="countdown-timer" id="countdownTimer">05:00</div>
                <small class="text-muted">Vui lòng bắt đầu thanh toán trong thời gian này</small>
            </div>

            <!-- QR Code -->
            <div class="qr-code-section">
                <p style="margin-bottom: 10px; font-weight: 600;">Quét mã QR bên dưới để thanh toán</p>
                <img src="${pageContext.request.contextPath}/assests/images/qrbank.jpg" alt="QR Code" class="qr-code-image" style="display: block;">
            </div>

            <!-- Bank Info -->
            <div class="bank-info">
                <p style="margin: 0 0 10px 0; font-weight: 700; color: #333;">Thông tin tài khoản</p>
                <div class="bank-info-item">
                    <strong>Ngân hàng:</strong>
                    <span>OCB Bank</span>
                </div>
                <div class="bank-info-item">
                    <strong>Tên chủ:</strong>
                    <span>Ngo Thi Trang</span>
                </div>
                <div class="bank-info-item">
                    <strong>STK:</strong>
                    <span>0961167556</span>
                </div>
                <div class="bank-info-item">
                    <strong>Số tiền:</strong>
                    <span><fmt:formatNumber value="${order.total}" type="currency" currencySymbol="₫" maxFractionDigits="0"/></span>
                </div>
                <div class="bank-info-item">
                    <strong>Nội dung:</strong>
                    <span>DH ${order.orderCode}</span>
                </div>
            </div>

            <!-- Instructions -->
            <div class="instruction-section">
                <h5><i class="fas fa-info-circle me-2"></i>Hướng dẫn thanh toán</h5>
                <ol>
                    <li>Quét mã QR bằng ứng dụng ngân hàng hoặc Mobile Banking</li>
                    <li>Kiểm tra thông tin thanh toán</li>
                    <li>Nhập mật khẩu OTP để hoàn tất giao dịch</li>
                    <li>Hệ thống sẽ tự động xác nhận thanh toán</li>
                </ol>
            </div>

            <!-- Status Message -->
            <div id="statusMessage" class="status-message"></div>

            <!-- Action Buttons -->
            <div class="button-group">
                <button class="btn-verify" id="verifyPaymentBtn" onclick="verifyPayment()">
                    <i class="fas fa-check me-2"></i>Xác Nhận Thanh Toán
                </button>
                <button class="btn-cancel" onclick="cancelPayment()">
                    <i class="fas fa-times me-2"></i>Hủy Bỏ
                </button>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Thời gian countdown (5 phút = 300 giây)
        let countdownSeconds = 300;
        let paymentCheckInterval = null;
        let countdownInterval = null;
        const orderId = ${order.id};

        window.addEventListener('DOMContentLoaded', function() {
            startCountdown();
            startPaymentCheck();
        });

        /**
         * Load QR code image
         */
        function loadQRCode() {
            const qrImage = document.getElementById('qrCodeImage');
            const qrLoading = document.getElementById('qrLoading');
            
            // Tạo QR code từ VietQR API
            const qrUrl = 'https://vietqr.io/api/generate?accountNo=0364113874&accountName=VU%20TIEN%20DAT&acqId=970422&amount=${order.total}&addInfo=DH%20${order.orderCode}&template=compact';
            
            qrImage.src = qrUrl;
            qrImage.onload = function() {
                qrLoading.style.display = 'none';
                qrImage.style.display = 'block';
            };
            qrImage.onerror = function() {
                qrLoading.innerHTML = '<p class="text-danger"><i class="fas fa-exclamation-circle me-2"></i>Không thể tải QR code</p>';
            };
        }

        /**
         * Bắt đầu đếm ngược thời gian
         */
        function startCountdown() {
            countdownInterval = setInterval(function() {
                countdownSeconds--;
                
                const minutes = Math.floor(countdownSeconds / 60);
                const seconds = countdownSeconds % 60;
                
                const timerDisplay = String(minutes).padStart(2, '0') + ':' + String(seconds).padStart(2, '0');
                document.getElementById('countdownTimer').textContent = timerDisplay;
                
                if (countdownSeconds <= 60) {
                    document.getElementById('countdownTimer').style.color = '#dc3545';
                }
                
                if (countdownSeconds <= 0) {
                    clearInterval(countdownInterval);
                    timeoutPayment();
                }
            }, 1000);
        }

        /**
         * Bắt đầu check thanh toán (polling)
         */
        function startPaymentCheck() {
            paymentCheckInterval = setInterval(function() {
                checkPaymentStatus();
            }, 5000); // Check mỗi 5 giây
        }

        /**
         * Check trạng thái thanh toán
         */
        function checkPaymentStatus() {
            fetch('paymentcheck?order_id=' + orderId, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                }
            })
            .then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    paymentSuccess();
                } else if (data.status === 'failed') {
                    paymentFailed();
                }
            })
            .catch(error => console.error('Error checking payment:', error));
        }

        /**
         * Xác nhận thanh toán thủ công
         */
        function verifyPayment() {
            const btn = document.getElementById('verifyPaymentBtn');
            btn.disabled = true;
            btn.innerHTML = '<span class="spinner-border spinner-border-sm me-2"></span>Đang xác nhận...';
            
            fetch('paymentcheck?order_id=' + orderId + '&manual_verify=true', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                }
            })
            .then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    paymentSuccess();
                } else {
                    showMessage('Thanh toán chưa được xác nhận. Vui lòng kiểm tra lại.', 'error');
                    btn.disabled = false;
                    btn.innerHTML = '<i class="fas fa-check me-2"></i>Xác Nhận Thanh Toán';
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showMessage('Có lỗi xảy ra. Vui lòng thử lại.', 'error');
                btn.disabled = false;
                btn.innerHTML = '<i class="fas fa-check me-2"></i>Xác Nhận Thanh Toán';
            });
        }

        /**
         * Thanh toán thành công
         */
        function paymentSuccess() {
            clearInterval(paymentCheckInterval);
            clearInterval(countdownInterval);
            
            showMessage('<i class="fas fa-check-circle me-2"></i>Thanh toán thành công! Đang chuyển hướng...', 'success');
            
            document.getElementById('paymentStatus').textContent = '✓ Đã thanh toán';
            document.getElementById('paymentStatus').style.color = '#28a745';
            
            setTimeout(function() {
                window.location.href = 'cartcompletion?order_id=' + orderId;
            }, 2000);
        }

        /**
         * Thanh toán thất bại
         */
        function paymentFailed() {
            clearInterval(paymentCheckInterval);
            clearInterval(countdownInterval);
            
            showMessage('<i class="fas fa-times-circle me-2"></i>Thanh toán thất bại!', 'error');
            document.getElementById('paymentStatus').textContent = '✗ Thất bại';
        }

        /**
         * Hết thời gian thanh toán
         */
        function timeoutPayment() {
            clearInterval(paymentCheckInterval);
            
            showMessage('<i class="fas fa-clock me-2"></i>Hết thời gian thanh toán (5 phút). Vui lòng tạo đơn hàng mới.', 'error');
            document.getElementById('paymentStatus').textContent = '✗ Hết hạn';
            
            document.getElementById('verifyPaymentBtn').disabled = true;
            
            setTimeout(function() {
                window.location.href = 'cartdetail';
            }, 3000);
        }

        /**
         * Hủy thanh toán
         */
        function cancelPayment() {
            if (confirm('Bạn có chắc muốn hủy thanh toán?')) {
                clearInterval(paymentCheckInterval);
                clearInterval(countdownInterval);
                window.location.href = 'cartdetail';
            }
        }

        /**
         * Hiển thị message
         */
        function showMessage(message, type) {
            const messageEl = document.getElementById('statusMessage');
            messageEl.innerHTML = message;
            messageEl.className = 'status-message ' + type;
        }
    </script>
</body>
</html>
