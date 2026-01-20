<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customize Lamp</title>
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

        /* Background image với animation */
        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://www.yankodesign.com/images/design_news/2023/05/illuminate-any-modern-space-with-some-tradition/WoodooLamp_productdesign_lamp_5.jpg') center/cover;
            animation: zoomIn 20s ease-out infinite alternate;
            z-index: -2;
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

        /* Animation zoom in */
        @keyframes zoomIn {
            0% {
                transform: scale(1);
            }
            100% {
                transform: scale(1.1);
            }
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
            margin-bottom: 30px;
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

        .view-collection {
            text-align: center;
        }

        .view-collection a {
            display: inline-block;
            padding: 12px 35px;
            border: 2px solid #333;
            color: #333;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s;
        }

        .view-collection a:hover {
            background: #333;
            color: white;
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
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-background"></div>
        <div class="hero-content">
            <h1>CUSTOM DESIGN LAMP</h1>
            <p>Chúng tôi là một nhà sản xuất đèn với nhiều năm kinh nghiệm về đèn trang trí. Bạn chỉ cần cung cấp cho chúng tôi những bản phát thảo, những ký sự của chúng tôi sẽ giúp bạn biến những phát thảo đó thành những tác phẩm tuyệt vời.</p>
            <div class="hero-dots">
                <span class="dot active" data-slide="0"></span>
                <span class="dot" data-slide="1"></span>
            </div>
        </div>
    </section>

    <!-- Room Categories Section -->
    <section class="room-categories">
        <div class="container">
            <h2 class="section-title">DESIGN YOUR ROOM</h2>
            <p class="section-subtitle">
                Ánh sáng và vật liệu trong thiết kế nội thất rất quan trọng, hãy để hợp chúng thật thông minh để làm không gian của bạn trở nên nổi bật hơn. Liên hệ chúng tôi để được tư vấn!
            </p>
            
            <div class="categories-grid">
                <div class="category-card" onclick="location.href='customize.jsp?room=bedroom'">
                    <img src="https://images.unsplash.com/photo-1616486338812-3dadae4b4ace?w=600" alt="Bed room" class="category-image">
                    <div class="category-overlay">
                        <h3 class="category-title">Bed room</h3>
                        <p class="category-description">
                            Bể mật gỗ ghế có khả năng phản ánh sáng tốt, giúp làm mờ và phân tán các điểm sáng và bóng đổ trên bề mặt. Điều này có thể làm cho không gian trở nên ấm áp và thoải mái hơn...
                        </p>
                    </div>
                </div>

                <div class="category-card" onclick="location.href='customize.jsp?room=living'">
                    <img src="https://images.unsplash.com/photo-1600121848594-d8644e57abab?w=600" alt="Living room" class="category-image">
                    <div class="category-overlay">
                        <h3 class="category-title">Living room</h3>
                        <p class="category-description">
                            Tranh đặt các vật trang trí lên gần của số của nhà, và nó sẽ chiến chiếu ánh sáng từ nhiên vào trong vào bạn ngày. Ngoài việc sử dụng đèn chiếu sáng nhân tạo...
                        </p>
                    </div>
                </div>

                <div class="category-card" onclick="location.href='customize.jsp?room=kitchen'">
                    <img src="https://images.unsplash.com/photo-1556912173-46c336c7fd55?w=600" alt="Kitchen room" class="category-image">
                    <div class="category-overlay">
                        <h3 class="category-title">Kitchen room</h3>
                        <p class="category-description">
                            Sử dụng đèn trang trí có ánh sáng màu trắng có thể làm cho màu ấm mắt làm cho không gian tập ấm hơn và thu hút hơn. Điều này có thể làm cho môi trường nhà bếp...
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
                        <p style="color: #999; font-size: 14px; margin-bottom: 5px;">Custom design lamp</p>
                        <h3>ĐÈN BÀN TÙY CHỈNH</h3>
                        <p>
                            Đèn bàn là vật trang trí và chiếu sáng không thể thiếu cho các phòng của bạn. Đèn bàn không chỉ dùng với mục đích trang trí, nó còn mang đến cho chúng ta một thú ánh sáng huyền ảo, làm cho mặt bàn đẹ càng thêng, khi được sử dụng làm đèn bàn, hiệu suất ánh sáng phải phù hợp để đọc và chiếu sáng mày thìn đề bàn. Đèn bàn cũng có thể được sử dụng như một đèn trang trí thuần túy, lay trung phòng khách đễ tạo hiệu ứng ánh sáng chào đón.
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
                        <div class="view-collection">
                            <a href="shop.jsp?category=table-lamp">XEM BỘ SƯU TẬP ›</a>
                        </div>
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
                        <p style="color: #999; font-size: 14px; margin-bottom: 5px;">Custom design lamp</p>
                        <h3>ĐÈN ĐỂ SÀN TÙY CHỈNH</h3>
                        <p>
                            Đèn sàn dùng làm nội bật ánh sáng của các phòng nội thất được đèn trần không thể đáp ứng như các căn phòng của bạn. Trong các trường hợp khác, đèn sàn dùng là một vật trang trí hoàn thiện phòng cách trang trí nội thất và tạo ra một bầu không khí ấm cúng. Chúng có thể sử dụng để tạo điểm nhấn cho tường ánh, trang treo, hoặc thành chỉ tạo hiệu ứng ánh sáng gọn sông trên tường.
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
                        <div class="view-collection">
                            <a href="shop.jsp?category=floor-lamp">XEM BỘ SƯU TẬP ›</a>
                        </div>
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
                        <p style="color: #999; font-size: 14px; margin-bottom: 5px;">Custom design lamp</p>
                        <h3>ĐÈN THẢ TRẦN TÙY CHỈNH</h3>
                        <p>
                            Đèn thả trần không chỉ có tác dụng cung cấp ánh sáng chức năng cho một không gian, mà còn tạo nên ánh sáng đẹp và không gian ấm áp và kích thích. Chúng có thể tạo ra một không gian sinh hoạt và thoải mái cho cả gia đình thưởng thức. Trong các trường hợp khác, chúng có thể sử dụng để làm cho không gian sinh hoạt tập trung vào một khu vực.
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
                        <div class="view-collection">
                            <a href="shop.jsp?category=pendant-lamp">XEM BỘ SƯU TẬP ›</a>
                        </div>
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
                        <p style="color: #999; font-size: 14px; margin-bottom: 5px;">Custom design lamp</p>
                        <h3>ĐÈN ÁP TƯỜNG VÀ TRẦN TÙY CHỈNH</h3>
                        <p>
                            Một trong những ưu điểm nổi bật của đèn gắn tường là khả năng tạo ánh sáng mềm mại và không gian ấm áp. Đèn gắn tường thường được trang bị ánh sáng mờ, phản ánh tường, làm cho ánh sáng lan toả đều đặn và tạo ra một bầu không khí ấm cúng. Chúng cũng có thể sử dụng để tạo điểm nhận cho tường ánh, trang treo, hoặc thành chỉ tạo hiệu ứng ánh sáng gợn sóng trên tường.
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
                        <div class="view-collection">
                            <a href="shop.jsp?category=wall-lamp">XEM BỘ SƯU TẬP ›</a>
                        </div>
                    </div>
                    <div>
                        <img src="https://rangdong.com.vn/uploads/product/LED/LED_Gan_tuong/LN18.V2/LN18.V2-anh-san-pham.jpg" alt="Wall Lamp Showcase" class="lamp-image-large">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp" />

    <script>
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
</body>
</html>