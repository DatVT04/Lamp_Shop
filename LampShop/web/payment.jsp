<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chọn phương thức thanh toán</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .payment-wrapper {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .payment-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 20px;
            text-align: center;
        }

        .payment-header h2 {
            margin: 0;
            font-weight: 700;
            font-size: 24px;
        }

        .payment-main {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 20px;
        }

        .payment-container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            max-width: 600px;
            width: 100%;
        }

        .payment-body {
            padding: 40px 20px;
        }

        .order-summary {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
            border-left: 4px solid #667eea;
        }

        .order-summary-item {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            color: #333;
        }

        .order-summary-item strong {
            color: #667eea;
        }

        .payment-methods {
            display: grid;
            gap: 15px;
            margin: 30px 0;
        }

        .payment-method-card {
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            padding: 20px;
            cursor: pointer;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .payment-method-card:hover {
            border-color: #667eea;
            background: #f8f9ff;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.2);
        }

        .payment-method-card input[type="radio"] {
            width: 20px;
            height: 20px;
            cursor: pointer;
            accent-color: #667eea;
        }

        .payment-method-card.selected {
            border-color: #667eea;
            background: #f0f4ff;
        }

        .payment-method-icon {
            font-size: 32px;
            width: 50px;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 10px;
        }

        .payment-method-qr .payment-method-icon {
            background: #ffeaa7;
            color: #fdcb6e;
        }

        .payment-method-vnpay .payment-method-icon {
            background: #74b9ff;
            color: #0984e3;
        }

        .payment-method-info h5 {
            margin: 0 0 5px 0;
            font-weight: 700;
            color: #333;
            font-size: 16px;
        }

        .payment-method-info p {
            margin: 0;
            font-size: 13px;
            color: #666;
            line-height: 1.4;
        }

        .payment-method-info .badge {
            margin-top: 5px;
            display: inline-block;
            font-size: 11px;
        }

        .button-group {
            display: flex;
            gap: 10px;
            margin-top: 30px;
        }

        .btn-payment {
            flex: 1;
            padding: 14px;
            font-weight: 600;
            font-size: 16px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            color: white;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .btn-payment:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
        }

        .btn-payment:disabled {
            opacity: 0.5;
            cursor: not-allowed;
            transform: none;
        }

        .btn-cancel {
            flex: 1;
            padding: 14px;
            font-weight: 600;
            font-size: 16px;
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

        .alert {
            margin-bottom: 20px;
            border-radius: 8px;
        }

        @media (max-width: 480px) {
            .payment-container {
                border-radius: 0;
            }

            .payment-header {
                padding: 15px;
            }

            .payment-header h2 {
                font-size: 20px;
            }

            .payment-main {
                padding: 20px 10px;
            }

            .payment-body {
                padding: 20px 15px;
            }

            .payment-methods {
                gap: 10px;
            }

            .payment-method-card {
                padding: 15px;
            }

            .button-group {
                flex-direction: column;
            }
        }
        </style>
</head>
<body>
    <div class="payment-wrapper">
        <!-- Header -->
        <div class="payment-header">
            <h2><i class="fas fa-credit-card me-2"></i>Chọn Phương Thức Thanh Toán</h2>
        </div>

        <!-- Main Content -->
        <div class="payment-main">
            <div class="payment-container">
                <div class="payment-body">
                    <!-- Error Message -->
                    <c:if test="${not empty errorMessage}">
                        <div class="alert alert-danger" role="alert">
                            <i class="fas fa-exclamation-circle me-2"></i>${errorMessage}
                        </div>
                    </c:if>

                    <!-- Order Summary -->
                    <div class="order-summary">
                        <div class="order-summary-item">
                            <span>Mã đơn hàng:</span>
                            <strong>${order.orderCode}</strong>
                        </div>
                        <div class="order-summary-item">
                            <span>Số tiền thanh toán:</span>
                            <strong><fmt:formatNumber value="${order.total}" type="currency" currencySymbol="₫" maxFractionDigits="0"/></strong>
                        </div>
                    </div>

                    <!-- Payment Methods -->
                    <form id="paymentForm" method="POST" action="">
                        <div class="payment-methods">
                            <!-- QR Code Payment -->
                            <label class="payment-method-card payment-method-qr" id="qrOption">
                                <input type="radio" name="payment_method" value="qr_code" onchange="selectPaymentMethod('qr_code')">
                                <div class="payment-method-icon">
                                    <i class="fas fa-qrcode"></i>
                                </div>
                                <div class="payment-method-info">
                                    <h5>QR Code Chuyển Khoản</h5>
                                    <p>Quét mã QR để chuyển khoản qua MB Bank</p>
                                    <span class="badge bg-warning text-dark">
                                        <i class="fas fa-clock me-1"></i>5 phút
                                    </span>
                                </div>
                            </label>

                            <!-- VNPay Payment -->
                            <label class="payment-method-card payment-method-vnpay" id="vnpayOption">
                                <input type="radio" name="payment_method" value="vnpay" onchange="selectPaymentMethod('vnpay')">
                                <div class="payment-method-icon">
                                    <i class="fas fa-university"></i>
                                </div>
                                <div class="payment-method-info">
                                    <h5>VNPay (Test)</h5>
                                    <p>Thanh toán qua cổng VNPay (môi trường test)</p>
                                    <span class="badge bg-info">
                                        <i class="fas fa-flask me-1"></i>Test
                                    </span>
                                </div>
                            </label>
                        </div>

                        <!-- Buttons -->
                        <div class="button-group">
                            <button type="submit" class="btn-payment" id="paymentBtn" disabled>
                                <i class="fas fa-arrow-right me-2"></i>Tiếp Tục
                            </button>
                            <button type="button" class="btn-cancel" onclick="backToCart()">
                                <i class="fas fa-arrow-left me-2"></i>Quay Lại
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        let selectedMethod = null;

        function selectPaymentMethod(method) {
            selectedMethod = method;
            
            // Update UI
            document.getElementById('qrOption').classList.toggle('selected', method === 'qr_code');
            document.getElementById('vnpayOption').classList.toggle('selected', method === 'vnpay');
            
            // Enable button
            document.getElementById('paymentBtn').disabled = false;
        }

        document.getElementById('paymentForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            if (!selectedMethod) {
                alert('Vui lòng chọn phương thức thanh toán');
                return;
            }
            
            if (selectedMethod === 'qr_code') {
                // Redirect to QR payment page
                window.location.href = 'qrpayment';
            } else if (selectedMethod === 'vnpay') {
                // Submit form để xử lý VNPay
                this.submit();
            }
        });

        function backToCart() {
            if (confirm('Bạn có chắc muốn quay lại?')) {
                window.location.href = 'cartdetail';
            }
        }
    </script>
</body>
</html>