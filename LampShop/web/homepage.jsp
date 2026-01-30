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
        
        <!-- External CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.css">
        
        <!-- Custom CSS -->
        <style>
            /* ============================================
               GLOBAL VARIABLES & BASE STYLES
               ============================================ */
            :root {
                --primary-color: #2c3e50;
                --secondary-color: #34495e;
                --accent-color: #3498db;
                --text-color: #333;
                --light-background: #f4f6f7;
                --card-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', 'Roboto', 'Open Sans', sans-serif;
                background-color: #fff;
                color: var(--text-color);
                line-height: 1.6;
            }

            html {
                scroll-behavior: smooth;
            }

            section {
                scroll-margin-top: 100px;
            }

            .container {
                max-width: 1400px;
                padding: 2rem;
                margin: 0 auto;
                width: 100%;
            }

            /* ============================================
               HERO PROJECT SECTION
               ============================================ */
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
                max-width: 650px;
                background: rgba(0, 0, 0, 0.8);
                padding: 60px 50px;
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
                font-size: 0.9rem;
            }

            .hero-project .btn-view:hover {
                background: white;
                color: var(--primary-color);
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            }

            /* ============================================
               OUR PROCESS SECTION
               ============================================ */
            .our-process {
                padding: 120px 0;
                background: #fff;
            }

            .our-process .container {
                max-width: 1400px;
                margin: 0 auto;
                padding: 0 4rem;
            }

            .process-row {
                display: flex;
                align-items: stretch;
                margin-bottom: 120px;
                gap: 0;
                min-height: 500px;
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
                position: relative;
            }

            .process-image img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.4s ease;
            }

            .process-row:hover .process-image img {
                transform: scale(1.05);
            }

            .process-content {
                flex: 1;
                padding: 80px 60px;
                background: white;
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            .process-label {
                font-size: 0.75rem;
                color: #999;
                text-transform: uppercase;
                letter-spacing: 3px;
                margin-bottom: 20px;
                font-weight: 500;
            }

            .process-content h3 {
                font-size: 2.2rem;
                font-weight: 700;
                color: #000;
                margin-bottom: 30px;
                text-transform: uppercase;
                letter-spacing: 1px;
                position: relative;
                padding-bottom: 20px;
                line-height: 1.3;
            }

            .process-content h3::after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 0;
                width: 100px;
                height: 4px;
                background-color: #000;
            }

            .process-content p {
                color: #555;
                line-height: 2;
                margin-bottom: 35px;
                font-size: 1.05rem;
            }

            .process-content .btn-read-more {
                background: #000;
                color: white;
                padding: 14px 35px;
                border: none;
                text-decoration: none;
                display: inline-block;
                transition: all 0.3s ease;
                font-weight: 500;
                border-radius: 0;
                text-transform: uppercase;
                letter-spacing: 1px;
                font-size: 0.85rem;
                align-self: flex-start;
            }

            .process-content .btn-read-more:hover {
                background: #333;
                color: white;
                transform: translateY(-2px);
            }

            /* ============================================
               SECTION TITLES & DESCRIPTIONS
               ============================================ */
            .section-title-center {
                font-size: 3.5rem;
                font-weight: 700;
                color: #000;
                margin-bottom: 25px;
                text-align: center;
                position: relative;
            }

            .section-description {
                color: #666;
                font-size: 1.15rem;
                font-style: italic;
                max-width: 900px;
                margin: 0 auto 50px;
                text-align: center;
                line-height: 1.8;
            }

            .section-divider {
                max-width: 100px;
                margin: 0 auto 60px;
                border: none;
                border-top: 3px solid #ddd;
                height: 0;
            }

            /* ============================================
               FEATURED PRODUCTS CAROUSEL SECTION
               ============================================ */
            .featured-products-section {
                position: relative;
                width: 100%;
                padding: 0;
                background: rgb(252, 255, 255);
                overflow: hidden;
                min-height: 600px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .featured-products-container {
                width: 100%;
                max-width: 100%;
                margin: 0 auto;
                padding: 60px 0;
            }

            .featuredProductsSwiper {
                width: 100%;
                height: 100%;
                padding: 80px 0;
                position: relative;
            }

            .featuredProductsSwiper .swiper-wrapper {
                display: flex;
                align-items: center;
                justify-content: center;
                transition-timing-function: cubic-bezier(0.25, 0.46, 0.45, 0.94);
            }

            .featuredProductsSwiper .swiper-slide {
                display: flex;
                align-items: center;
                justify-content: center;
                width: auto;
                height: auto;
                transition: all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            }

            .featured-product-item {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                width: 100%;
                max-width: 450px;
                margin: 0 auto;
                position: relative;
                transition: all 0.8s ease;
            }

            .featured-product-image-wrapper {
                width: 100%;
                height: 550px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 40px;
                position: relative;
                transition: all 0.8s ease;
            }

            .featured-product-image {
                max-width: 100%;
                max-height: 100%;
                width: auto;
                height: auto;
                object-fit: contain;
                display: block;
                transition: all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
                filter: drop-shadow(0 10px 30px rgba(0, 0, 0, 0.1));
            }

            .featured-product-placeholder {
                width: 350px;
                height: 550px;
                background: rgba(255, 255, 255, 0.4);
                border: 2px dashed rgba(0, 0, 0, 0.15);
                border-radius: 8px;
                display: flex;
                align-items: center;
                justify-content: center;
                position: relative;
                transition: all 0.8s ease;
            }

            .featured-product-placeholder::before {
                content: '📷';
                font-size: 4rem;
                opacity: 0.3;
            }

            .featured-product-label {
                text-align: center;
                font-size: 1.3rem;
                font-weight: 400;
                color: #333;
                margin-top: 0;
                text-transform: none;
                letter-spacing: 0.3px;
                line-height: 1.5;
                transition: all 0.8s ease;
                opacity: 0.8;
            }

            /* Đèn ở giữa (active) lớn hơn và nổi bật hơn */
            .featuredProductsSwiper .swiper-slide-active .featured-product-image {
                transform: scale(1.1);
                opacity: 1;
                filter: drop-shadow(0 15px 40px rgba(0, 0, 0, 0.2));
            }

            .featuredProductsSwiper .swiper-slide-active .featured-product-image-wrapper {
                transform: scale(1.05);
            }

            .featuredProductsSwiper .swiper-slide-active .featured-product-label {
                opacity: 1;
                font-weight: 500;
                font-size: 1.4rem;
            }

            .featuredProductsSwiper .swiper-slide-active .featured-product-item {
                z-index: 2;
            }

            /* Đèn ở hai bên nhỏ hơn và mờ hơn */
            .featuredProductsSwiper .swiper-slide:not(.swiper-slide-active) .featured-product-image {
                transform: scale(0.85);
                opacity: 0.5;
                filter: drop-shadow(0 5px 15px rgba(0, 0, 0, 0.05));
            }

            .featuredProductsSwiper .swiper-slide:not(.swiper-slide-active) .featured-product-image-wrapper {
                transform: scale(0.9);
            }

            .featuredProductsSwiper .swiper-slide:not(.swiper-slide-active) .featured-product-label {
                opacity: 0.5;
                font-size: 1.1rem;
            }

            .featuredProductsSwiper .swiper-slide:not(.swiper-slide-active) .featured-product-item {
                z-index: 1;
            }

            /* ============================================
               PRODUCTS SECTION
               ============================================ */
            .products-main-section {
                padding: 120px 0;
                background: #fff;
                width: 100%;
                overflow: hidden;
            }

            .products-main-section .container {
                max-width: 1400px;
                margin: 0 auto;
                padding: 0 2rem;
            }

            .products-grid-container {
                width: 100%;
                padding: 40px 0;
            }

            .products-grid {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 40px;
                width: 100%;
            }

            .product-showcase-card {
                background: white;
                border-radius: 0;
                overflow: hidden;
                box-shadow: 0 2px 10px rgba(0,0,0,0.08);
                transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
                display: flex;
                flex-direction: column;
                border: 1px solid #f0f0f0;
                height: 100%;
            }

            .product-showcase-card:hover {
                box-shadow: 0 8px 30px rgba(0,0,0,0.15);
                transform: translateY(-8px);
            }

            .product-showcase-card .product-image {
                width: 100%;
                height: 450px;
                object-fit: cover;
                transition: transform 0.4s ease;
                display: block;
            }

            .product-showcase-card:hover .product-image {
                transform: scale(1.05);
            }

            .product-image-placeholder {
                width: 100%;
                height: 450px;
                background: #f5f5f5;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .product-title-wrapper {
                padding: 25px 25px 15px;
                margin: 0;
            }

            .product-title-main {
                font-size: 1.1rem;
                font-weight: 600;
                color: #000;
                margin: 0 0 8px 0;
                line-height: 1.3;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .product-title-sub {
                font-size: 1rem;
                font-weight: 400;
                color: #333;
                margin: 0;
                line-height: 1.4;
                text-transform: none;
            }

            .product-showcase-card .product-description {
                color: #666;
                font-size: 1rem;
                line-height: 1.8;
                margin: 0 25px 25px;
                flex-grow: 1;
                min-height: 80px;
                font-weight: 400;
                letter-spacing: 0.2px;
            }

            .product-showcase-card .btn-detail {
                background: transparent;
                color: #000;
                border: none;
                padding: 0;
                margin: 0 25px 30px;
                text-decoration: none;
                font-weight: 500;
                display: inline-block;
                transition: all 0.3s ease;
                font-size: 0.9rem;
                width: auto;
            }

            .product-showcase-card .btn-detail:hover {
                color: #666;
                text-decoration: underline;
            }

            /* ============================================
               NEWS SECTION
               ============================================ */
            .news-section {
                background: #fff;
                padding: 100px 0;
            }

            .news-section .section-title-center {
                font-size: 2.8rem;
                margin-bottom: 60px;
            }

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
                font-size: 1.4rem;
                font-weight: 600;
                color: #000;
                margin-bottom: 18px;
                line-height: 1.4;
            }

            .post-summary {
                color: #555;
                font-size: 1rem;
                line-height: 1.8;
                margin-bottom: 25px;
                flex-grow: 1;
            }

            .post-card .btn-read-more {
                background: #000;
                color: white;
                padding: 14px 35px;
                border: none;
                text-decoration: none;
                display: inline-block;
                transition: all 0.3s ease;
                font-weight: 500;
                text-transform: uppercase;
                letter-spacing: 1px;
                font-size: 0.85rem;
                align-self: flex-start;
                border-radius: 0;
            }

            .post-card .btn-read-more:hover {
                background: #333;
                color: white;
                transform: translateY(-2px);
            }

            /* ============================================
               CONTACT SECTION
               ============================================ */
            .contact-section {
                position: relative;
                padding: 150px 0;
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
                font-size: 3.5rem;
                font-weight: 700;
                margin-bottom: 40px;
                color: white;
                text-transform: uppercase;
                letter-spacing: 3px;
            }

            .contact-section .btn-contact {
                background: white;
                color: #000;
                padding: 20px 60px;
                border-radius: 0;
                font-weight: 600;
                text-decoration: none;
                display: inline-flex;
                align-items: center;
                gap: 12px;
                transition: all 0.3s ease;
                font-size: 1.1rem;
                text-transform: uppercase;
                letter-spacing: 2px;
                margin-top: 30px;
                border: 2px solid white;
            }

            .contact-section .btn-contact:hover {
                background: transparent;
                color: white;
                border-color: white;
                transform: translateY(-3px);
                box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            }

            /* ============================================
               BACK TO TOP BUTTON
               ============================================ */
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

            /* ============================================
               RESPONSIVE DESIGN
               ============================================ */
            @media (max-width: 1200px) {
                .our-process .container {
                    padding: 0 2rem;
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
                    min-height: auto;
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

                .section-title-center {
                    font-size: 2rem;
                }

                /* Featured Products Section Responsive */
                .featured-products-section {
                    min-height: 400px;
                    padding: 40px 0;
                }

                .featured-products-container {
                    padding: 30px 0;
                }

                .featuredProductsSwiper {
                    padding: 40px 0;
                }

                .featured-product-image-wrapper {
                    height: 350px;
                    margin-bottom: 20px;
                }

                .featured-product-label {
                    font-size: 1rem;
                }

                .featuredProductsSwiper .swiper-slide-active .featured-product-label {
                    font-size: 1.1rem;
                }

                .featured-product-placeholder {
                    width: 250px;
                    height: 350px;
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

                .products-grid {
                    grid-template-columns: 1fr;
                    gap: 30px;
                }

                .product-showcase-card .product-image {
                    height: 350px;
                }

                .products-main-section .container {
                    padding: 0 1rem;
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

                .section-title-center {
                    font-size: 1.8rem;
                }

                .contact-section h2 {
                    font-size: 1.8rem;
                }

                .contact-section p {
                    font-size: 1rem;
                }
            }
        </style>
    </head>
    <body>
        <!-- Header -->
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
        <c:if test="${empty sliders or fn:length(sliders) == 0}">
            <div class="hero-project">
                <img src="https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=1920" alt="Lamp Shop">
                <div class="hero-project-content">
                    <h2>SUNPBAY PARK PROJECT</h2>
                    <p>Khách sạn Sunbay park là một khách sạn 5 sao nổi tiếng tại Việt Nam, yêu cầu tiêu chuẩn cao về chất lượng và sự sang trọng trong thiết kế nội thất, đặc biệt là chiếu sáng. Chúng tôi đã vinh dự là một đối tác sản xuất đèn thả trần nghệ thuật trong khu vực nhà hàng và đèn bàn gốm sứ LED hiện đại trong các phòng của khách sạn.</p>
                    <a href="listproduct" class="btn-view">Xem dự án</a>
                </div>
            </div>
        </c:if>

        <!-- Featured Products Carousel Section (giống trang mẫu) -->
        <section class="featured-products-section">
            <div class="featured-products-container">
                <div class="swiper featuredProductsSwiper">
                    <div class="swiper-wrapper">
                        <c:forEach items="${level1Categories}" var="category">
                            <c:set var="categoryProducts" value="${productsByCategory[category.id]}" />
                            <c:if test="${not empty categoryProducts}">
                                <c:forEach items="${categoryProducts}" var="product">
                                    <div class="swiper-slide">
                                        <div class="featured-product-item">
                                            <div class="featured-product-image-wrapper">
                                                <img src="${product.thumbnail}" class="featured-product-image" alt="${product.title}" onerror="this.style.display='none';">
                                            </div>
                                            <div class="featured-product-label">${product.title}</div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </c:forEach>
                        <c:if test="${not empty featuredProducts}">
                            <c:forEach items="${featuredProducts}" var="product">
                                <div class="swiper-slide">
                                    <div class="featured-product-item">
                                        <div class="featured-product-image-wrapper">
                                            <img src="${product.thumbnail}" class="featured-product-image" alt="${product.title}" onerror="this.style.display='none';">
                                        </div>
                                        <div class="featured-product-label">${product.title}</div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                        <!-- Thêm slides trống để đảm bảo có đủ nội dung -->
                        <c:if test="${empty level1Categories or (empty productsByCategory and empty featuredProducts)}">
                            <div class="swiper-slide">
                                <div class="featured-product-item">
                                    <div class="featured-product-image-wrapper">
                                        <div class="featured-product-placeholder"></div>
                                    </div>
                                    <div class="featured-product-label">Đèn sàn – Nón Lá VN</div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="featured-product-item">
                                    <div class="featured-product-image-wrapper">
                                        <div class="featured-product-placeholder"></div>
                                    </div>
                                    <div class="featured-product-label">Đèn sàn – Winter Willing</div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="featured-product-item">
                                    <div class="featured-product-image-wrapper">
                                        <div class="featured-product-placeholder"></div>
                                    </div>
                                    <div class="featured-product-label">Đèn Sàn – Đá Marble</div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </section>

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

        <!-- Products Section -->
        <section class="products-main-section">
            <div class="container">
                <div class="text-center mb-5">
                    <h2 class="section-title-center">Sản Phẩm Của Chúng Tôi</h2>
                    <p class="section-description">Mỗi chiếc đèn của chúng tôi đều mang một câu chuyện riêng; từng chi tiết trên sản phẩm được chế tác tỉ mỉ, đảm bảo mỗi đường kim mũi chỉ đều góp phần tạo nên một sản phẩm có giá trị bền vững.</p>
                    <hr class="section-divider">
                </div>
                
                <!-- Product Grid - 3 cột như trang mẫu -->
                <div class="products-grid-container">
                    <div class="products-grid">
                        <c:set var="productCount" value="0" />
                        <c:forEach items="${level1Categories}" var="category">
                            <c:if test="${productCount < 3}">
                                <c:set var="categoryProducts" value="${productsByCategory[category.id]}" />
                                <c:if test="${not empty categoryProducts}">
                                    <c:forEach items="${categoryProducts}" var="product">
                                        <c:if test="${productCount < 3}">
                                            <div class="product-showcase-card">
                                                <img src="${product.thumbnail}" class="product-image" alt="${product.title}" onerror="this.src='https://via.placeholder.com/400x400?text=No+Image'">
                                                <div class="product-title-wrapper">
                                                    <h3 class="product-title-main">${fn:toUpperCase(category.name)}</h3>
                                                    <h4 class="product-title-sub">${product.title}</h4>
                                                </div>
                                                <p class="product-description">
                                                    <c:choose>
                                                        <c:when test="${not empty product.description}">
                                                            ${fn:length(product.description) > 150 ? fn:substring(product.description, 0, 150) : product.description}${fn:length(product.description) > 150 ? '...' : ''}
                                                        </c:when>
                                                        <c:otherwise>
                                                            Sản phẩm chất lượng cao với thiết kế độc đáo và tinh tế.
                                                        </c:otherwise>
                                                    </c:choose>
                                                </p>
                                                <a href="productdetail?id=${product.id}" class="btn-detail">Chi Tiết Sản Phẩm</a>
                                            </div>
                                            <c:set var="productCount" value="${productCount + 1}" />
                                        </c:if>
                                    </c:forEach>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${productCount < 3 and not empty featuredProducts}">
                            <c:forEach items="${featuredProducts}" var="product">
                                <c:if test="${productCount < 3}">
                                    <div class="product-showcase-card">
                                        <img src="${product.thumbnail}" class="product-image" alt="${product.title}" onerror="this.src='https://via.placeholder.com/400x400?text=No+Image'">
                                        <div class="product-title-wrapper">
                                            <h3 class="product-title-main">ĐÈN BÀN</h3>
                                            <h4 class="product-title-sub">${product.title}</h4>
                                        </div>
                                        <p class="product-description">
                                            <c:choose>
                                                <c:when test="${not empty product.description}">
                                                    ${fn:length(product.description) > 150 ? fn:substring(product.description, 0, 150) : product.description}${fn:length(product.description) > 150 ? '...' : ''}
                                                </c:when>
                                                <c:otherwise>
                                                    Sản phẩm chất lượng cao với thiết kế độc đáo và tinh tế.
                                                </c:otherwise>
                                            </c:choose>
                                        </p>
                                        <a href="productdetail?id=${product.id}" class="btn-detail">Chi Tiết Sản Phẩm</a>
                                    </div>
                                    <c:set var="productCount" value="${productCount + 1}" />
                                </c:if>
                            </c:forEach>
                        </c:if>
                        <!-- Placeholder nếu không đủ 3 sản phẩm -->
                        <c:if test="${productCount < 3}">
                            <c:forEach begin="${productCount}" end="2" var="i">
                                <div class="product-showcase-card">
                                    <div class="product-image-placeholder">
                                        <img src="https://via.placeholder.com/400x500?text=Product+${i+1}" class="product-image" alt="Placeholder">
                                    </div>
                                    <div class="product-title-wrapper">
                                        <h3 class="product-title-main">ĐÈN BÀN</h3>
                                        <h4 class="product-title-sub">Sản phẩm mẫu ${i+1}</h4>
                                    </div>
                                    <p class="product-description">
                                        Sản phẩm chất lượng cao với thiết kế độc đáo và tinh tế, được chế tác tỉ mỉ bởi các nghệ nhân lành nghề.
                                    </p>
                                    <a href="listproduct" class="btn-detail">Chi Tiết Sản Phẩm</a>
                                </div>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
            </div>
        </section>

        <!-- News Section -->
        <section class="news-section">
            <div class="container">
                <div class="text-center mb-5">
                    <h2 class="section-title-center">TIN TỨC</h2>
                </div>
                <div class="row g-4">
                    <c:forEach var="post" items="${latestPosts}">
                        <div class="col-md-4">
                            <div class="card post-card h-100">
                                <img src="${post.getThumbnail()}" class="thumbnail-img" alt="${post.getTitle()}">
                                <div class="card-body">
                                    <h5 class="card-title">${post.getTitle()}</h5>
                                    <p class="post-summary">
                                        <c:choose>
                                            <c:when test="${not empty post.getSummary()}">
                                                ${fn:length(post.getSummary()) > 120 ? fn:substring(post.getSummary(), 0, 120) : post.getSummary()}${fn:length(post.getSummary()) > 120 ? '...' : ''}
                                            </c:when>
                                            <c:otherwise>
                                                ${fn:length(post.getContent()) > 120 ? fn:substring(post.getContent(), 0, 120) : post.getContent()}${fn:length(post.getContent()) > 120 ? '...' : ''}
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                    <a href="${pageContext.request.contextPath}/post?id=${post.getId()}" class="btn-read-more">Đọc thêm</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
       
        <!-- Chat Widget -->
        <jsp:include page="chat.jsp" />
        
        <!-- Back to Top Button -->
        <button id="backToTopButton" class="back-to-top">
            <div class="arrow"></div>
        </button>

        <!-- External Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.js"></script>
        
        <!-- Custom Scripts -->
        <script>
            // Featured Products Swiper với autoplay 2 giây
            document.addEventListener('DOMContentLoaded', function() {
                // Đợi Swiper library load xong
                if (typeof Swiper === 'undefined') {
                    console.error('Swiper library not loaded');
                    return;
                }

                try {
                    // Featured Products Swiper - Hiển thị 3 đèn tự động chuyển mỗi 2 giây
                    const featuredSwiperElement = document.querySelector(".featuredProductsSwiper");
                    if (featuredSwiperElement) {
                        const featuredSlides = featuredSwiperElement.querySelectorAll('.swiper-slide');
                        if (featuredSlides.length > 0) {
                            const featuredProductsSwiper = new Swiper(".featuredProductsSwiper", {
                                slidesPerView: 3,
                                spaceBetween: 80,
                                centeredSlides: true,
                                loop: true, // chạy vòng lặp vô hạn
                                loopAdditionalSlides: 5,
                                autoplay: {
                                    delay: 2000, // 2 giây tự động chuyển
                                    disableOnInteraction: false,
                                    pauseOnMouseEnter: true,
                                    stopOnLastSlide: false,
                                },
                                speed: 1200, // Tăng thời gian transition để mượt hơn
                                effect: 'slide',
                                grabCursor: false, // Tắt grab cursor để tránh can thiệp
                                watchOverflow: false,
                                observer: true,
                                observeParents: true,
                                updateOnWindowResize: true,
                                allowTouchMove: false, // Tắt touch để chỉ chạy tự động
                                breakpoints: {
                                    320: {
                                        slidesPerView: 1,
                                        spaceBetween: 30,
                                        allowTouchMove: true, // Bật lại touch trên mobile
                                    },
                                    640: {
                                        slidesPerView: 2,
                                        spaceBetween: 40,
                                        allowTouchMove: true,
                                    },
                                    768: {
                                        slidesPerView: 3,
                                        spaceBetween: 60,
                                        allowTouchMove: false,
                                    },
                                    1024: {
                                        slidesPerView: 3,
                                        spaceBetween: 80,
                                        allowTouchMove: false,
                                    },
                                },
                                on: {
                                    init: function() {
                                        if (this.autoplay && this.autoplay.running === false) {
                                            this.autoplay.start();
                                        }
                                    },
                                    slideChange: function() {
                                        if (this.autoplay && !this.autoplay.running) {
                                            this.autoplay.start();
                                        }
                                    }
                                }
                            });

                            // Đảm bảo autoplay được bật
                            setTimeout(function() {
                                if (featuredProductsSwiper && featuredProductsSwiper.autoplay) {
                                    featuredProductsSwiper.autoplay.start();
                                }
                            }, 500);
                        }
                    }
                } catch (error) {
                    console.error('Error initializing Featured Products Swiper:', error);
                }

                // Back to Top Button
                const backToTopButton = document.getElementById('backToTopButton');
                
                window.addEventListener('scroll', function() {
                    if (window.pageYOffset > 300) {
                        backToTopButton.classList.add('show');
                    } else {
                        backToTopButton.classList.remove('show');
                    }
                });

                backToTopButton.addEventListener('click', function() {
                    window.scrollTo({
                        top: 0,
                        behavior: 'smooth'
                    });
                });
            });
        </script>
        
        <!-- Footer -->
        <jsp:include page="footer.jsp" />
    </body>
</html>
