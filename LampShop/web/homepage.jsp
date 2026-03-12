<%-- Document : homepage Created on : Feb 18, 2025, 12:13:18 AM Author : VuxD4t --%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <%@page contentType="text/html" pageEncoding="UTF-8" %>
                    <!DOCTYPE html>
                    <html lang="vi">

                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title>Mộc Đăng - Đèn trang trí, đèn giấy dó, đèn tranh vẽ thủ công Việt Nam</title>
                        <meta name="description" content="Mộc Đăng – đèn trang trí thủ công: đèn giấy dó, đèn tranh vẽ, đèn vải Linen. Nghệ thuật ánh sáng, bản sắc Việt. Mua đèn trang trí tại Bắc Ninh.">
                        <link rel="icon" href="${pageContext.request.contextPath}/assests/images/favicon.png" type="image/png">

                        <!-- Open Graph (Facebook, Google hiển thị khi search/share) -->
                        <meta property="og:type" content="website">
                        <meta property="og:url" content="https://mocdang.com/">
                        <meta property="og:title" content="Mộc Đăng - Quà tặng văn hóa Việt Nam, đèn trang trí thủ công">
                        <meta property="og:description" content="Mộc Đăng tự hào mang đèn giấy dó, đèn tranh vẽ từ làng nghề Việt Nam. Mỗi sản phẩm là tác phẩm nghệ thuật ánh sáng, đậm bản sắc văn hóa dân tộc.">
                        <meta property="og:image" content="https://mocdang.com/assests/images/favicon.png">
                        <meta property="og:locale" content="vi_VN">

                        <!-- Dữ liệu có cấu trúc (Google có thể hiển thị logo, tên) -->
                        <script type="application/ld+json">
                        {
                            "@context": "https://schema.org",
                            "@type": "Organization",
                            "name": "Mộc Đăng",
                            "url": "https://mocdang.com",
                            "logo": "https://mocdang.com/assests/images/favicon.png",
                            "description": "Đèn trang trí thủ công Việt Nam: đèn giấy dó, đèn tranh vẽ, đèn vải Linen. Nghệ thuật ánh sáng, bản sắc Việt."
                        }
                        </script>

                        <!-- External CSS -->
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
                            rel="stylesheet">
                        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
                            rel="stylesheet">
                        <link rel="stylesheet"
                            href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.css">
                        <!-- Google Fonts: Playfair Display & Poppins -->
                        <link
                            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400&display=swap"
                            rel="stylesheet">

                        <!-- Custom CSS -->
                        <style>
                            /* ============================================
               GLOBAL VARIABLES & BASE STYLES
               ============================================ */
                            :root {
                                --primary-color: #1a1a1a;
                                --secondary-color: #2d2d2d;
                                --accent-color: #d4a373;
                                --accent-hover: #c08d5c;
                                --text-color: #333;
                                --text-light: #666;
                                --text-lighter: #999;
                                --light-background: #f8f8f8;
                                --white: #ffffff;
                                --font-serif: 'Playfair Display', serif;
                                --font-sans: 'Poppins', sans-serif;
                                --transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
                                --shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.06);
                                --shadow-md: 0 4px 16px rgba(0, 0, 0, 0.08);
                                --shadow-lg: 0 8px 32px rgba(0, 0, 0, 0.12);
                            }

                            * {
                                margin: 0;
                                padding: 0;
                                box-sizing: border-box;
                            }

                            body {
                                font-family: var(--font-sans);
                                background-color: var(--white);
                                color: var(--text-color);
                                line-height: 1.7;
                                overflow-x: hidden;
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
               HERO SWIPER SECTION - ENHANCED
               ============================================ */
                            .hero-project {
                                padding: 0;
                                margin: 0;
                                width: 100%;
                                position: relative;
                                overflow: hidden;
                            }

                            .heroSwiper {
                                width: 100%;
                                height: 90vh;
                                min-height: 650px;
                            }

                            .heroSwiper .swiper-slide {
                                position: relative;
                                overflow: hidden;
                                width: 100%;
                                height: 100%;
                                background-color: #000;
                            }

                            .heroSwiper .swiper-slide img {
                                width: 100%;
                                height: 100%;
                                object-fit: cover;
                                object-position: center;
                                display: block;
                                opacity: 0.85;
                                transition: transform 8s ease-out;
                            }

                            .heroSwiper .swiper-slide-active img {
                                transform: scale(1.05);
                            }

                            .hero-overlay {
                                position: absolute;
                                top: 0;
                                left: 0;
                                width: 100%;
                                height: 100%;
                                background: linear-gradient(135deg, rgba(0, 0, 0, 0.65) 0%, rgba(0, 0, 0, 0.25) 60%, rgba(0, 0, 0, 0) 100%);
                                z-index: 1;
                            }

                            .hero-content {
                                position: absolute;
                                top: 50%;
                                left: 8%;
                                transform: translateY(-50%);
                                z-index: 10;
                                max-width: 700px;
                                padding: 50px;
                                color: white;
                                opacity: 0;
                                animation: fadeUp 1.2s ease-out 0.3s forwards;
                            }

                            @keyframes fadeUp {
                                from {
                                    opacity: 0;
                                    transform: translateY(-45%);
                                }

                                to {
                                    opacity: 1;
                                    transform: translateY(-50%);
                                }
                            }

                            .hero-content::before {
                                content: '';
                                position: absolute;
                                left: 0;
                                top: 0;
                                width: 4px;
                                height: 80px;
                                background: var(--accent-color);
                                border-radius: 2px;
                            }

                            .hero-content h2 {
                                font-family: var(--font-serif);
                                font-size: 4rem;
                                font-weight: 700;
                                margin-bottom: 30px;
                                text-transform: uppercase;
                                letter-spacing: 3px;
                                line-height: 1.1;
                                text-shadow: 0 4px 20px rgba(0, 0, 0, 0.4);
                                padding-left: 20px;
                            }

                            .hero-content p {
                                font-size: 1.15rem;
                                line-height: 1.9;
                                margin-bottom: 45px;
                                color: rgba(255, 255, 255, 0.95);
                                padding-left: 20px;
                                font-weight: 300;
                            }

                            .hero-content .btn-view {
                                background: var(--accent-color);
                                color: white;
                                padding: 18px 45px;
                                border: 2px solid var(--accent-color);
                                border-radius: 50px;
                                font-weight: 600;
                                text-decoration: none;
                                display: inline-block;
                                transition: var(--transition);
                                text-transform: uppercase;
                                letter-spacing: 2px;
                                font-size: 0.9rem;
                                box-shadow: 0 8px 25px rgba(212, 163, 115, 0.3);
                                margin-left: 20px;
                            }

                            .hero-content .btn-view:hover {
                                background: transparent;
                                color: white;
                                border-color: white;
                                transform: translateY(-3px);
                                box-shadow: 0 12px 35px rgba(255, 255, 255, 0.2);
                            }

                            .heroSwiper .swiper-button-next,
                            .heroSwiper .swiper-button-prev {
                                color: white;
                                width: 55px;
                                height: 55px;
                                background: rgba(255, 255, 255, 0.12);
                                backdrop-filter: blur(10px);
                                border-radius: 50%;
                                transition: var(--transition);
                                border: 1px solid rgba(255, 255, 255, 0.2);
                            }

                            .heroSwiper .swiper-button-next:hover,
                            .heroSwiper .swiper-button-prev:hover {
                                background: var(--accent-color);
                                color: white;
                                border-color: var(--accent-color);
                                transform: scale(1.1);
                            }

                            .heroSwiper .swiper-button-next::after,
                            .heroSwiper .swiper-button-prev::after {
                                font-size: 1.3rem;
                                font-weight: bold;
                            }

                            .heroSwiper .swiper-pagination-bullet {
                                width: 10px;
                                height: 10px;
                                background: white;
                                opacity: 0.4;
                                transition: var(--transition);
                            }

                            .heroSwiper .swiper-pagination-bullet-active {
                                opacity: 1;
                                background: var(--accent-color);
                                width: 35px;
                                border-radius: 5px;
                            }

                            /* ============================================
               FEATURED PRODUCTS SECTION - ENHANCED
               ============================================ */
                            .featured-products-section {
                                width: 100%;
                                padding: 100px 0;
                                background: linear-gradient(to bottom, #fafafa 0%, #ffffff 100%);
                                position: relative;
                            }

                            .featured-products-container {
                                max-width: 1400px;
                                margin: 0 auto;
                                padding: 0 2rem;
                                position: relative;
                            }

                            .section-title {
                                text-align: center;
                                font-family: var(--font-serif);
                                font-size: 3.2rem;
                                font-weight: 700;
                                color: var(--primary-color);
                                margin-bottom: 20px;
                                letter-spacing: 1px;
                                position: relative;
                            }

                            .section-subtitle {
                                text-align: center;
                                font-size: 1.1rem;
                                color: #444;
                                max-width: 700px;
                                margin: 0 auto 60px;
                                font-weight: 400;
                            }

                            .section-title::after {
                                content: '';
                                display: block;
                                width: 80px;
                                height: 4px;
                                background: var(--accent-color);
                                margin: 25px auto 0;
                                border-radius: 2px;
                            }

                            .featured-products-scroll-wrapper {
                                position: relative;
                                width: 100%;
                                padding: 0 50px;
                            }

                            .featured-products-grid {
                                display: flex;
                                gap: 35px;
                                overflow-x: auto;
                                scroll-behavior: smooth;
                                padding: 30px 10px;
                                scrollbar-width: none;
                                -ms-overflow-style: none;
                            }

                            .featured-products-grid::-webkit-scrollbar {
                                display: none;
                            }

                            .featured-product-card {
                                background: white;
                                border-radius: 8px;
                                overflow: hidden;
                                box-shadow: var(--shadow-sm);
                                transition: var(--transition);
                                display: flex;
                                flex-direction: column;
                                cursor: pointer;
                                flex-shrink: 0;
                                width: 340px;
                                position: relative;
                                border: 1px solid #f0f0f0;
                            }

                            .featured-product-card:hover {
                                box-shadow: var(--shadow-lg);
                                transform: translateY(-8px);
                            }

                            .featured-product-image-wrapper {
                                width: 100%;
                                height: 420px;
                                display: flex;
                                align-items: center;
                                justify-content: center;
                                background: #fafafa;
                                position: relative;
                                overflow: hidden;
                            }

                            .featured-product-image {
                                max-width: 100%;
                                max-height: 100%;
                                width: 100%;
                                height: 100%;
                                object-fit: cover;
                                transition: transform 0.7s cubic-bezier(0.25, 0.46, 0.45, 0.94);
                            }

                            .featured-product-overlay {
                                position: absolute;
                                top: 0;
                                left: 0;
                                width: 100%;
                                height: 100%;
                                background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.6) 100%);
                                opacity: 0;
                                transition: var(--transition);
                                display: flex;
                                align-items: center;
                                justify-content: center;
                            }

                            .btn-quick-view {
                                background: white;
                                color: var(--primary-color);
                                padding: 14px 32px;
                                font-family: var(--font-sans);
                                font-size: 0.9rem;
                                font-weight: 600;
                                text-transform: uppercase;
                                letter-spacing: 1.5px;
                                transform: translateY(25px);
                                opacity: 0;
                                transition: var(--transition);
                                border: none;
                                cursor: pointer;
                                border-radius: 50px;
                                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
                            }

                            .btn-quick-view:hover {
                                background: var(--accent-color);
                                color: white;
                                transform: translateY(0) scale(1.05);
                            }

                            .featured-product-card:hover .featured-product-overlay {
                                opacity: 1;
                            }

                            .featured-product-card:hover .btn-quick-view {
                                transform: translateY(0);
                                opacity: 1;
                            }

                            .featured-product-card:hover .featured-product-image {
                                transform: scale(1.1);
                            }

                            .featured-product-label {
                                padding: 22px 20px;
                                text-align: center;
                                font-family: var(--font-serif);
                                font-size: 1.3rem;
                                font-weight: 600;
                                color: var(--primary-color);
                                text-transform: capitalize;
                                letter-spacing: 0.5px;
                                background: white;
                                transition: var(--transition);
                            }

                            .featured-product-card:hover .featured-product-label {
                                color: var(--accent-color);
                            }

                            .scroll-arrow {
                                position: absolute;
                                top: 45%;
                                transform: translateY(-50%);
                                background: white;
                                color: var(--primary-color);
                                border: 2px solid #e0e0e0;
                                width: 50px;
                                height: 50px;
                                border-radius: 50%;
                                cursor: pointer;
                                display: flex;
                                align-items: center;
                                justify-content: center;
                                font-size: 1.4rem;
                                transition: var(--transition);
                                z-index: 10;
                                box-shadow: var(--shadow-md);
                            }

                            .scroll-arrow:hover {
                                background: var(--accent-color);
                                color: white;
                                border-color: var(--accent-color);
                                transform: translateY(-50%) scale(1.1);
                            }

                            .scroll-arrow.left {
                                left: 0;
                            }

                            .scroll-arrow.right {
                                right: 0;
                            }

                            /* ============================================
               OUR PROCESS SECTION - ENHANCED
               ============================================ */
                            .our-process {
                                padding: 130px 0;
                                background: white;
                            }

                            .our-process .container {
                                max-width: 1400px;
                                margin: 0 auto;
                                padding: 0 4rem;
                            }

                            .process-row {
                                display: flex;
                                align-items: stretch;
                                margin-bottom: 100px;
                                gap: 0;
                                min-height: 550px;
                                box-shadow: var(--shadow-md);
                                border-radius: 12px;
                                overflow: hidden;
                                transition: var(--transition);
                            }

                            .process-row:hover {
                                box-shadow: var(--shadow-lg);
                                transform: translateY(-5px);
                            }

                            .process-row:last-child {
                                margin-bottom: 0;
                            }

                            .process-row.reverse {
                                flex-direction: row-reverse;
                            }

                            .process-image {
                                flex: 1;
                                height: 550px;
                                overflow: hidden;
                                position: relative;
                            }

                            .process-image::after {
                                content: '';
                                position: absolute;
                                top: 0;
                                left: 0;
                                right: 0;
                                bottom: 0;
                                background: linear-gradient(135deg, rgba(212, 163, 115, 0.1) 0%, transparent 100%);
                                opacity: 0;
                                transition: var(--transition);
                            }

                            .process-row:hover .process-image::after {
                                opacity: 1;
                            }

                            .process-image img {
                                width: 100%;
                                height: 100%;
                                object-fit: cover;
                                transition: transform 0.6s ease;
                            }

                            .process-row:hover .process-image img {
                                transform: scale(1.08);
                            }

                            .process-content {
                                flex: 1;
                                padding: 90px 70px;
                                background: white;
                                display: flex;
                                flex-direction: column;
                                justify-content: center;
                            }

                            .process-label {
                                font-size: 0.8rem;
                                color: var(--accent-color);
                                text-transform: uppercase;
                                letter-spacing: 3px;
                                margin-bottom: 20px;
                                font-weight: 600;
                                display: inline-block;
                            }

                            .process-content h3 {
                                font-family: var(--font-serif);
                                font-size: 2.5rem;
                                font-weight: 700;
                                color: var(--primary-color);
                                margin-bottom: 30px;
                                text-transform: uppercase;
                                letter-spacing: 1px;
                                position: relative;
                                padding-bottom: 25px;
                                line-height: 1.2;
                            }

                            .process-content h3::after {
                                content: '';
                                position: absolute;
                                bottom: 0;
                                left: 0;
                                width: 80px;
                                height: 4px;
                                background: var(--accent-color);
                                border-radius: 2px;
                            }

                            .process-content p {
                                color: #333;
                                line-height: 2;
                                margin-bottom: 40px;
                                font-size: 1.05rem;
                                font-weight: 400;
                            }

                            .process-content .btn-read-more {
                                background: var(--primary-color);
                                color: white;
                                padding: 16px 40px;
                                border: 2px solid var(--primary-color);
                                text-decoration: none;
                                display: inline-block;
                                transition: var(--transition);
                                font-weight: 500;
                                border-radius: 50px;
                                text-transform: uppercase;
                                letter-spacing: 1.5px;
                                font-size: 0.85rem;
                                align-self: flex-start;
                            }

                            .process-content .btn-read-more:hover {
                                background: transparent;
                                color: var(--primary-color);
                                transform: translateX(5px);
                            }

                            /* ============================================
               SECTION TITLES & DESCRIPTIONS - ENHANCED
               ============================================ */
                            .section-title-center {
                                font-family: var(--font-serif);
                                font-size: 3.5rem;
                                font-weight: 700;
                                color: var(--primary-color);
                                margin-bottom: 20px;
                                text-align: center;
                                position: relative;
                            }

                            .section-description {
                                color: #444;
                                font-size: 1.15rem;
                                font-weight: 400;
                                max-width: 850px;
                                margin: 0 auto 50px;
                                text-align: center;
                                line-height: 2;
                                padding: 0 20px;
                            }

                            .section-divider {
                                max-width: 80px;
                                margin: 0 auto 70px;
                                border: none;
                                border-top: 4px solid var(--accent-color);
                                height: 0;
                                border-radius: 2px;
                            }

                            /* ============================================
               PRODUCTS SECTION - ENHANCED
               ============================================ */
                            .products-main-section {
                                padding: 130px 0;
                                background: linear-gradient(to bottom, #ffffff 0%, #fafafa 100%);
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
                                padding: 50px 0;
                            }

                            .products-grid {
                                display: grid;
                                grid-template-columns: repeat(3, 1fr);
                                gap: 45px;
                                width: 100%;
                            }

                            .product-showcase-card {
                                background: white;
                                border-radius: 12px;
                                overflow: hidden;
                                box-shadow: var(--shadow-sm);
                                transition: var(--transition);
                                display: flex;
                                flex-direction: column;
                                border: 1px solid #f5f5f5;
                                height: 100%;
                            }

                            .product-showcase-card:hover {
                                box-shadow: var(--shadow-lg);
                                transform: translateY(-10px);
                            }

                            .product-showcase-card .product-image {
                                width: 100%;
                                height: 480px;
                                object-fit: cover;
                                transition: transform 0.6s ease;
                                display: block;
                            }

                            .product-showcase-card:hover .product-image {
                                transform: scale(1.08);
                            }

                            .product-image-placeholder {
                                width: 100%;
                                height: 480px;
                                background: linear-gradient(135deg, #f5f5f5 0%, #e0e0e0 100%);
                                display: flex;
                                align-items: center;
                                justify-content: center;
                            }

                            .product-title-wrapper {
                                padding: 30px 30px 20px;
                                margin: 0;
                                text-align: center;
                            }

                            .product-title-main {
                                font-size: 0.75rem;
                                font-weight: 600;
                                color: var(--accent-color);
                                margin: 0 0 12px 0;
                                line-height: 1.3;
                                text-transform: uppercase;
                                letter-spacing: 2.5px;
                            }

                            .product-title-sub {
                                font-family: var(--font-serif);
                                font-size: 1.6rem;
                                font-weight: 600;
                                color: var(--primary-color);
                                margin: 0;
                                line-height: 1.3;
                                text-transform: capitalize;
                                letter-spacing: 0.5px;
                            }



                            .product-showcase-card .btn-detail {
                                background: transparent;
                                color: var(--primary-color);
                                border: none;
                                padding: 0;
                                margin: auto auto 35px;
                                text-decoration: none;
                                font-weight: 600;
                                display: inline-flex;
                                align-items: center;
                                gap: 8px;
                                transition: var(--transition);
                                font-size: 0.85rem;
                                width: auto;
                                text-transform: uppercase;
                                letter-spacing: 1.5px;
                                align-self: center;
                            }

                            .product-showcase-card .btn-detail:hover {
                                color: var(--accent-color);
                                gap: 12px;
                            }

                            .product-showcase-card .btn-detail::after {
                                content: '→';
                                font-size: 1.2rem;
                                transition: var(--transition);
                            }

                            /* ============================================
               NEWS SECTION - ENHANCED
               ============================================ */
                            .news-section {
                                background: white;
                                padding: 120px 0;
                            }

                            .news-section .section-title-center {
                                font-size: 3.2rem;
                                margin-bottom: 70px;
                            }

                            .post-card {
                                border: none;
                                border-radius: 12px;
                                overflow: hidden;
                                box-shadow: var(--shadow-sm);
                                transition: var(--transition);
                                display: flex;
                                flex-direction: column;
                                background: white;
                                height: 100%;
                                border: 1px solid #f5f5f5;
                            }

                            .post-card:hover {
                                transform: translateY(-8px);
                                box-shadow: var(--shadow-lg);
                            }

                            .post-card .thumbnail-img {
                                height: 320px;
                                object-fit: cover;
                                width: 100%;
                                transition: transform 0.6s ease;
                            }

                            .post-card:hover .thumbnail-img {
                                transform: scale(1.05);
                            }

                            .post-card .card-body {
                                padding: 35px;
                                flex-grow: 1;
                                display: flex;
                                flex-direction: column;
                            }

                            .card-title {
                                font-family: var(--font-serif);
                                font-size: 1.5rem;
                                font-weight: 600;
                                color: var(--primary-color);
                                margin-bottom: 20px;
                                line-height: 1.4;
                                transition: var(--transition);
                            }

                            .post-card:hover .card-title {
                                color: var(--accent-color);
                            }

                            .post-summary {
                                color: #444;
                                font-size: 1rem;
                                line-height: 1.9;
                                margin-bottom: 30px;
                                flex-grow: 1;
                                font-weight: 400;
                            }

                            .post-card .btn-read-more {
                                background: var(--primary-color);
                                color: white;
                                padding: 16px 40px;
                                border: 2px solid var(--primary-color);
                                text-decoration: none;
                                display: inline-block;
                                transition: var(--transition);
                                font-weight: 500;
                                text-transform: uppercase;
                                letter-spacing: 1.5px;
                                font-size: 0.85rem;
                                align-self: flex-start;
                                border-radius: 50px;
                            }

                            .post-card .btn-read-more:hover {
                                background: transparent;
                                color: var(--primary-color);
                                transform: translateX(5px);
                            }

                            /* ============================================
               SPEED DIAL FAB - COMBINED ACTIONS
               ============================================ */
                            /* Ẩn các nút riêng lẻ trên homepage */
                            .ai-chat-button,
                            .md-chatbot-toggle { display: none !important; }

                            /* Đẩy panel/widget lên cao hơn để không che speed dial */
                            .ai-chat-widget,
                            .md-chatbot-panel { bottom: 80px !important; right: 20px !important; }

                            .speed-dial {
                                position: fixed;
                                bottom: 20px;
                                right: 20px;
                                z-index: 1200;
                                display: flex;
                                flex-direction: column;
                                align-items: flex-end;
                                gap: 10px;
                            }

                            .speed-dial-main {
                                width: 54px;
                                height: 54px;
                                border-radius: 50%;
                                background: #2c3e50;
                                color: #fff;
                                display: flex;
                                align-items: center;
                                justify-content: center;
                                cursor: pointer;
                                box-shadow: 0 6px 20px rgba(0,0,0,0.3);
                                transition: transform 0.3s ease, background 0.3s ease;
                                font-size: 20px;
                            }

                            .speed-dial-main:hover { background: #1a252f; }
                            .speed-dial-main.open { transform: rotate(45deg); }

                            .speed-dial-items {
                                display: flex;
                                flex-direction: column;
                                align-items: flex-end;
                                gap: 10px;
                                opacity: 0;
                                visibility: hidden;
                                transform: translateY(10px);
                                transition: all 0.25s ease;
                            }

                            .speed-dial-items.open {
                                opacity: 1;
                                visibility: visible;
                                transform: translateY(0);
                            }

                            .speed-dial-item {
                                display: flex;
                                align-items: center;
                                gap: 8px;
                                height: 40px;
                                padding: 0 16px;
                                border-radius: 999px;
                                color: #fff;
                                cursor: pointer;
                                font-size: 13px;
                                font-weight: 600;
                                white-space: nowrap;
                                box-shadow: 0 4px 14px rgba(0,0,0,0.2);
                                transition: transform 0.2s ease;
                            }

                            .speed-dial-item:hover { transform: scale(1.06); }
                            #sdScrollTop { background: #8e44ad; }
                            #sdSupport   { background: #27ae60; }
                            #sdAIBot     { background: #34495e; }

                            /* ============================================
               RESPONSIVE DESIGN - ENHANCED
               ============================================ */
                            @media (max-width: 1200px) {
                                .our-process .container {
                                    padding: 0 2rem;
                                }

                                .products-grid {
                                    grid-template-columns: repeat(2, 1fr);
                                }
                            }

                            @media (max-width: 768px) {
                                .heroSwiper {
                                    height: 70vh;
                                    min-height: 500px;
                                }

                                .hero-content {
                                    padding: 30px;
                                    max-width: 90%;
                                    left: 5%;
                                }

                                .hero-content h2 {
                                    font-size: 2.5rem;
                                }

                                .hero-content p {
                                    font-size: 1rem;
                                }

                                .our-process {
                                    padding: 80px 0;
                                }

                                .process-row {
                                    flex-direction: column !important;
                                    margin-bottom: 60px;
                                    min-height: auto;
                                }

                                .process-image {
                                    height: 350px;
                                }

                                .process-content {
                                    padding: 40px 30px;
                                }

                                .process-content h3 {
                                    font-size: 2rem;
                                }

                                .section-title-center {
                                    font-size: 2.5rem;
                                }

                                .section-title {
                                    font-size: 2.5rem;
                                }

                                .products-grid {
                                    grid-template-columns: 1fr;
                                    gap: 35px;
                                }

                                .featured-products-section {
                                    padding: 80px 0;
                                }

                                .news-section {
                                    padding: 80px 0;
                                }

                                .post-card .thumbnail-img {
                                    height: 280px;
                                }

                                .section-description {
                                    font-size: 1rem;
                                }

                                .product-showcase-card .product-description {
                                    font-size: 0.95rem;
                                    margin: 0 auto 20px;
                                    padding: 0 30px;
                                    min-height: 90px;
                                }
                            }

                            @media (max-width: 576px) {
                                .hero-content h2 {
                                    font-size: 2rem;
                                }

                                .section-title-center,
                                .section-title {
                                    font-size: 2rem;
                                }

                                .process-content h3 {
                                    font-size: 1.6rem;
                                }

                                .section-description {
                                    font-size: 0.95rem;
                                }

                                .product-title-wrapper {
                                    padding: 25px 20px 15px;
                                }

                                .product-showcase-card .product-description {
                                    font-size: 0.92rem;
                                    margin: 0 auto 20px;
                                    padding: 0 25px;
                                    min-height: 85px;
                                    line-height: 1.75;
                                }
                            }

                            /* ============================================
               ANIMATIONS & TRANSITIONS
               ============================================ */
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

                            .animate-on-scroll {
                                animation: fadeInUp 0.8s ease-out;
                            }
                        </style>
                    </head>

                    <body>
                        <!-- Header -->
                        <jsp:include page="header.jsp" />

                        <!-- Hero Project Section -->
                        <div class="hero-project">
                            <div class="swiper heroSwiper">
                                <div class="swiper-wrapper">
                                    <c:choose>
                                        <c:when test="${not empty sliders and fn:length(sliders) > 0}">
                                            <c:forEach items="${sliders}" var="slide">
                                                <div class="swiper-slide">
                                                    <img src="${slide.image_url}" alt="${slide.title}"
                                                        onerror="this.src='https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=1920'">
                                                    <div class="hero-overlay"></div>
                                                    <div class="hero-content">
                                                        <h2>${slide.title}</h2>
                                                        <p>${slide.notes}</p>
                                                        <c:if test="${not empty slide.link}">
                                                            <a href="${slide.link}" class="btn-view">Khám Phá Ngay</a>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <!-- Fallback Slide 1 -->
                                            <div class="swiper-slide">
                                                <img src="https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=1920"
                                                    alt="Luxury Hotel Lighting">
                                                <div class="hero-overlay"></div>
                                                <div class="hero-content">
                                                    <h2>Tinh Hoa Ánh Sáng Việt</h2>
                                                    <p>Khách sạn Sunbay Park - Kiệt tác 5 sao bên bờ biển. Chúng tôi tự
                                                        hào mang đến giải pháp chiếu sáng nghệ thuật, kết hợp giữa
                                                        truyền thống và hiện đại, tôn vinh vẻ đẹp sang trọng của không
                                                        gian.</p>
                                                    <a href="listproduct" class="btn-view">Xem Dự Án</a>
                                                </div>
                                            </div>
                                            <!-- Fallback Slide 2 -->
                                            <div class="swiper-slide">
                                                <img src="https://images.unsplash.com/photo-1513506003011-3b0908d656eb?w=1920"
                                                    alt="Modern Interior">
                                                <div class="hero-overlay"></div>
                                                <div class="hero-content">
                                                    <h2>Thiết Kế Độc Bản</h2>
                                                    <p>Mỗi sản phẩm là một tác phẩm nghệ thuật thủ công, được chế tác tỉ
                                                        mỉ từ những người thợ lành nghề nhất. Mang đẳng cấp quốc tế vào
                                                        ngôi nhà của bạn.</p>
                                                    <a href="listproduct" class="btn-view">Bộ Sưu Tập Mới</a>
                                                </div>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>

                        <!-- Featured Products Carousel Section -->
                        <section class="featured-products-section">
                            <div class="featured-products-container">
                                <h2 class="section-title">Sản Phẩm Nổi Bật</h2>
                                <p class="section-subtitle">Khám phá bộ sưu tập đèn trang trí đẳng cấp, được chế tác thủ
                                    công với sự tỉ mỉ từng chi tiết</p>
                                <div class="featured-products-scroll-wrapper">
                                    <button class="scroll-arrow left" id="scrollLeft">‹</button>
                                    <button class="scroll-arrow right" id="scrollRight">›</button>
                                    <div class="featured-products-grid" id="featuredProductsGrid">
                                        <c:forEach items="${level1Categories}" var="category">
                                            <c:set var="categoryProducts" value="${productsByCategory[category.id]}" />
                                            <c:if test="${not empty categoryProducts}">
                                                <c:forEach items="${categoryProducts}" var="product">
                                                    <div class="featured-product-card">
                                                        <div class="featured-product-image-wrapper">
                                                            <img src="${product.thumbnail}"
                                                                class="featured-product-image" alt="${product.title}"
                                                                onerror="this.style.display='none';">
                                                            <div class="featured-product-overlay">
                                                                <a href="productdetail?id=${product.id}">
                                                                    <button class="btn-quick-view">Xem Chi Tiết</button>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="featured-product-label">${product.title}</div>
                                                    </div>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${not empty featuredProducts}">
                                            <c:forEach items="${featuredProducts}" var="product">
                                                <div class="featured-product-card">
                                                    <div class="featured-product-image-wrapper">
                                                        <img src="${product.thumbnail}" class="featured-product-image"
                                                            alt="${product.title}" onerror="this.style.display='none';">
                                                        <div class="featured-product-overlay">
                                                            <a href="productdetail?id=${product.id}">
                                                                <button class="btn-quick-view">Xem Chi Tiết</button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="featured-product-label">${product.title}</div>
                                                </div>
                                            </c:forEach>
                                        </c:if>
                                        <c:if
                                            test="${empty level1Categories or (empty productsByCategory and empty featuredProducts)}">
                                            <div class="featured-product-card">
                                                <div class="featured-product-image-wrapper">
                                                    <div class="featured-product-placeholder"></div>
                                                    <div class="featured-product-overlay">
                                                        <a href="listproduct">
                                                            <button class="btn-quick-view">Xem Chi Tiết</button>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="featured-product-label">Đèn sàn – Nón Lá VN</div>
                                            </div>
                                            <div class="featured-product-card">
                                                <div class="featured-product-image-wrapper">
                                                    <div class="featured-product-placeholder"></div>
                                                    <div class="featured-product-overlay">
                                                        <a href="listproduct">
                                                            <button class="btn-quick-view">Xem Chi Tiết</button>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="featured-product-label">Đèn sàn – Winter Willing</div>
                                            </div>
                                            <div class="featured-product-card">
                                                <div class="featured-product-image-wrapper">
                                                    <div class="featured-product-placeholder"></div>
                                                    <div class="featured-product-overlay">
                                                        <a href="listproduct">
                                                            <button class="btn-quick-view">Xem Chi Tiết</button>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="featured-product-label">Đèn Sàn – Đá Marble</div>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <!-- Our Process Section -->
                        <section class="our-process">
                            <div class="container">
                                <!-- Process 1 -->
                                <div class="process-row">
                                    <div class="process-image">
                                        <img src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=800"
                                            alt="Sản xuất">
                                    </div>
                                    <div class="process-content">
                                        <div class="process-label">Quy Trình</div>
                                        <h3>Sản Xuất Theo Đơn Đặt Hàng</h3>
                                        <p>Quá trình tạo ra mỗi sản phẩm là một quá trình kỳ công. Từ những bản thiết kế
                                            của bạn, đội ngũ kỹ sư của chúng tôi sẽ phân tích và đánh giá để đưa ra
                                            những phương án gia công và chọn lựa nguyên liệu phù hợp, kiểm tra chất
                                            lượng nghiêm ngặt từng khâu của quá trình sản xuất để mọi sản phẩm đảm bảo
                                            mọi chi tiết hoàn hảo trước khi đến tay của bạn.</p>
                                        <a href="#" class="btn-read-more">Xem Thêm</a>
                                    </div>
                                </div>

                                <!-- Process 2 -->
                                <div class="process-row reverse">
                                    <div class="process-image">
                                        <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800"
                                            alt="Custom Design">
                                    </div>
                                    <div class="process-content">
                                        <div class="process-label">Thiết Kế</div>
                                        <h3>Tùy Chỉnh Theo Yêu Cầu</h3>
                                        <p>Không gian của bạn là một tập hợp của những ý tưởng và cá nhân riêng biệt. Đó
                                            là lý do tại sao chúng tôi tự hào khi có khả năng tùy chỉnh sản phẩm theo
                                            mong muốn của bạn. Từ việc chọn màu sắc, kích thước, kiểu dáng đến việc thêm
                                            những chi tiết riêng biệt, chúng tôi luôn đảm bảo sản phẩm hoàn toàn phản
                                            ánh cá tính của bạn.</p>
                                        <a href="#" class="btn-read-more">Xem Thêm</a>
                                    </div>
                                </div>

                                <!-- Process 3 -->
                                <div class="process-row">
                                    <div class="process-image">
                                        <img src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=800"
                                            alt="Bộ sưu tập">
                                    </div>
                                    <div class="process-content">
                                        <div class="process-label">Bộ Sưu Tập</div>
                                        <h3>Theo Mùa & xu Hướng</h3>
                                        <p>Chúng tôi luôn tiếp tục nắm bắt các xu hướng mới nhất trong lĩnh vực đèn
                                            trang trí. Từ phong cách cổ điển đến hiện đại, từ dáng vẻ tối giản đến táo
                                            bạo,… những sản phẩm mới được chúng tôi cho ra mắt hàng năm với những thiết
                                            kế độc đáo và đẹp mắt, có đầy đủ những nguyên liệu khác nhau từ kim loại,
                                            gốm sứ, vải cho đến những dòng sản phẩm từ mây tre tự nhiên và các loại
                                            nguyên liệu độc đáo khác.</p>
                                        <a href="listproduct" class="btn-read-more">Xem Bộ Sưu Tập</a>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <!-- Products Section -->
                        <section class="products-main-section">
                            <div class="container">
                                <div class="text-center mb-5">
                                    <h2 class="section-title-center">Sản Phẩm Của Chúng Tôi</h2>
                                    <p class="section-description">Mỗi chiếc đèn của chúng tôi đều mang một câu chuyện
                                        riêng; từng chi tiết trên sản phẩm được chế tác tỉ mỉ, đảm bảo mỗi đường kim mũi
                                        chỉ đều góp phần tạo nên một sản phẩm có giá trị bền vững.</p>
                                    <hr class="section-divider">
                                </div>

                                <div class="products-grid-container">
                                    <div class="products-grid">
                                        <c:set var="productCount" value="0" />
                                        <c:forEach items="${level1Categories}" var="category">
                                            <c:if test="${productCount < 3}">
                                                <c:set var="categoryProducts"
                                                    value="${productsByCategory[category.id]}" />
                                                <c:if test="${not empty categoryProducts}">
                                                    <c:forEach items="${categoryProducts}" var="product">
                                                        <c:if test="${productCount < 3}">
                                                            <div class="product-showcase-card featured-product-card">
                                                                <div class="featured-product-image-wrapper"
                                                                    style="height: 480px;">
                                                                    <img src="${product.thumbnail}"
                                                                        class="featured-product-image"
                                                                        alt="${product.title}"
                                                                        onerror="this.src='https://via.placeholder.com/400x400?text=No+Image'">
                                                                    <div class="featured-product-overlay">
                                                                        <a href="productdetail?id=${product.id}">
                                                                            <button class="btn-quick-view">Xem Chi
                                                                                Tiết</button>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="product-title-wrapper">
                                                                    <h3 class="product-title-main">
                                                                        ${fn:toUpperCase(category.name)}</h3>
                                                                    <h4 class="product-title-sub">${product.title}</h4>
                                                                </div>

                                                                <a href="productdetail?id=${product.id}"
                                                                    class="btn-detail">Xem Chi Tiết</a>
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
                                                    <div class="product-showcase-card featured-product-card">
                                                        <div class="featured-product-image-wrapper"
                                                            style="height: 480px;">
                                                            <img src="${product.thumbnail}"
                                                                class="featured-product-image" alt="${product.title}"
                                                                onerror="this.src='https://via.placeholder.com/400x400?text=No+Image'">
                                                            <div class="featured-product-overlay">
                                                                <a href="productdetail?id=${product.id}">
                                                                    <button class="btn-quick-view">Xem Chi Tiết</button>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="product-title-wrapper">
                                                            <h3 class="product-title-main">ĐÈN BÀN</h3>
                                                            <h4 class="product-title-sub">${product.title}</h4>
                                                        </div>

                                                        <a href="productdetail?id=${product.id}" class="btn-detail">Xem
                                                            Chi Tiết</a>
                                                    </div>
                                                    <c:set var="productCount" value="${productCount + 1}" />
                                                </c:if>
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
                                    <h2 class="section-title-center">Tin Tức & Cảm Hứng</h2>
                                    <p class="section-subtitle">Khám phá những xu hướng mới nhất và câu chuyện đằng sau
                                        mỗi thiết kế</p>
                                </div>
                                <div class="row g-4">
                                    <c:forEach var="post" items="${latestPosts}">
                                        <div class="col-md-4">
                                            <div class="card post-card h-100">
                                                <img src="${post.getThumbnail()}" class="thumbnail-img"
                                                    alt="${post.getTitle()}">
                                                <div class="card-body">
                                                    <h5 class="card-title">${post.getTitle()}</h5>
                                                    <p class="post-summary">
                                                        <c:choose>
                                                            <c:when test="${not empty post.getSummary()}">
                                                                ${fn:length(post.getSummary()) > 120 ?
                                                                fn:substring(post.getSummary(), 0, 120) :
                                                                post.getSummary()}${fn:length(post.getSummary()) > 120 ?
                                                                '...' : ''}
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${fn:length(post.getContent()) > 120 ?
                                                                fn:substring(post.getContent(), 0, 120) :
                                                                post.getContent()}${fn:length(post.getContent()) > 120 ?
                                                                '...' : ''}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </p>
                                                    <a href="${pageContext.request.contextPath}/post?id=${post.getId()}"
                                                        class="btn-read-more">Đọc Thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </section>

                        <!-- Chat Widget -->
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

                        <!-- External Scripts -->
                        <script
                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.js"></script>

                        <!-- Custom Scripts -->
                        <script>
                            // Hero Swiper
                            document.addEventListener('DOMContentLoaded', function () {
                                if (typeof Swiper === 'undefined') {
                                    console.error('Swiper library not loaded');
                                    return;
                                }

                                try {
                                    const heroSwiperElement = document.querySelector(".heroSwiper");
                                    if (heroSwiperElement) {
                                        new Swiper(".heroSwiper", {
                                            spaceBetween: 0,
                                            centeredSlides: true,
                                            loop: true,
                                            speed: 1200,
                                            effect: 'fade',
                                            fadeEffect: {
                                                crossFade: true
                                            },
                                            autoplay: {
                                                delay: 6000,
                                                disableOnInteraction: false,
                                            },
                                            pagination: {
                                                el: ".swiper-pagination",
                                                clickable: true,
                                            },
                                            navigation: {
                                                nextEl: ".swiper-button-next",
                                                prevEl: ".swiper-button-prev",
                                            },
                                        });
                                    }
                                } catch (error) {
                                    console.error('Error initializing Swiper:', error);
                                }
                            });

                            // Featured Products Auto-Scroll với Manual Control
                            (function () {
                                const container = document.getElementById('featuredProductsGrid');
                                const leftBtn = document.getElementById('scrollLeft');
                                const rightBtn = document.getElementById('scrollRight');

                                if (!container || !leftBtn || !rightBtn) return;

                                const scrollAmount = 375; // card width (340px) + gap (35px)
                                let autoScrollInterval;
                                let isAutoScrolling = true;

                                // Manual scroll function
                                function scrollManual(direction) {
                                    if (direction === 'left') {
                                        container.scrollBy({ left: -scrollAmount, behavior: 'smooth' });
                                    } else {
                                        container.scrollBy({ left: scrollAmount, behavior: 'smooth' });
                                    }
                                }

                                // Auto scroll function
                                function autoScroll() {
                                    const maxScroll = container.scrollWidth - container.clientWidth;
                                    const currentScroll = container.scrollLeft;

                                    // Nếu đã scroll đến cuối, quay lại đầu
                                    if (currentScroll >= maxScroll - 10) {
                                        container.scrollTo({ left: 0, behavior: 'smooth' });
                                    } else {
                                        container.scrollBy({ left: scrollAmount, behavior: 'smooth' });
                                    }
                                }

                                // Start auto-scroll
                                function startAutoScroll() {
                                    if (!isAutoScrolling) return;
                                    autoScrollInterval = setInterval(autoScroll, 3500); // Auto scroll mỗi 3.5 giây
                                }

                                // Stop auto-scroll
                                function stopAutoScroll() {
                                    clearInterval(autoScrollInterval);
                                }

                                // Event listeners cho manual control
                                leftBtn.addEventListener('click', function () {
                                    stopAutoScroll();
                                    scrollManual('left');
                                    isAutoScrolling = false;
                                    // Resume auto-scroll sau 5 giây không tương tác
                                    setTimeout(() => {
                                        isAutoScrolling = true;
                                        startAutoScroll();
                                    }, 5000);
                                });

                                rightBtn.addEventListener('click', function () {
                                    stopAutoScroll();
                                    scrollManual('right');
                                    isAutoScrolling = false;
                                    // Resume auto-scroll sau 5 giây không tương tác
                                    setTimeout(() => {
                                        isAutoScrolling = true;
                                        startAutoScroll();
                                    }, 5000);
                                });

                                // Pause on hover
                                container.addEventListener('mouseenter', stopAutoScroll);
                                container.addEventListener('mouseleave', function () {
                                    if (isAutoScrolling) {
                                        startAutoScroll();
                                    }
                                });

                                // Pause on touch/drag
                                container.addEventListener('touchstart', stopAutoScroll);
                                container.addEventListener('touchend', function () {
                                    if (isAutoScrolling) {
                                        setTimeout(startAutoScroll, 2000);
                                    }
                                });

                                // Start auto-scroll khi page load
                                startAutoScroll();
                            })();

                            // Speed Dial FAB
                            (function () {
                                const dialMain  = document.getElementById('speedDialMain');
                                const dialItems = document.getElementById('speedDialItems');
                                const scrollBtn = document.getElementById('sdScrollTop');
                                const supportBtn = document.getElementById('sdSupport');
                                const aiBotBtn  = document.getElementById('sdAIBot');
                                if (!dialMain) return;

                                let open = false;
                                function closedial() {
                                    open = false;
                                    dialItems.classList.remove('open');
                                    dialMain.classList.remove('open');
                                }

                                // Ẩn nút lên đầu khi chưa scroll
                                if (scrollBtn) scrollBtn.style.display = 'none';
                                window.addEventListener('scroll', function () {
                                    if (scrollBtn) {
                                        scrollBtn.style.display = window.pageYOffset > 300 ? 'flex' : 'none';
                                    }
                                });

                                dialMain.addEventListener('click', function (e) {
                                    e.stopPropagation();
                                    open = !open;
                                    dialItems.classList.toggle('open', open);
                                    dialMain.classList.toggle('open', open);
                                });

                                document.addEventListener('click', function (e) {
                                    const dial = document.getElementById('speedDial');
                                    if (dial && !dial.contains(e.target)) closedial();
                                });

                                if (scrollBtn) scrollBtn.addEventListener('click', function () {
                                    window.scrollTo({ top: 0, behavior: 'smooth' });
                                    closedial();
                                });

                                if (supportBtn) supportBtn.addEventListener('click', function () {
                                    if (typeof toggleChatWidget === 'function') toggleChatWidget();
                                    closedial();
                                });

                                if (aiBotBtn) aiBotBtn.addEventListener('click', function () {
                                    const panel = document.getElementById('mdChatbotPanel');
                                    if (panel) panel.style.display = panel.style.display === 'flex' ? 'none' : 'flex';
                                    closedial();
                                });
                            })();

                            // Intersection Observer for animations
                            const observerOptions = {
                                threshold: 0.1,
                                rootMargin: '0px 0px -50px 0px'
                            };

                            const observer = new IntersectionObserver(function (entries) {
                                entries.forEach(entry => {
                                    if (entry.isIntersecting) {
                                        entry.target.classList.add('animate-on-scroll');
                                        observer.unobserve(entry.target);
                                    }
                                });
                            }, observerOptions);

                            // Observe elements
                            document.addEventListener('DOMContentLoaded', function () {
                                const elementsToAnimate = document.querySelectorAll('.process-row, .product-showcase-card, .post-card');
                                elementsToAnimate.forEach(el => observer.observe(el));
                            });
                        </script>

                        <!-- Footer -->
                        <jsp:include page="footer.jsp" />
                    </body>

                    </html>