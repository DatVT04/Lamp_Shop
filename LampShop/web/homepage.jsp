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
                        <title>Lamp Shop</title>

                        <!-- External CSS -->
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
                            rel="stylesheet">
                        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
                            rel="stylesheet">
                        <link rel="stylesheet"
                            href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.css">
                        <!-- Google Fonts: Playfair Display (Serif) & Inter (Sans) -->
                        <link
                            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400&display=swap"
                            rel="stylesheet">

                        <!-- Custom CSS -->
                        <style>
                            /* ============================================
               GLOBAL VARIABLES & BASE STYLES
               ============================================ */
                            :root {
                                --primary-color: #2c3e50;
                                --secondary-color: #34495e;
                                --accent-color: #c5a059;
                                /* Artisan Gold */
                                --text-color: #333;
                                --light-background: #f9f9f9;
                                --font-serif: 'Playfair Display', serif;
                                --font-sans: 'Inter', sans-serif;
                            }

                            * {
                                margin: 0;
                                padding: 0;
                                box-sizing: border-box;
                            }

                            body {
                                font-family: var(--font-sans);
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
                            /* ============================================
               HERO SWIPER SECTION
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
                                height: 85vh;
                                /* Chiều cao ấn tượng hơn */
                                min-height: 600px;
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
                                opacity: 0.9;
                            }

                            /* Overlay tạo độ sâu và dễ đọc chữ */
                            .hero-overlay {
                                position: absolute;
                                top: 0;
                                left: 0;
                                width: 100%;
                                height: 100%;
                                background: linear-gradient(90deg, rgba(0, 0, 0, 0.7) 0%, rgba(0, 0, 0, 0.3) 60%, rgba(0, 0, 0, 0) 100%);
                                z-index: 1;
                            }

                            .hero-content {
                                position: absolute;
                                top: 50%;
                                left: 10%;
                                transform: translateY(-50%);
                                z-index: 10;
                                max-width: 650px;
                                padding: 40px;
                                color: white;
                                opacity: 0;
                                animation: fadeUp 1s ease-out 0.5s forwards;
                            }

                            @keyframes fadeUp {
                                from {
                                    opacity: 0;
                                    transform: translateY(-40%);
                                }

                                to {
                                    opacity: 1;
                                    transform: translateY(-50%);
                                }
                            }

                            .hero-content h2 {
                                font-family: 'Playfair Display', serif;
                                /* Font sang trọng nếu có, hoặc mặc định */
                                font-size: 3.5rem;
                                font-weight: 700;
                                margin-bottom: 25px;
                                text-transform: uppercase;
                                letter-spacing: 2px;
                                line-height: 1.2;
                                text-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
                            }

                            .hero-content p {
                                font-size: 1.1rem;
                                line-height: 1.8;
                                margin-bottom: 40px;
                                color: rgba(255, 255, 255, 0.9);
                                border-left: 3px solid var(--accent-color);
                                padding-left: 20px;
                            }

                            .hero-content .btn-view {
                                background: white;
                                color: var(--primary-color);
                                padding: 15px 40px;
                                border: none;
                                border-radius: 0;
                                font-weight: 600;
                                text-decoration: none;
                                display: inline-block;
                                transition: all 0.3s ease;
                                text-transform: uppercase;
                                letter-spacing: 2px;
                                font-size: 0.9rem;
                                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
                            }

                            .hero-content .btn-view:hover {
                                background: var(--accent-color);
                                color: white;
                                transform: translateY(-3px);
                                box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
                            }

                            /* Swiper Navigation Customization */
                            .heroSwiper .swiper-button-next,
                            .heroSwiper .swiper-button-prev {
                                color: white;
                                width: 50px;
                                height: 50px;
                                background: rgba(255, 255, 255, 0.1);
                                backdrop-filter: blur(5px);
                                border-radius: 50%;
                                transition: all 0.3s ease;
                            }

                            .heroSwiper .swiper-button-next:hover,
                            .heroSwiper .swiper-button-prev:hover {
                                background: white;
                                color: black;
                            }

                            .heroSwiper .swiper-button-next::after,
                            .heroSwiper .swiper-button-prev::after {
                                font-size: 1.5rem;
                                font-weight: bold;
                            }

                            .heroSwiper .swiper-pagination-bullet {
                                width: 12px;
                                height: 12px;
                                background: white;
                                opacity: 0.5;
                            }

                            .heroSwiper .swiper-pagination-bullet-active {
                                opacity: 1;
                                background: var(--accent-color);
                                width: 30px;
                                border-radius: 6px;
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
               FEATURED PRODUCTS GRID SECTION
               ============================================ */
                            .featured-products-section {
                                width: 100%;
                                padding: 80px 0;
                                background: #f8f9fa;
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
                                font-size: 2.8rem;
                                font-weight: 700;
                                color: #2c3e50;
                                margin-bottom: 50px;
                                text-transform: none;
                                /* Elegant case */
                                letter-spacing: 1px;
                                position: relative;
                            }

                            .section-title::after {
                                content: '';
                                display: block;
                                width: 60px;
                                height: 3px;
                                background: var(--accent-color);
                                margin: 20px auto 0;
                            }

                            /* Scroll container wrapper */
                            .featured-products-scroll-wrapper {
                                position: relative;
                                width: 100%;
                                padding: 0 40px;
                                /* Space for arrows */
                            }

                            /* Horizontal scroll container */
                            .featured-products-grid {
                                display: flex;
                                gap: 30px;
                                overflow-x: auto;
                                scroll-behavior: smooth;
                                padding: 20px 5px;
                                /* Tiny padding for shadow */
                                /* Hide scrollbar but keep functionality */
                                scrollbar-width: none;
                                /* Firefox */
                                -ms-overflow-style: none;
                                /* IE/Edge */
                            }

                            .featured-products-grid::-webkit-scrollbar {
                                display: none;
                                /* Chrome/Safari */
                            }

                            .featured-product-card {
                                background: transparent;
                                /* Clean look */
                                border-radius: 0;
                                /* Sharp corners for premium feel */
                                overflow: hidden;
                                box-shadow: none;
                                transition: all 0.5s ease;
                                display: flex;
                                flex-direction: column;
                                cursor: pointer;
                                flex-shrink: 0;
                                width: 320px;
                                position: relative;
                            }

                            .featured-product-image-wrapper {
                                width: 100%;
                                height: 400px;
                                /* Taller, more portrait */
                                display: flex;
                                align-items: center;
                                justify-content: center;
                                background: #f4f4f4;
                                position: relative;
                                overflow: hidden;
                            }

                            .featured-product-image {
                                max-width: 100%;
                                max-height: 100%;
                                width: 100%;
                                height: 100%;
                                object-fit: cover;
                                /* Fill the frame */
                                transition: transform 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
                            }

                            /* New Overlay Effect */
                            .featured-product-overlay {
                                position: absolute;
                                top: 0;
                                left: 0;
                                width: 100%;
                                height: 100%;
                                background: rgba(0, 0, 0, 0.2);
                                opacity: 0;
                                transition: all 0.4s ease;
                                display: flex;
                                align-items: center;
                                justify-content: center;
                            }

                            .btn-quick-view {
                                background: white;
                                color: #333;
                                padding: 12px 28px;
                                font-family: var(--font-sans);
                                font-size: 0.9rem;
                                font-weight: 600;
                                text-transform: uppercase;
                                letter-spacing: 1px;
                                transform: translateY(20px);
                                opacity: 0;
                                transition: all 0.4s ease;
                                border: none;
                                cursor: pointer;
                            }

                            .btn-quick-view:hover {
                                background: var(--accent-color);
                                color: white;
                            }

                            .featured-product-card:hover .featured-product-overlay {
                                opacity: 1;
                            }

                            .featured-product-card:hover .btn-quick-view {
                                transform: translateY(0);
                                opacity: 1;
                            }

                            .featured-product-card:hover .featured-product-image {
                                transform: scale(1.08);
                                /* Smoother zoom */
                            }

                            .featured-product-label {
                                padding: 18px 0;
                                text-align: center;
                                font-family: var(--font-serif);
                                font-size: 1.25rem;
                                font-weight: 600;
                                color: #222;
                                text-transform: capitalize;
                                letter-spacing: 0.5px;
                                background: transparent;
                                border: none;
                                transition: color 0.3s ease;
                            }

                            .featured-product-card:hover .featured-product-label {
                                color: var(--accent-color);
                            }

                            /* Refining Navigation arrows to be thin and elegant */
                            .scroll-arrow {
                                position: absolute;
                                top: 45%;
                                /* slightly higher due to image height */
                                transform: translateY(-50%);
                                background: white;
                                color: #333;
                                border: 1px solid #ddd;
                                width: 45px;
                                height: 45px;
                                border-radius: 50%;
                                cursor: pointer;
                                display: flex;
                                align-items: center;
                                justify-content: center;
                                font-size: 1.2rem;
                                transition: all 0.3s ease;
                                z-index: 10;
                                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
                            }

                            .scroll-arrow:hover {
                                background: var(--accent-color);
                                color: white;
                                border-color: var(--accent-color);
                            }

                            .scroll-arrow.left {
                                left: -10px;
                            }

                            .scroll-arrow.right {
                                right: -10px;
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
                                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
                                transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
                                display: flex;
                                flex-direction: column;
                                border: 1px solid #f0f0f0;
                                height: 100%;
                            }

                            .product-showcase-card:hover {
                                box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
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
                                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
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
                                box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
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
                        <!-- Hero Project Section (Swiper Upgrade) -->
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
                                                    <h2>TINH HOA ÁNH SÁNG VIỆT</h2>
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
                                                    <h2>THIẾT KẾ ĐỘC BẢN</h2>
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

                        <!-- Featured Products Carousel Section (giống trang mẫu) -->
                        <section class="featured-products-section">
                            <div class="featured-products-container">
                                <div class="featured-products-scroll-wrapper">
                                    <button class="scroll-arrow left"
                                        onclick="scrollFeaturedProducts('left')">‹</button>
                                    <button class="scroll-arrow right"
                                        onclick="scrollFeaturedProducts('right')">›</button>
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
                                        <!-- Thêm placeholders nếu không có sản phẩm -->
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
                                <!-- Process 1: SẢN XUẤT THEO ĐƠN ĐẶT HÀNG -->
                                <div class="process-row">
                                    <div class="process-image">
                                        <img src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=800"
                                            alt="Sản xuất">
                                    </div>
                                    <div class="process-content">
                                        <div class="process-label">Our process</div>
                                        <h3>SẢN XUẤT THEO ĐƠN ĐẶT HÀNG</h3>
                                        <p>Quá trình tạo ra mỗi sản phẩm là một quá trình kỳ công. Từ những bản thiết kế
                                            của bạn, đội ngũ kỹ sư của chúng tôi sẽ phân tích và đánh giá để đưa ra
                                            những phương án gia công và chọn lựa nguyên liệu phù hợp, kiểm tra chất
                                            lượng nghiêm ngặt từng khâu của quá trình sản xuất để mọi sản phẩm đảm bảo
                                            mọi chi tiết hoàn hảo trước khi đến tay của bạn.</p>
                                        <a href="#" class="btn-read-more">Xem thêm ></a>
                                    </div>
                                </div>

                                <!-- Process 2: CUSTOM DESIGN -->
                                <div class="process-row reverse">
                                    <div class="process-image">
                                        <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800"
                                            alt="Custom Design">
                                    </div>
                                    <div class="process-content">
                                        <div class="process-label">Our process</div>
                                        <h3>CUSTOM DESIGN</h3>
                                        <p>Không gian của bạn là một tập hợp của những ý tưởng và cá nhân riêng biệt. Đó
                                            là lý do tại sao chúng tôi tự hào khi có khả năng tùy chỉnh sản phẩm theo
                                            mong muốn của bạn. Từ việc chọn màu sắc, kích thước, kiểu dáng đến việc thêm
                                            những chi tiết riêng biệt, chúng tôi luôn đảm bảo sản phẩm hoàn toàn phản
                                            ánh cá tính của bạn.</p>
                                        <a href="#" class="btn-read-more">Xem thêm ></a>
                                    </div>
                                </div>

                                <!-- Process 3: BỘ SƯU TẬP THEO MÙA -->
                                <div class="process-row">
                                    <div class="process-image">
                                        <img src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=800"
                                            alt="Bộ sưu tập">
                                    </div>
                                    <div class="process-content">
                                        <div class="process-label">Our process</div>
                                        <h3>BỘ SƯU TẬP THEO MÙA</h3>
                                        <p>Chúng tôi luôn tiếp tục nắm bắt các xu hướng mới nhất trong lĩnh vực đèn
                                            trang trí. Từ phong cách cổ điển đến hiện đại, từ dáng vẻ tối giản đến táo
                                            bạo,… những sản phẩm mới được chúng tôi cho ra mắt hàng năm với những thiết
                                            kế độc đáo và đẹp mắt, có đầy đủ những nguyên liệu khác nhau từ kim loại,
                                            gốm sứ, vải cho đến những dòng sản phẩm từ mây tre tự nhiên và các loại
                                            nguyên liệu độc đáo khác.</p>
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
                                    <p class="section-description">Mỗi chiếc đèn của chúng tôi đều mang một câu chuyện
                                        riêng; từng chi tiết trên sản phẩm được chế tác tỉ mỉ, đảm bảo mỗi đường kim mũi
                                        chỉ đều góp phần tạo nên một sản phẩm có giá trị bền vững.</p>
                                    <hr class="section-divider">
                                </div>

                                <!-- Product Grid - 3 cột như trang mẫu -->
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
                                                                <!-- Reusing artisan style or similar -->
                                                                <div class="featured-product-image-wrapper"
                                                                    style="height: 350px;">
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
                                                                <div class="product-info-minimal"
                                                                    style="padding: 20px 20px 30px; text-align: center;">
                                                                    <h4 class="product-title-sub"
                                                                        style="font-family: var(--font-serif); font-size: 1.25rem; margin-bottom: 8px; color: #222; font-weight: 600;">
                                                                        ${product.title}</h4>
                                                                    <h3 class="product-title-main"
                                                                        style="font-size: 0.75rem; color: #999; font-weight: 500; letter-spacing: 2px; margin-bottom: 15px;">
                                                                        ${fn:toUpperCase(category.name)}</h3>
                                                                    <p class="product-description-refined"
                                                                        style="font-family: var(--font-sans); font-size: 0.9rem; color: #666; line-height: 1.6; margin: 0 auto; max-width: 90%;">
                                                                        <c:choose>
                                                                            <c:when
                                                                                test="${not empty product.description}">
                                                                                ${fn:length(product.description) > 200 ?
                                                                                fn:substring(product.description, 0,
                                                                                200)
                                                                                :
                                                                                product.description}${fn:length(product.description)
                                                                                > 200 ? '...' : ''}
                                                                            </c:when>
                                                                            <c:otherwise>Thiết kế tinh xảo, mang đậm bản
                                                                                sắc văn hóa Việt.</c:otherwise>
                                                                        </c:choose>
                                                                    </p>
                                                                </div>
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
                                                            style="height: 350px;">
                                                            <img src="${product.thumbnail}"
                                                                class="featured-product-image" alt="${product.title}"
                                                                onerror="this.src='https://via.placeholder.com/400x400?text=No+Image'">
                                                            <div class="featured-product-overlay">
                                                                <a href="productdetail?id=${product.id}">
                                                                    <button class="btn-quick-view">Xem Chi Tiết</button>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="product-info-minimal"
                                                            style="padding: 20px 20px 30px; text-align: center;">
                                                            <h4 class="product-title-sub"
                                                                style="font-family: var(--font-serif); font-size: 1.25rem; margin-bottom: 8px; color: #222; font-weight: 600;">
                                                                ${product.title}</h4>
                                                            <h3 class="product-title-main"
                                                                style="font-size: 0.75rem; color: #999; font-weight: 500; letter-spacing: 2px; margin-bottom: 15px;">
                                                                ĐÈN BÀN</h3>
                                                            <p class="product-description-refined"
                                                                style="font-family: var(--font-sans); font-size: 0.9rem; color: #666; line-height: 1.6; margin: 0 auto; max-width: 90%;">
                                                                <c:choose>
                                                                    <c:when test="${not empty product.description}">
                                                                        ${fn:length(product.description) > 200 ?
                                                                        fn:substring(product.description, 0, 200) :
                                                                        product.description}${fn:length(product.description)
                                                                        > 200 ? '...' : ''}
                                                                    </c:when>
                                                                    <c:otherwise>Thiết kế tinh xảo, mang đậm bản sắc văn
                                                                        hóa Việt.</c:otherwise>
                                                                </c:choose>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <c:set var="productCount" value="${productCount + 1}" />
                                                </c:if>
                                            </c:forEach>
                                        </c:if>
                                        <!-- Placeholder nếu không đủ 6 sản phẩm (cần tối thiểu 6 để loop mượt cho 3 items) -->
                                        <!-- Placeholder loop removed as per user request -->
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
                                                        class="btn-read-more">Đọc thêm</a>
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
                        <script
                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.js"></script>

                        <!-- Custom Scripts -->
                        <script>
                            // Featured Products Swiper với autoplay 2 giây
                            document.addEventListener('DOMContentLoaded', function () {
                                // Đợi Swiper library load xong
                                if (typeof Swiper === 'undefined') {
                                    console.error('Swiper library not loaded');
                                    return;
                                }

                                try {
                                    // Hero Swiper only - Featured Products now uses static grid
                                    const heroSwiperElement = document.querySelector(".heroSwiper");
                                    if (heroSwiperElement) {
                                        new Swiper(".heroSwiper", {
                                            spaceBetween: 0,
                                            centeredSlides: true,
                                            loop: true,
                                            speed: 1000,
                                            effect: 'fade', // Hiệu ứng fade sang trọng hơn cho slider to
                                            fadeEffect: {
                                                crossFade: true
                                            },
                                            autoplay: {
                                                delay: 5000,
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
                                    console.error('Error initializing Featured Products Swiper:', error);
                                }
                            });

                            // Featured Products Horizontal Scroll Function
                            function scrollFeaturedProducts(direction) {
                                const container = document.getElementById('featuredProductsGrid');
                                if (!container) return;

                                const scrollAmount = 340; // card width (300px) + gap (40px)
                                if (direction === 'left') {
                                    container.scrollBy({ left: -scrollAmount, behavior: 'smooth' });
                                } else {
                                    container.scrollBy({ left: scrollAmount, behavior: 'smooth' });
                                }
                            }

                            // Back to Top Button
                            document.addEventListener('DOMContentLoaded', function () {
                                const backToTopButton = document.getElementById('backToTopButton');

                                window.addEventListener('scroll', function () {
                                    if (window.pageYOffset > 300) {
                                        backToTopButton.classList.add('show');
                                    } else {
                                        backToTopButton.classList.remove('show');
                                    }
                                });

                                backToTopButton.addEventListener('click', function () {
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