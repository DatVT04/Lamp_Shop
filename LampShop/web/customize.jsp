<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đèn Tùy Chỉnh</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assests/images/favicon.png" type="image/png">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            line-height: 1.6;
        }

        /* Header Styles */
        header {
            background: #fff;
            padding: 20px 0;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        .nav-menu {
            display: flex;
            list-style: none;
            gap: 30px;
        }

        .nav-menu a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-menu a:hover {
            color: #d4a574;
        }

        /* Hero Section */
        .hero-section {
            height: 100vh;
            display: flex;
            align-items: flex-end;
            justify-content: flex-start;
            text-align: left;
            color: white;
            position: relative;
            padding: 0 80px 80px 80px;
            overflow: hidden;
        }

        /* Background slides */
        .hero-slide {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            opacity: 0;
            transition: opacity 1s ease-in-out;
            z-index: -2;
            animation: zoomIn 8s ease-out infinite alternate;
        }

        .hero-slide.active {
            opacity: 1;
        }

        .hero-slide:nth-child(1) {
            background-image: url('https://www.yankodesign.com/images/design_news/2023/05/illuminate-any-modern-space-with-some-tradition/WoodooLamp_productdesign_lamp_5.jpg');
        }

        .hero-slide:nth-child(2) {
            background-image: url('https://im.whatshot.in/img/2021/Oct/istock-1135216272-cropped-1613729212-1633069911.jpg');
        }

        /* Animation zoom in */
        @keyframes zoomIn {
            0% {
                transform: scale(1);
            }
            100% {
                transform: scale(1.1);
            }
        }

        /* Overlay tối */
        .hero-section::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.5));
            z-index: -1;
        }

        .hero-content {
            max-width: 900px;
            position: relative;
            z-index: 1;
            animation: fadeInUp 1.5s ease-out;
        }

        /* Animation cho nội dung */
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .hero-content h1 {
            font-size: 56px;
            margin-bottom: 25px;
            letter-spacing: 3px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .hero-content p {
            font-size: 16px;
            max-width: 800px;
            margin: 0 0 30px 0;
            line-height: 1.8;
            font-weight: 300;
        }

        /* Hero Dots */
        .hero-dots {
            display: flex;
            gap: 12px;
            margin-top: 25px;
        }

        .dot {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.4);
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .dot.active {
            background-color: white;
        }

        .dot:hover {
            background-color: rgba(255, 255, 255, 0.7);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero-section {
                height: 70vh;
                padding: 0 30px 40px 30px;
                align-items: center;
                justify-content: center;
                text-align: center;
            }
            
            .hero-content h1 {
                font-size: 32px;
            }
            
            .hero-content p {
                font-size: 14px;
            }
            
            .hero-dots {
                justify-content: center;
            }
        }

        .cta-button {
            display: inline-block;
            padding: 15px 40px;
            background: transparent;
            color: white;
            border: 2px solid white;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s;
            cursor: pointer;
        }

        .cta-button:hover {
            background: white;
            color: #333;
        }

        /* Room Categories Section */
        .room-categories {
            padding: 80px 0;
            background: #f9f9f9;
        }

        .section-title {
            text-align: center;
            font-size: 36px;
            margin-bottom: 20px;
            color: #333;
        }

        .section-subtitle {
            text-align: center;
            max-width: 700px;
            margin: 0 auto 60px;
            color: #666;
            font-size: 16px;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
        }

        .category-card {
            position: relative;
            overflow: hidden;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s;
            cursor: pointer;
        }

        .category-card:hover {
            transform: translateY(-10px);
        }

        .category-image {
            width: 100%;
            height: 400px;
            object-fit: cover;
        }

        .category-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(transparent, rgba(0,0,0,0.8));
            padding: 40px 20px 20px;
            color: white;
        }

        .category-title {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .category-description {
            font-size: 14px;
            line-height: 1.6;
        }

        /* Lamp Types Section */
        .lamp-types {
            padding: 80px 0;
            background: white;
        }

        .lamp-type-section {
            margin-bottom: 100px;
        }

        .lamp-type-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
        }

        .lamp-type-content.reverse {
            direction: rtl;
        }

        .lamp-type-content.reverse > * {
            direction: ltr;
        }

        .lamp-info h3 {
            font-size: 32px;
            margin-bottom: 20px;
            color: #333;
        }

        .lamp-info p {
            color: #666;
            margin-bottom: 30px;
            line-height: 1.8;
        }

        .lamp-products {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 0;
        }

        .product-item {
            text-align: center;
            padding: 20px;
            background: #f9f9f9;
            border-radius: 8px;
            transition: all 0.3s;
        }

        .product-item:hover {
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            transform: translateY(-5px);
        }

        .product-item img {
            width: 100%;
            height: 200px;
            object-fit: contain;
            margin-bottom: 15px;
        }

        /* Thanh trang trí tối giản và chuyên nghiệp */
        .elegant-divider {
            margin-top: 40px;
            position: relative;
            height: 1px;
            background: linear-gradient(90deg, 
                transparent 0%, 
                #e0e0e0 15%, 
                #c9c9c9 50%, 
                #e0e0e0 85%, 
                transparent 100%);
        }

        .elegant-divider::before {
            content: '';
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            width: 6px;
            height: 6px;
            background: #d4a574;
            border-radius: 50%;
            box-shadow: 
                -30px 0 0 #e8d4c1,
                30px 0 0 #e8d4c1,
                -60px 0 0 #f0e5d8,
                60px 0 0 #f0e5d8;
        }

        .lamp-image-large {
            width: 100%;
            height: 600px;
            object-fit: cover;
            border-radius: 8px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        /* Footer */
        footer {
            background: #2c2c2c;
            color: white;
            padding: 40px 0;
            text-align: center;
        }

        footer p {
            margin-bottom: 10px;
        }

        .social-links {
            margin-top: 20px;
        }

        .social-links a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
            font-size: 20px;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 32px;
            }

            .lamp-type-content,
            .lamp-type-content.reverse {
                grid-template-columns: 1fr;
                direction: ltr;
            }

            .lamp-products {
                grid-template-columns: 1fr;
            }

            .categories-grid {
                grid-template-columns: 1fr;
            }

            .elegant-divider::before {
                box-shadow: 
                    -20px 0 0 #e8d4c1,
                    20px 0 0 #e8d4c1;
            }
        }

        /* ===== SPEED DIAL FAB ===== */
        .ai-chat-button, .md-chatbot-toggle { display: none !important; }
        .ai-chat-widget, .md-chatbot-panel { bottom: 80px !important; right: 20px !important; }

        .speed-dial {
            position: fixed; bottom: 20px; right: 20px; z-index: 1200;
            display: flex; flex-direction: column; align-items: flex-end; gap: 10px;
        }
        .speed-dial-main {
            width: 54px; height: 54px; border-radius: 50%;
            background: #2c3e50; color: #fff;
            display: flex; align-items: center; justify-content: center;
            cursor: pointer; box-shadow: 0 6px 20px rgba(0,0,0,0.3);
            transition: transform 0.3s ease, background 0.3s ease; font-size: 20px;
        }
        .speed-dial-main:hover { background: #1a252f; }
        .speed-dial-main.open { transform: rotate(45deg); }
        .speed-dial-items {
            display: flex; flex-direction: column; align-items: flex-end; gap: 10px;
            opacity: 0; visibility: hidden; transform: translateY(10px);
            transition: all 0.25s ease;
        }
        .speed-dial-items.open { opacity: 1; visibility: visible; transform: translateY(0); }
        .speed-dial-item {
            display: flex; align-items: center; gap: 8px;
            height: 40px; padding: 0 16px; border-radius: 999px; color: #fff;
            cursor: pointer; font-size: 13px; font-weight: 600; white-space: nowrap;
            box-shadow: 0 4px 14px rgba(0,0,0,0.2); transition: transform 0.2s ease;
        }
        .speed-dial-item:hover { transform: scale(1.06); }
        #sdScrollTop { background: #8e44ad; }
        #sdSupport   { background: #27ae60; }
        #sdAIBot     { background: #34495e; }
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-slide active"></div>
        <div class="hero-slide"></div>
        <div class="hero-content">
            <h1>Đèn Thiết Kế Theo Yêu Cầu</h1>
            <p>Chúng tôi là một nhà sản xuất đèn với nhiều năm kinh nghiệm về đèn trang trí. Bạn chỉ cần cung cấp cho chúng tôi những bản phác thảo, những ký sự của chúng tôi sẽ giúp bạn biến những phác thảo đó thành những tác phẩm tuyệt vời.</p>
            <div class="hero-dots">
                <span class="dot active" data-slide="0"></span>
                <span class="dot" data-slide="1"></span>
            </div>
        </div>
    </section>

    <!-- Room Categories Section -->
    <section class="room-categories">
        <div class="container">
            <h2 class="section-title">THIẾT KẾ ĐÈN PHÒNG CỦA BẠN</h2>
            <p class="section-subtitle">
                Ánh sáng và vật liệu trong thiết kế nội thất rất quan trọng, hãy biến chúng thật thông minh để làm không gian của bạn trở nên nổi bật hơn 🌟
            </p>
            
            <div class="categories-grid">
                <div class="category-card" onclick="location.href='customize.jsp?room=bedroom'">
                    <img src="https://images.unsplash.com/photo-1616486338812-3dadae4b4ace?w=600" alt="Bed room" class="category-image">
                    <div class="category-overlay">
                        <h3 class="category-title">Phòng Ngủ</h3>
                        <p class="category-description">
                            Bề mặt gỗ có khả năng phản ánh sáng tốt, giúp làm mờ và phân tán các điểm sáng và bóng đổ trên bề mặt. Điều này có thể làm cho không gian trở nên ấm áp và thoải mái hơn.
                        </p>
                    </div>
                </div>

                <div class="category-card" onclick="location.href='customize.jsp?room=living'">
                    <img src="https://images.unsplash.com/photo-1600121848594-d8644e57abab?w=600" alt="Living room" class="category-image">
                    <div class="category-overlay">
                        <h3 class="category-title">Phòng Khách</h3>
                        <p class="category-description">
                        <p class="category-description">
                            Ngoài việc sử dụng đèn chiếu sáng nhân tạo, đèn trang trí còn mang lại vẻ đẹp tinh tế và điểm nhấn độc đáo cho không gian phòng khách của bạn.
                        </p>
                        </p>
                    </div>
                </div>

                <div class="category-card" onclick="location.href='customize.jsp?room=kitchen'">
                    <img src="https://images.unsplash.com/photo-1556912173-46c336c7fd55?w=600" alt="Kitchen room" class="category-image">
                    <div class="category-overlay">
                        <h3 class="category-title">Phòng Bếp</h3>
                        <p class="category-description">
                            Đèn trang trí ánh vàng ấm giúp không gian bếp trở nên ấm cúng và thu hút hơn, tạo cảm giác ngon miệng và thư giãn khi nấu nướng.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Lamp Types Section -->
    <section class="lamp-types">
        <div class="container">
            <!-- Table Lamps -->
            <div class="lamp-type-section">
                <div class="lamp-type-content">
                    <div class="lamp-info">
                        <p style="color: #999; font-size: 14px; margin-bottom: 5px;">Đèn Thiết Kế Theo Yêu Cầu</p>
                        <h3>ĐÈN BÀN TÙY CHỈNH</h3>
                        <p>
                            Đèn bàn là vật trang trí và chiếu sáng không thể thiếu trong không gian sống của bạn. Không chỉ phục vụ mục đích chiếu sáng, đèn bàn còn mang đến một thứ ánh sáng huyền ảo và tinh tế; với cường độ sáng vừa phải, chúng rất phù hợp để đọc sách hay làm việc. Đèn bàn cũng có thể được dùng như một vật trang trí thuần túy, đặt tại góc phòng khách để tạo hiệu ứng ánh sáng ấm áp và chào đón.
                        </p>
                        <div class="lamp-products">
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=300" alt="Table Lamp 1">
                            </div>
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?w=300" alt="Table Lamp 2">
                            </div>
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1540932239986-30128078f3c5?w=300" alt="Table Lamp 3">
                            </div>
                        </div>
                        <div class="elegant-divider"></div>
                    </div>
                    <div>
                        <img src="https://m.media-amazon.com/images/I/717UgUn9FZL.jpg" alt="Table Lamp Showcase" class="lamp-image-large">
                    </div>
                </div>
            </div>

            <!-- Floor Lamps -->
            <div class="lamp-type-section">
                <div class="lamp-type-content reverse">
                    <div class="lamp-info">
                        <p style="color: #999; font-size: 14px; margin-bottom: 5px;">Đèn Thiết Kế Theo Yêu Cầu</p>
                        <h3>ĐÈN ĐỂ SÀN TÙY CHỈNH</h3>
                        <p>
                            Đèn sàn giúp bổ sung ánh sáng cho những góc khuất trong phòng mà đèn trần không thể chiếu tới. Ngoài chức năng chiếu sáng, đèn sàn còn là vật trang trí tinh tế giúp hoàn thiện không gian nội thất và tạo ra bầu không khí ấm cúng. Chúng có thể được sử dụng để tạo điểm nhấn cho bức tường, tranh treo, hoặc đơn giản là tạo hiệu ứng ánh sáng gợn sóng nhẹ nhàng trên tường.
                        </p>
                        <div class="lamp-products">
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1524484485831-a92ffc0de03f?w=300" alt="Floor Lamp 1">
                            </div>
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1567016526105-22da7c13161a?w=300" alt="Floor Lamp 2">
                            </div>
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=300" alt="Floor Lamp 3">
                            </div>
                        </div>
                        <div class="elegant-divider"></div>
                    </div>
                    <div>
                        <img src="https://images.unsplash.com/photo-1571508601891-ca5e7a713859?w=800" alt="Floor Lamp Showcase" class="lamp-image-large">
                    </div>
                </div>
            </div>

            <!-- Pendant Lamps -->
            <div class="lamp-type-section">
                <div class="lamp-type-content">
                    <div class="lamp-info">
                        <p style="color: #999; font-size: 14px; margin-bottom: 5px;">Đèn Thiết Kế Theo Yêu Cầu</p>
                        <h3>ĐÈN THẢ TRẦN TÙY CHỈNH</h3>
                        <p>
                            Đèn thả trần không chỉ cung cấp ánh sáng chức năng mà còn tạo nên vẻ đẹp tinh tế và bầu không khí ấm áp, dễ chịu cho không gian sống. Chúng góp phần tạo ra môi trường sinh hoạt thoải mái và thư giãn cho cả gia đình. Ngoài ra, đèn thả trần còn có thể được dùng như điểm nhấn để định hình và làm nổi bật một khu vực cụ thể trong căn phòng.
                        </p>
                        <div class="lamp-products">
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1565123409695-7b5ef63a2efb?w=300" alt="Pendant Lamp 1">
                            </div>
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?w=300" alt="Pendant Lamp 2">
                            </div>
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1592838064575-70ed626d3a0e?w=300" alt="Pendant Lamp 3">
                            </div>
                        </div>
                        <div class="elegant-divider"></div>
                    </div>
                    <div>
                        <img src="https://images.unsplash.com/photo-1534349762230-e0cadf78f5da?w=800" alt="Pendant Lamp Showcase" class="lamp-image-large">
                    </div>
                </div>
            </div>

            <!-- Wall Lamps -->
            <div class="lamp-type-section">
                <div class="lamp-type-content reverse">
                    <div class="lamp-info">
                        <p style="color: #999; font-size: 14px; margin-bottom: 5px;">Đèn Thiết Kế Theo Yêu Cầu</p>
                        <h3>ĐÈN GẮN TƯỜNG TÙY CHỈNH</h3>
                        <p>
                            Một trong những ưu điểm nổi bật của đèn gắn tường là khả năng tạo ra ánh sáng mềm mại và bầu không khí ấm áp cho không gian sống. Ánh sáng phản chiếu lên tường giúp lan tỏa đều đặn, mang lại cảm giác ấm cúng và dễ chịu. Ngoài ra, đèn gắn tường còn có thể dùng để tạo điểm nhấn cho bức tường, tranh treo, hoặc đơn giản là tạo hiệu ứng ánh sáng gợn sóng nhẹ nhàng và tinh tế.
                        </p>
                        <div class="lamp-products">
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1585076641399-5c06d1b3365f?w=300" alt="Wall Lamp 1">
                            </div>
                            <div class="product-item">
                                <img src="https://images.custommade.com/L5S7drJYjX3-qPSZtijX-04KBfI=/custommade-photosets/110539/110539.998863.jpg" alt="Wall Lamp 2">
                            </div>
                            <div class="product-item">
                                <img src="https://images.unsplash.com/photo-1550985616-10810253b84d?w=300" alt="Wall Lamp 3">
                            </div>
                        </div>
                        <div class="elegant-divider"></div>
                    </div>
                    <div>
                        <img src="https://rangdong.com.vn/uploads/product/LED/LED_Gan_tuong/LN18.V2/LN18.V2-anh-san-pham.jpg" alt="Wall Lamp Showcase" class="lamp-image-large">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="chat.jsp" />

    <!-- Speed Dial FAB -->
    <div class="speed-dial" id="speedDial">
        <div class="speed-dial-items" id="speedDialItems">
            <div class="speed-dial-item" id="sdScrollTop" title="Lên đầu trang">
                <i class="fas fa-arrow-up"></i><span>Lên đầu</span>
            </div>
            <div class="speed-dial-item" id="sdSupport" title="Tư vấn trực tuyến">
                <i class="fas fa-headset"></i><span>Tư vấn</span>
            </div>
            <div class="speed-dial-item" id="sdAIBot" title="AI Bot Mộc Đăng">
                <i class="fas fa-robot"></i><span>AI Bot</span>
            </div>
        </div>
        <div class="speed-dial-main" id="speedDialMain">
            <i class="fas fa-plus"></i>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

    <script>
        // Hero slideshow functionality
        let currentSlide = 0;
        const slides = document.querySelectorAll('.hero-slide');
        const dots = document.querySelectorAll('.dot');
        const totalSlides = slides.length;
        let autoSlideInterval;

        function showSlide(index) {
            // Remove active class from all slides and dots
            slides.forEach(slide => slide.classList.remove('active'));
            dots.forEach(dot => dot.classList.remove('active'));
            
            // Add active class to current slide and dot
            slides[index].classList.add('active');
            dots[index].classList.add('active');
            
            currentSlide = index;
        }

        function nextSlide() {
            let next = (currentSlide + 1) % totalSlides;
            showSlide(next);
        }

        function startAutoSlide() {
            autoSlideInterval = setInterval(nextSlide, 5000); // Change slide every 5 seconds
        }

        function stopAutoSlide() {
            clearInterval(autoSlideInterval);
        }

        // Dot click functionality
        dots.forEach((dot, index) => {
            dot.addEventListener('click', () => {
                stopAutoSlide();
                showSlide(index);
                startAutoSlide();
            });
        });

        // Start auto slide on page load
        startAutoSlide();

        // Smooth scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth'
                    });
                }
            });
        });

        // Add scroll animation
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -100px 0px'
        };

        const observer = new IntersectionObserver(function(entries) {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        document.querySelectorAll('.lamp-type-section').forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(30px)';
            el.style.transition = 'all 0.6s ease-out';
            observer.observe(el);
        });
    </script>
    <script>
        // Speed Dial FAB
        (function () {
            const dialMain   = document.getElementById('speedDialMain');
            const dialItems  = document.getElementById('speedDialItems');
            const scrollBtn  = document.getElementById('sdScrollTop');
            const supportBtn = document.getElementById('sdSupport');
            const aiBotBtn   = document.getElementById('sdAIBot');
            if (!dialMain) return;

            let open = false;
            function closeDial() {
                open = false;
                dialItems.classList.remove('open');
                dialMain.classList.remove('open');
            }

            if (scrollBtn) scrollBtn.style.display = 'none';
            window.addEventListener('scroll', function () {
                if (scrollBtn) scrollBtn.style.display = window.pageYOffset > 300 ? 'flex' : 'none';
            });

            dialMain.addEventListener('click', function (e) {
                e.stopPropagation();
                open = !open;
                dialItems.classList.toggle('open', open);
                dialMain.classList.toggle('open', open);
            });

            document.addEventListener('click', function (e) {
                const dial = document.getElementById('speedDial');
                if (dial && !dial.contains(e.target)) closeDial();
            });

            if (scrollBtn) scrollBtn.addEventListener('click', function () {
                window.scrollTo({ top: 0, behavior: 'smooth' });
                closeDial();
            });
            if (supportBtn) supportBtn.addEventListener('click', function () {
                if (typeof toggleChatWidget === 'function') toggleChatWidget();
                closeDial();
            });
            if (aiBotBtn) aiBotBtn.addEventListener('click', function () {
                const panel = document.getElementById('mdChatbotPanel');
                if (panel) panel.style.display = panel.style.display === 'flex' ? 'none' : 'flex';
                closeDial();
            });
        })();
    </script>
</body>
</html>