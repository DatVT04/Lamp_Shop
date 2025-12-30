<%-- 
    Document   : homepage
    Created on : Feb 18, 2025, 12:13:18 AM
    Author     : VuxD4t
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lamp Shop</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <!-- Thêm vào phần head, sau Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.css">
        <!-- Custom CSS -->
        <style>
    /* Global Typography and Color Palette (đồng bộ với productList.jsp và productDetail.jsp) */
    :root {
        --primary-color: #2c3e50;
        --secondary-color: #34495e;
        --accent-color: #3498db;
        --text-color: #333;
        --light-background: #f4f6f7;
        --card-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
    }

    body {
        font-family: 'Noto Sans', 'Roboto', 'Open Sans', sans-serif; /* Font hỗ trợ tiếng Việt */
        background-color: var(--light-background);
        color: var(--text-color);
        line-height: 1.6;
    }

    .container {
        max-width: 1400px;
        padding: 2rem;
    }

    /* Hero Project Section */
    .hero-project {
        position: relative;
        width: 100%;
        margin-bottom: 0;
        overflow: hidden;
    }

    .hero-project img {
        width: 100%;
        height: 80vh;
        min-height: 600px;
        object-fit: cover;
        display: block;
    }

    .hero-project-content {
        position: absolute;
        bottom: 0;
        left: 0;
        max-width: 600px;
        background: rgba(0, 0, 0, 0.75);
        padding: 50px 40px;
        color: white;
    }

    .hero-project h2 {
        font-size: 2.2rem;
        font-weight: 700;
        margin-bottom: 20px;
        text-transform: uppercase;
        letter-spacing: 1px;
        line-height: 1.2;
    }

    .hero-project p {
        font-size: 1rem;
        line-height: 1.8;
        margin-bottom: 30px;
        opacity: 0.95;
    }

    .hero-project .btn-view {
        background: transparent;
        color: white;
        padding: 12px 30px;
        border: 2px solid white;
        border-radius: 0;
        font-weight: 600;
        text-decoration: none;
        display: inline-block;
        transition: all 0.3s ease;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .hero-project .btn-view:hover {
        background: white;
        color: var(--primary-color);
        transform: translateY(-2px);
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Our Process Section */
    .our-process {
        padding: 100px 0;
        background: white;
    }

    .process-row {
        display: flex;
        align-items: center;
        margin-bottom: 100px;
    }

    .process-row:last-child {
        margin-bottom: 0;
    }

    .process-row.reverse {
        flex-direction: row-reverse;
    }

    .process-image {
        flex: 1;
        height: 500px;
        overflow: hidden;
    }

    .process-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .process-content {
        flex: 1;
        padding: 60px;
    }

    .process-label {
        font-size: 0.85rem;
        color: #999;
        text-transform: uppercase;
        letter-spacing: 2px;
        margin-bottom: 15px;
        font-weight: 400;
    }

    .process-content h3 {
        font-size: 2rem;
        font-weight: 700;
        color: var(--primary-color);
        margin-bottom: 25px;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        text-decoration: underline;
        text-decoration-color: var(--accent-color);
        text-underline-offset: 10px;
    }

    .process-content p {
        color: #666;
        line-height: 1.9;
        margin-bottom: 30px;
        font-size: 1rem;
    }

    .process-content .btn-read-more {
        background: black;
        color: white;
        padding: 12px 30px;
        border: none;
        text-decoration: none;
        display: inline-block;
        transition: all 0.3s ease;
        font-weight: 500;
    }

    .process-content .btn-read-more:hover {
        background: var(--accent-color);
        color: white;
    }

    /* Section Title */
    .section-title {
        font-size: 2rem;
        font-weight: 700;
        color: var(--primary-color);
        margin-bottom: 2rem;
        padding-bottom: 10px;
        position: relative;
    }

    .section-title::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 80px;
        height: 4px;
        background-color: var(--accent-color);
        border-radius: 2px;
    }

    .section-title-center {
        font-size: 2.5rem;
        font-weight: 700;
        color: var(--primary-color);
        margin-bottom: 1rem;
        text-align: center;
        position: relative;
        padding-bottom: 20px;
    }

    .section-title-center::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 50%;
        transform: translateX(-50%);
        width: 100px;
        height: 4px;
        background-color: var(--accent-color);
        border-radius: 2px;
    }

    .section-description {
        color: #666;
        font-size: 1.1rem;
        max-width: 800px;
        margin: 0 auto 40px;
        text-align: center;
        line-height: 1.8;
    }

    /* Product Card (đồng bộ với productList.jsp) */
    .product-card {
        border: none;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: var(--card-shadow);
        transition: all 0.4s ease;
        display: flex;
        flex-direction: column;
        background: white;
    }

    .product-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
    }

    .thumbnail-img {
        height: 350px; /* Đồng bộ với productList.jsp */
        object-fit: cover;
        width: 100%;
        transition: transform 0.4s ease;
    }

    .product-card:hover .thumbnail-img {
        transform: scale(1.1);
    }

    .card-body {
        padding: 20px;
        flex-grow: 1;
    }

    .product-title {
        font-size: 1.1rem;
        font-weight: 600;
        color: var(--primary-color);
        margin-bottom: 10px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        line-clamp: 2;
        -webkit-box-orient: vertical;
    }

    .product-price {
        color: var(--accent-color);
        font-size: 1.3rem;
        font-weight: 700;
        margin-bottom: 15px;
    }

    .product-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: red;
        color: white;
        padding: 0.5rem 1rem;
        border-radius: 20px;
        font-size: 0.8rem;
        font-weight: 500;
    }

    .product-buttons .btn-primary {
        background: var(--accent-color);
        border: none;
        padding: 12px 20px;
        transition: all 0.3s ease;
        font-weight: 600;
    }

    .product-buttons .btn-primary:hover {
        background: #2980b9;
        transform: translateY(-3px);
    }

    /* Swiper */
    .productSwiper {
        padding: 2rem 1rem;
        position: relative;
    }

    .swiper-button-next,
    .swiper-button-prev {
        color: var(--accent-color);
        background: white;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        box-shadow: var(--card-shadow);
    }

    .swiper-button-next:after,
    .swiper-button-prev:after {
        font-size: 1.2rem;
    }

    .swiper-pagination-bullet {
        width: 10px;
        height: 10px;
    }

    .swiper-pagination-bullet-active {
        background: var(--accent-color);
    }

    /* Post Card */
    .post-card {
        border: none;
        border-radius: 0;
        overflow: hidden;
        box-shadow: 0 2px 10px rgba(0,0,0,0.08);
        transition: all 0.4s ease;
        display: flex;
        flex-direction: column;
        background: white;
        height: 100%;
    }

    .post-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
    }

    .post-card .thumbnail-img {
        height: 300px;
        object-fit: cover;
        width: 100%;
    }

    .post-card .card-body {
        padding: 30px;
        flex-grow: 1;
        display: flex;
        flex-direction: column;
    }

    .card-title {
        font-size: 1.3rem;
        font-weight: 600;
        color: var(--primary-color);
        margin-bottom: 15px;
        line-height: 1.4;
    }

    .post-summary {
        color: #666;
        font-size: 0.95rem;
        line-height: 1.7;
        margin-bottom: 20px;
        flex-grow: 1;
    }

    .post-meta {
        font-size: 0.85rem;
        color: #777;
        margin-bottom: 20px;
    }

    .post-card .btn-read-more {
        background: black;
        color: white;
        padding: 12px 30px;
        border: none;
        text-decoration: none;
        display: inline-block;
        transition: all 0.3s ease;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        font-size: 0.9rem;
        align-self: flex-start;
    }

    .post-card .btn-read-more:hover {
        background: var(--accent-color);
        color: white;
    }

    /* Back to Top */
    .back-to-top {
        position: fixed;
        bottom: 20px;
        right: 90px;
        background-color: var(--accent-color);
        color: white;
        width: 50px;
        height: 50px;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
        opacity: 0;
        visibility: hidden;
        transition: all 0.3s ease;
        border: none;
        box-shadow: var(--card-shadow);
        z-index: 999;
    }

    .back-to-top.show {
        opacity: 1;
        visibility: visible;
    }

    .back-to-top:hover {
        background-color: #2980b9;
        transform: scale(1.1);
    }

    .back-to-top .arrow {
        border: solid white;
        border-width: 0 3px 3px 0;
        display: inline-block;
        padding: 6px;
        transform: rotate(-135deg);
    }

    /* Contact Section */
    .contact-section {
        position: relative;
        padding: 120px 0;
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        text-align: center;
        color: white;
        overflow: hidden;
    }

    .contact-section::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0.5);
        z-index: 1;
    }

    .contact-section .container {
        position: relative;
        z-index: 2;
    }

    .contact-section h2 {
        font-size: 3rem;
        font-weight: 700;
        margin-bottom: 30px;
        color: white;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    .contact-section .btn-contact {
        background: white;
        color: var(--primary-color);
        padding: 18px 50px;
        border-radius: 0;
        font-weight: 600;
        text-decoration: none;
        display: inline-flex;
        align-items: center;
        gap: 10px;
        transition: all 0.3s ease;
        font-size: 1.1rem;
        text-transform: uppercase;
        letter-spacing: 1px;
        margin-top: 20px;
    }

    .contact-section .btn-contact:hover {
        background: var(--accent-color);
        color: white;
        transform: translateY(-3px);
        box-shadow: 0 10px 25px rgba(0,0,0,0.3);
    }

    /* News Section */
    .news-section {
        background: white;
        padding: 80px 0;
        margin-top: 40px;
    }

    /* Product Section Improvements */
    .products-main-section {
        padding: 100px 0;
        background: white;
    }

    .product-link {
        text-decoration: none;
        color: inherit;
    }

    .product-link:hover {
        text-decoration: none;
        color: inherit;
    }

    .product-showcase-card {
        background: white;
        border-radius: 0;
        overflow: hidden;
        box-shadow: 0 2px 10px rgba(0,0,0,0.08);
        transition: all 0.3s ease;
        height: 100%;
        display: flex;
        flex-direction: column;
    }

    .product-showcase-card:hover {
        box-shadow: 0 5px 20px rgba(0,0,0,0.15);
        transform: translateY(-5px);
    }

    .product-showcase-card .product-image {
        height: 400px;
        object-fit: cover;
        width: 100%;
    }

    .product-showcase-card .product-category {
        font-size: 0.85rem;
        color: #999;
        text-transform: uppercase;
        letter-spacing: 1px;
        margin: 20px 20px 10px;
        font-weight: 400;
    }

    .product-showcase-card .product-name {
        font-size: 1.3rem;
        font-weight: 600;
        color: var(--primary-color);
        margin: 0 20px 15px;
        line-height: 1.4;
    }

    .product-showcase-card .product-description {
        color: #666;
        font-size: 0.95rem;
        line-height: 1.7;
        margin: 0 20px 25px;
        flex-grow: 1;
    }

    .product-showcase-card .btn-detail {
        background: transparent;
        color: var(--primary-color);
        border: none;
        padding: 0;
        margin: 0 20px 25px;
        text-decoration: none;
        font-weight: 500;
        display: inline-block;
        transition: all 0.3s ease;
    }

    .product-showcase-card .btn-detail:hover {
        color: var(--accent-color);
    }
    /* Smooth Scroll */
    html {
        scroll-behavior: smooth;
    }

    /* Section Spacing */
    section {
        scroll-margin-top: 100px;
    }

    /* Responsive Adjustments */
    @media (max-width: 1521px) {
        .hero-project img {
            height: 500px;
        }
    }

    @media (max-width: 768px) {
        .hero-project img {
            height: 60vh;
            min-height: 400px;
        }
        .hero-project-content {
            padding: 30px 20px;
            max-width: 100%;
        }
        .hero-project h2 {
            font-size: 1.5rem;
        }
        .hero-project p {
            font-size: 0.9rem;
        }
        .our-process {
            padding: 60px 0;
        }
        .process-row {
            flex-direction: column;
            margin-bottom: 60px;
        }
        .process-row.reverse {
            flex-direction: column;
        }
        .process-image {
            height: 300px;
            margin-bottom: 30px;
        }
        .process-content {
            padding: 30px 20px;
        }
        .process-content h3 {
            font-size: 1.5rem;
        }
        .product-showcase-card .product-image {
            height: 300px;
        }
        .post-card .thumbnail-img {
            height: 250px;
        }
        .section-title {
            font-size: 1.5rem;
        }
        .section-title-center {
            font-size: 2rem;
        }
        .contact-section {
            padding: 80px 0;
        }
        .contact-section h2 {
            font-size: 2rem;
        }
        .products-main-section {
            padding: 60px 0;
        }
    }

    @media (max-width: 576px) {
        .hero-project img {
            height: 300px;
        }
        .hero-project-content {
            padding: 30px 15px 20px;
        }
        .hero-project h2 {
            font-size: 1.5rem;
        }
        .product-card .thumbnail-img {
            height: 250px;
        }
        .section-title-center {
            font-size: 1.8rem;
        }
        .contact-section h2 {
            font-size: 1.8rem;
        }
        .contact-section p {
            font-size: 1rem;
        }
        .ai-chat-widget {
            width: 100%;
            height: 100%;
            bottom: 0;
            right: 0;
            border-radius: 0;
        }
    }
        </style>
    </head>
    <body>
        <!-- Include header -->
        <jsp:include page="header.jsp" />
        
        <!-- Hero Project Section -->
        <c:if test="${not empty sliders and fn:length(sliders) > 0}">
            <div class="hero-project">
                <c:set var="featuredSlider" value="${sliders[0]}" />
                <img src="${featuredSlider.image_url}" alt="${featuredSlider.title}">
                <div class="hero-project-content">
                    <h2>${featuredSlider.title}</h2>
                    <p>${featuredSlider.notes}</p>
                    <c:if test="${not empty featuredSlider.link}">
                        <a href="${featuredSlider.link}" class="btn-view">Xem dự án</a>
                    </c:if>
                </div>
            </div>
        </c:if>

        <!-- Our Process Section -->
        <section class="our-process">
            <div class="container">
                <!-- Process 1: SẢN XUẤT THEO ĐƠN ĐẶT HÀNG -->
                <div class="process-row">
                    <div class="process-image">
                        <img src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=800" alt="Sản xuất">
                    </div>
                    <div class="process-content">
                        <div class="process-label">Our process</div>
                        <h3>SẢN XUẤT THEO ĐƠN ĐẶT HÀNG</h3>
                        <p>Quá trình tạo ra mỗi sản phẩm là một quá trình kỳ công. Từ những bản thiết kế của bạn, đội ngũ kỹ sư của chúng tôi sẽ phân tích và đánh giá để đưa ra những phương án gia công và chọn lựa nguyên liệu phù hợp, kiểm tra chất lượng nghiêm ngặt từng khâu của quá trình sản xuất để mọi sản phẩm đảm bảo mọi chi tiết hoàn hảo trước khi đến tay của bạn.</p>
                        <a href="#" class="btn-read-more">Xem thêm ></a>
                    </div>
                </div>

                <!-- Process 2: CUSTOM DESIGN -->
                <div class="process-row reverse">
                    <div class="process-image">
                        <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800" alt="Custom Design">
                    </div>
                    <div class="process-content">
                        <div class="process-label">Our process</div>
                        <h3>CUSTOM DESIGN</h3>
                        <p>Không gian của bạn là một tập hợp của những ý tưởng và cá nhân riêng biệt. Đó là lý do tại sao chúng tôi tự hào khi có khả năng tùy chỉnh sản phẩm theo mong muốn của bạn. Từ việc chọn màu sắc, kích thước, kiểu dáng đến việc thêm những chi tiết riêng biệt, chúng tôi luôn đảm bảo sản phẩm hoàn toàn phản ánh cá tính của bạn.</p>
                        <a href="#" class="btn-read-more">Xem thêm ></a>
                    </div>
                </div>

                <!-- Process 3: BỘ SƯU TẬP THEO MÙA -->
                <div class="process-row">
                    <div class="process-image">
                        <img src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=800" alt="Bộ sưu tập">
                    </div>
                    <div class="process-content">
                        <div class="process-label">Our process</div>
                        <h3>BỘ SƯU TẬP THEO MÙA</h3>
                        <p>Chúng tôi luôn tiếp tục nắm bắt các xu hướng mới nhất trong lĩnh vực đèn trang trí. Từ phong cách cổ điển đến hiện đại, từ dáng vẻ tối giản đến táo bạo,… những sản phẩm mới được chúng tôi cho ra mắt hàng năm với những thiết kế độc đáo và đẹp mắt, có đầy đủ những nguyên liệu khác nhau từ kim loại, gốm sứ, vải cho đến những dòng sản phẩm từ mây tre tự nhiên và các loại nguyên liệu độc đáo khác.</p>
                        <a href="listproduct" class="btn-read-more">Xem bộ sưu tập ></a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sản Phẩm Của Chúng Tôi -->
        <section class="products-main-section">
            <div class="container">
                <div class="text-center mb-5">
                    <h2 class="section-title-center" style="font-size: 3rem; margin-bottom: 20px;">Sản Phẩm Của Chúng Tôi</h2>
                    <p class="section-description" style="font-style: italic; font-size: 1.1rem;">Mỗi chiếc đèn của chúng tôi đều mang một câu chuyện riêng; từng chi tiết trên sản phẩm được chế tác tỉ mỉ, đảm bảo mỗi đường kim mũi chỉ đều góp phần tạo nên một sản phẩm có giá trị bền vững.</p>
                </div>
                
                <!-- Hiển thị sản phẩm nổi bật -->
                <div class="row g-4">
                    <c:set var="productCount" value="0" />
                    <c:forEach items="${level1Categories}" var="category">
                        <c:if test="${productCount < 6}">
                            <c:set var="categoryProducts" value="${productsByCategory[category.id]}" />
                            <c:if test="${not empty categoryProducts}">
                                <c:forEach items="${categoryProducts}" var="product">
                                    <c:if test="${productCount < 6}">
                                        <div class="col-md-4">
                                            <div class="product-showcase-card">
                                                <img src="${product.thumbnail}" class="product-image" alt="${product.title}">
                                                <div class="product-category">${category.name}</div>
                                                <div class="product-name">${product.title}</div>
                                                <div class="product-description">
                                                    <c:choose>
                                                        <c:when test="${not empty product.description}">
                                                            ${fn:length(product.description) > 150 ? fn:substring(product.description, 0, 150) : product.description}${fn:length(product.description) > 150 ? '...' : ''}
                                                        </c:when>
                                                        <c:otherwise>
                                                            Sản phẩm chất lượng cao với thiết kế độc đáo và tinh tế.
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                                <a href="productdetail?id=${product.id}" class="btn-detail">Chi Tiết Sản Phẩm ></a>
                                            </div>
                                        </div>
                                        <c:set var="productCount" value="${productCount + 1}" />
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </section>


        <!-- Bài đăng mới nhất / Tin tức -->
        <section class="news-section">
            <div class="container">
                <div class="text-center mb-5">
                    <h2 class="section-title-center" style="font-size: 2.5rem;">TIN TỨC</h2>
                </div>
                <div class="row g-4">
                    <c:forEach var="post" items="${latestPosts}">
                        <div class="col-md-4">
                            <div class="card post-card h-100">
                                <img src="${post.getThumbnail()}" 
                                     class="thumbnail-img" alt="${post.getTitle()}">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        ${post.getTitle()}
                                    </h5>
                                    <p class="post-summary">${post.getSummary()}</p>
                                    <a href="${pageContext.request.contextPath}/post?id=${post.getId()}" 
                                       class="btn-read-more">ĐỌC THÊM</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <!-- Đặt Câu Hỏi Cho Chúng Tôi -->
        <section class="contact-section" style="background-image: url('https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=1920');">
            <div class="container">
                <h2>Đặt Câu Hỏi Cho Chúng Tôi !</h2>
                <a href="cartcontact" class="btn-contact">
                    <i class="fas fa-phone"></i> LIÊN HỆ
                </a>
            </div>
        </section>

        <jsp:include page="chat.jsp" />
        
        <!-- Back to Top -->
        <button id="backToTopButton" class="back-to-top">
            <div class="arrow"></div>
        </button>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <jsp:include page="footer.jsp" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.js"></script>
        <script>
                    var swiper = new Swiper(".productSwiper", {
                        slidesPerView: 1,
                        spaceBetween: 20,
                        loop: true,
                        pagination: {
                            el: ".swiper-pagination",
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ".swiper-button-next",
                            prevEl: ".swiper-button-prev",
                        },
                        autoplay: {
                            delay: 3000,
                            disableOnInteraction: false,
                        },
                        breakpoints: {
                            640: {
                                slidesPerView: 2,
                            },
                            768: {
                                slidesPerView: 3,
                            },
                            1024: {
                                slidesPerView: 4,
                            },
                        },
                    });
        </script>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const backToTopButton = document.getElementById('backToTopButton');

                // Hiển thị nút khi cuộn xuống 300px từ đầu trang
                window.addEventListener('scroll', function () {
                    if (window.pageYOffset > 300) {
                        backToTopButton.classList.add('show');
                    } else {
                        backToTopButton.classList.remove('show');
                    }
                });

                // Khi nhấp vào nút, cuộn lên đầu trang
                backToTopButton.addEventListener('click', function () {
                    window.scrollTo({
                        top: 0,
                        behavior: 'smooth'
                    });
                });
            });
        </script>
    </body>
</html>
</html>