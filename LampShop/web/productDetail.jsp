<%-- Document : productDetail Created on : Feb 25, 2025, 2:04:38 AM Author : tphon --%>

    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <title>${product.title} - Mộc Đăng</title>
                    <link rel="icon" href="${pageContext.request.contextPath}/assests/images/favicon.png" type="image/png">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
                        rel="stylesheet">
                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link
                        href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Inter:wght@300;400;500;600;700&display=swap"
                        rel="stylesheet">
                    <style>
                        /* ===== MỘC ĐĂNG COLOR PALETTE ===== */
                        :root {
                            --wood-primary: #8B6F47;
                            --wood-dark: #5C4A33;
                            --wood-light: #D4B896;
                            --warm-white: #FFF8F0;
                            --cream: #F5EBE0;
                            --light-gold: #E8D7C3;
                            --accent-orange: #D4875E;
                            --text-primary: #3A3A3A;
                            --text-secondary: #6B6B6B;
                            --shadow-soft: 0 8px 24px rgba(139, 111, 71, 0.12);
                            --shadow-hover: 0 12px 40px rgba(139, 111, 71, 0.18);
                        }

                        /* ===== GLOBAL STYLES ===== */
                        * {
                            margin: 0;
                            padding: 0;
                            box-sizing: border-box;
                        }

                        body {
                            font-family: 'Inter', sans-serif;
                            background: linear-gradient(135deg, var(--warm-white) 0%, var(--cream) 100%);
                            color: var(--text-primary);
                            line-height: 1.7;
                            padding-top: 100px;
                        }

                        .container {
                            max-width: 1400px;
                            padding: 2.5rem 2rem;
                        }

                        /* ===== PRODUCT CONTAINER ===== */
                        .product-container {
                            background: white;
                            border-radius: 20px;
                            box-shadow: var(--shadow-soft);
                            padding: 40px;
                            margin-bottom: 40px;
                            border: 1px solid var(--light-gold);
                            transition: all 0.3s ease;
                        }

                        .product-container:hover {
                            box-shadow: var(--shadow-hover);
                        }

                        /* ===== PRODUCT IMAGES ===== */
                        .image-section {
                            display: flex;
                            gap: 20px;
                        }

                        .thumbnail-container {
                            display: flex;
                            flex-direction: column;
                            gap: 15px;
                            width: 100px;
                            min-width: 100px;
                            overflow-y: auto;
                            max-height: 600px;
                            padding-right: 10px;
                        }

                        .thumbnail-container::-webkit-scrollbar {
                            width: 6px;
                        }

                        .thumbnail-container::-webkit-scrollbar-track {
                            background: var(--cream);
                            border-radius: 10px;
                        }

                        .thumbnail-container::-webkit-scrollbar-thumb {
                            background: var(--wood-light);
                            border-radius: 10px;
                        }

                        .thumbnail {
                            width: 100%;
                            height: 100px;
                            object-fit: cover;
                            border-radius: 12px;
                            cursor: pointer;
                            border: 3px solid transparent;
                            transition: all 0.3s ease;
                        }

                        .thumbnail:hover {
                            border-color: var(--wood-light);
                            transform: scale(1.05);
                        }

                        .thumbnail.active {
                            border-color: var(--wood-primary);
                            box-shadow: 0 4px 12px rgba(139, 111, 71, 0.3);
                        }

                        .thumbnail-placeholder {
                            width: 100%;
                            height: 100px;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            color: var(--text-secondary);
                            font-size: 0.85rem;
                            text-align: center;
                            background: var(--warm-white);
                            border-radius: 12px;
                            border: 2px dashed var(--light-gold);
                        }

                        .product-image-main {
                            width: calc(100% - 120px);
                            height: 600px;
                            object-fit: cover;
                            border-radius: 16px;
                            transition: transform 0.3s ease;
                            border: 2px solid var(--light-gold);
                        }

                        /* ===== PRODUCT DETAILS ===== */
                        .product-title {
                            font-family: 'Playfair Display', serif;
                            font-size: 2rem;
                            font-weight: 700;
                            color: var(--wood-dark);
                            margin-bottom: 20px;
                            line-height: 1.3;
                        }

                        .product-price {
                            display: flex;
                            align-items: baseline;
                            gap: 15px;
                            margin-bottom: 25px;
                            padding: 20px;
                            background: linear-gradient(135deg, var(--warm-white), var(--cream));
                            border-radius: 12px;
                            border-left: 4px solid var(--wood-primary);
                        }

                        .sale-price {
                            font-family: 'Inter', sans-serif;
                            font-size: 2rem;
                            font-weight: 700;
                            color: var(--wood-primary);
                        }

                        .original-price {
                            font-size: 1.3rem;
                            color: var(--text-secondary);
                            text-decoration: line-through;
                        }

                        /* ===== OPTIONS & QUANTITY ===== */
                        .options-row {
                            display: flex;
                            flex-wrap: wrap;
                            gap: 20px;
                            margin-bottom: 25px;
                        }

                        .options-col {
                            flex: 1;
                            min-width: 200px;
                        }

                        .option-label {
                            font-weight: 600;
                            color: var(--wood-dark);
                            margin-bottom: 10px;
                            display: block;
                            font-size: 0.95rem;
                            letter-spacing: 0.3px;
                        }

                        .form-select {
                            background-color: var(--warm-white);
                            border: 2px solid var(--light-gold);
                            border-radius: 10px;
                            padding: 12px 16px;
                            font-size: 1rem;
                            color: var(--text-primary);
                            transition: all 0.3s ease;
                            cursor: pointer;
                        }

                        .form-select:focus {
                            outline: none;
                            border-color: var(--wood-primary);
                            box-shadow: 0 0 0 3px rgba(139, 111, 71, 0.1);
                            background: white;
                        }

                        .quantity-selector {
                            display: flex;
                            align-items: center;
                            gap: 12px;
                        }

                        .quantity-input {
                            width: 80px;
                            text-align: center;
                            background-color: var(--warm-white);
                            border: 2px solid var(--light-gold);
                            border-radius: 10px;
                            padding: 12px;
                            font-weight: 600;
                            color: var(--text-primary);
                        }

                        .quantity-input:focus {
                            outline: none;
                            border-color: var(--wood-primary);
                            box-shadow: 0 0 0 3px rgba(139, 111, 71, 0.1);
                        }

                        .btn-outline-secondary {
                            background: white;
                            border: 2px solid var(--wood-light);
                            color: var(--wood-primary);
                            width: 40px;
                            height: 40px;
                            border-radius: 10px;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            transition: all 0.3s ease;
                        }

                        .btn-outline-secondary:hover {
                            background: var(--wood-primary);
                            border-color: var(--wood-primary);
                            color: white;
                            transform: translateY(-2px);
                        }

                        .stock-status {
                            display: flex;
                            align-items: center;
                            padding: 12px 20px;
                            border-radius: 10px;
                            font-weight: 600;
                            font-size: 0.95rem;
                        }

                        .stock-status.in-stock {
                            background: #d4edda;
                            color: #155724;
                        }

                        .stock-status.out-of-stock {
                            background: #f8d7da;
                            color: #721c24;
                        }

                        .stock-status i {
                            margin-right: 8px;
                        }

                        /* ===== ACTION BUTTONS ===== */
                        .action-buttons {
                            display: flex;
                            gap: 15px;
                            margin-top: 30px;
                        }

                        .btn-buy-now,
                        .btn-add-cart {
                            flex: 1;
                            padding: 16px 24px;
                            border: none;
                            border-radius: 12px;
                            font-size: 1.05rem;
                            font-weight: 600;
                            color: white;
                            transition: all 0.3s ease;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            gap: 10px;
                            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
                            cursor: pointer;
                        }

                        .btn-buy-now {
                            background: linear-gradient(135deg, var(--accent-orange) 0%, #C97651 100%);
                        }

                        .btn-add-cart {
                            background: linear-gradient(135deg, var(--wood-primary) 0%, var(--wood-dark) 100%);
                        }

                        .btn-buy-now:hover {
                            transform: translateY(-3px);
                            box-shadow: 0 6px 20px rgba(212, 135, 94, 0.4);
                        }

                        .btn-add-cart:hover {
                            transform: translateY(-3px);
                            box-shadow: 0 6px 20px rgba(139, 111, 71, 0.4);
                        }

                        .btn-buy-now:disabled,
                        .btn-add-cart:disabled {
                            background: #ccc;
                            cursor: not-allowed;
                            transform: none;
                            box-shadow: none;
                        }

                        .btn-outline-dark {
                            border: 2px solid var(--wood-primary) !important;
                            color: var(--wood-primary) !important;
                            background: white !important;
                            transition: all 0.3s ease !important;
                        }

                        .btn-outline-dark:hover {
                            background: var(--wood-primary) !important;
                            color: white !important;
                            transform: translateY(-2px) !important;
                        }

                        /* ===== PRODUCT META ===== */
                        .product-meta {
                            margin-top: 25px;
                            padding-top: 25px;
                            border-top: 2px solid var(--light-gold);
                        }

                        .meta-item {
                            font-size: 0.95rem;
                            color: var(--text-secondary);
                        }

                        .meta-item strong {
                            color: var(--wood-dark);
                            font-weight: 600;
                        }

                        .meta-item a {
                            color: var(--wood-primary);
                            text-decoration: none;
                            transition: color 0.3s;
                        }

                        .meta-item a:hover {
                            color: var(--accent-orange);
                            text-decoration: underline;
                        }

                        /* ===== DESCRIPTION SECTION ===== */
                        .product-description-section {
                            background: white;
                            border-radius: 20px;
                            padding: 40px;
                            margin-top: 40px;
                            box-shadow: var(--shadow-soft);
                            border: 1px solid var(--light-gold);
                        }

                        .product-description-title {
                            font-family: 'Playfair Display', serif;
                            font-size: 1.8rem;
                            font-weight: 700;
                            color: var(--wood-dark);
                            margin-bottom: 25px;
                            padding-bottom: 15px;
                            border-bottom: 3px solid var(--light-gold);
                            position: relative;
                        }

                        .product-description-title::before {
                            content: '◆';
                            color: var(--accent-orange);
                            margin-right: 10px;
                        }

                        .product-description-content {
                            color: var(--text-secondary);
                            line-height: 1.9;
                            font-size: 1rem;
                        }

                        .product-description-content p {
                            margin-bottom: 20px;
                        }

                        .product-description-content img {
                            max-width: 100%;
                            height: auto;
                            border-radius: 12px;
                            margin: 20px 0;
                            box-shadow: var(--shadow-soft);
                        }

                        .product-description-content strong,
                        .product-description-content b {
                            color: var(--wood-dark);
                        }

                        /* ===== FEEDBACK SECTION ===== */
                        .feedback-section {
                            margin-top: 40px;
                            background: white;
                            border-radius: 20px;
                            padding: 40px;
                            box-shadow: var(--shadow-soft);
                            border: 1px solid var(--light-gold);
                        }

                        .feedback-title {
                            font-family: 'Playfair Display', serif;
                            font-size: 1.8rem;
                            font-weight: 700;
                            color: var(--wood-dark);
                            margin-bottom: 30px;
                            padding-bottom: 15px;
                            border-bottom: 3px solid var(--light-gold);
                        }

                        .feedback-title::before {
                            content: '◆';
                            color: var(--accent-orange);
                            margin-right: 10px;
                        }

                        .average-rating {
                            text-align: center;
                            padding: 30px;
                            background: linear-gradient(135deg, var(--warm-white), var(--cream));
                            border-radius: 15px;
                            border: 2px solid var(--light-gold);
                            height: 100%;
                            display: flex;
                            flex-direction: column;
                            justify-content: center;
                            align-items: center;
                        }

                        .average-rating h3 {
                            font-family: 'Playfair Display', serif;
                            font-size: 2.5rem;
                            font-weight: 700;
                            color: var(--wood-primary);
                            margin-bottom: 10px;
                        }

                        .star-rating {
                            font-size: 1.5rem;
                        }

                        .filter-buttons {
                            display: flex;
                            flex-wrap: wrap;
                            gap: 12px;
                            align-items: center;
                            padding: 0 0 0 30px;
                            height: 100%;
                        }

                        .filter-buttons .btn {
                            border: 2px solid var(--light-gold);
                            color: var(--wood-dark);
                            background: white;
                            border-radius: 30px;
                            padding: 14px 26px;
                            font-weight: 600;
                            transition: all 0.3s ease;
                            white-space: nowrap;
                            font-size: 1rem;
                            min-height: 50px;
                            width: auto;
                            height: auto;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                        }

                        .filter-buttons .btn:hover {
                            background: var(--wood-primary);
                            border-color: var(--wood-primary);
                            color: white;
                            transform: translateY(-2px);
                            box-shadow: 0 4px 12px rgba(139, 111, 71, 0.3);
                        }

                        .filter-buttons .btn i {
                            font-size: 0.9rem;
                        }

                        .feedback-item {
                            padding: 25px 0;
                            border-bottom: 1px solid var(--light-gold);
                            display: flex;
                            gap: 20px;
                        }

                        .feedback-avatar {
                            width: 55px;
                            height: 55px;
                            border-radius: 50%;
                            background: linear-gradient(135deg, var(--wood-light), var(--light-gold));
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            color: var(--wood-dark);
                            font-size: 1.3rem;
                            flex-shrink: 0;
                            box-shadow: var(--shadow-soft);
                        }

                        .feedback-content {
                            flex: 1;
                        }

                        .feedback-author {
                            font-family: 'Playfair Display', serif;
                            font-weight: 600;
                            font-size: 1.1rem;
                            color: var(--wood-dark);
                            margin-bottom: 8px;
                        }

                        .feedback-rating {
                            color: #f5c518;
                            margin-bottom: 12px;
                            font-size: 1.1rem;
                        }

                        .feedback-text {
                            color: var(--text-secondary);
                            line-height: 1.8;
                            margin-bottom: 15px;
                        }

                        .feedback-images {
                            display: flex;
                            flex-wrap: wrap;
                            gap: 12px;
                            margin-top: 15px;
                        }

                        .feedback-images img {
                            width: 110px;
                            height: 110px;
                            object-fit: cover;
                            border-radius: 12px;
                            cursor: pointer;
                            transition: all 0.3s ease;
                            border: 2px solid var(--light-gold);
                        }

                        .feedback-images img:hover {
                            transform: scale(1.08);
                            box-shadow: var(--shadow-soft);
                        }

                        .feedback-date {
                            font-size: 0.85rem;
                            color: var(--text-secondary);
                            margin-top: 10px;
                        }

                        .reply {
                            background: linear-gradient(135deg, var(--warm-white), var(--cream));
                            padding: 20px;
                            border-radius: 12px;
                            margin-top: 15px;
                            margin-left: 40px;
                            border-left: 3px solid var(--accent-orange);
                        }

                        .reply .feedback-author {
                            color: var(--accent-orange);
                        }

                        /* ===== SIMILAR PRODUCTS ===== */
                        .similar-products-section {
                            margin-top: 40px;
                            margin-bottom: 50px;
                            background: white;
                            border-radius: 20px;
                            padding: 40px;
                            box-shadow: var(--shadow-soft);
                            border: 1px solid var(--light-gold);
                        }

                        .similar-products-title {
                            font-family: 'Playfair Display', serif;
                            font-size: 1.8rem;
                            font-weight: 700;
                            color: var(--wood-dark);
                            margin-bottom: 30px;
                            padding-bottom: 15px;
                            border-bottom: 3px solid var(--light-gold);
                        }

                        .similar-products-title::before {
                            content: '◆';
                            color: var(--accent-orange);
                            margin-right: 10px;
                        }

                        .product-grid {
                            display: grid;
                            grid-template-columns: repeat(4, 1fr);
                            gap: 25px;
                        }

                        .product-card {
                            background: white;
                            border-radius: 16px;
                            overflow: hidden;
                            box-shadow: var(--shadow-soft);
                            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
                            border: 1px solid var(--light-gold);
                        }

                        .product-card:hover {
                            transform: translateY(-8px);
                            box-shadow: var(--shadow-hover);
                        }

                        .product-card a {
                            text-decoration: none;
                            color: inherit;
                        }

                        .position-relative {
                            overflow: hidden;
                            height: 280px;
                            background: var(--warm-white);
                        }

                        .product-image {
                            width: 100%;
                            height: 100%;
                            object-fit: cover;
                            transition: transform 0.5s ease;
                        }

                        .product-card:hover .product-image {
                            transform: scale(1.1);
                        }

                        .product-info {
                            padding: 20px;
                        }

                        .product-card .product-title {
                            font-family: 'Playfair Display', serif;
                            font-size: 1.05rem;
                            font-weight: 600;
                            color: var(--wood-dark);
                            margin-bottom: 12px;
                            overflow: hidden;
                            text-overflow: ellipsis;
                            display: -webkit-box;
                            -webkit-line-clamp: 2;
                            -webkit-box-orient: vertical;
                            min-height: 2.8rem;
                        }

                        .product-card .product-price {
                            font-family: 'Inter', sans-serif;
                            font-size: 1.3rem;
                            font-weight: 700;
                            color: var(--wood-primary);
                            padding: 0;
                            background: none;
                            border: none;
                        }

                        /* ===== PAGINATION ===== */
                        .pagination {
                            justify-content: center;
                            margin-top: 35px;
                            gap: 8px;
                        }

                        .page-item {
                            margin: 0;
                        }

                        .page-link {
                            color: var(--wood-dark);
                            background: white;
                            border: 2px solid var(--light-gold);
                            border-radius: 10px;
                            padding: 10px 18px;
                            font-weight: 500;
                            transition: all 0.3s ease;
                            min-width: 45px;
                            text-align: center;
                        }

                        .page-link:hover {
                            background: var(--wood-primary);
                            color: white;
                            border-color: var(--wood-primary);
                            transform: translateY(-2px);
                        }

                        .page-item.active .page-link {
                            background: linear-gradient(135deg, var(--wood-primary), var(--wood-dark));
                            border-color: var(--wood-primary);
                            color: white;
                            box-shadow: 0 4px 12px rgba(139, 111, 71, 0.3);
                        }

                        /* ===== ALERTS ===== */
                        .alert {
                            border-radius: 12px;
                            border: none;
                            padding: 16px 20px;
                            font-weight: 500;
                            box-shadow: var(--shadow-soft);
                        }

                        .alert-success {
                            background: linear-gradient(135deg, #d4edda, #c3e6cb);
                            color: #155724;
                        }

                        .alert-danger {
                            background: linear-gradient(135deg, #f8d7da, #f5c6cb);
                            color: #721c24;
                        }

                        /* ===== RESPONSIVE ===== */
                        @media (max-width: 1200px) {
                            .product-grid {
                                grid-template-columns: repeat(3, 1fr);
                            }
                        }

                        @media (max-width: 992px) {
                            .product-grid {
                                grid-template-columns: repeat(2, 1fr);
                            }

                            .product-container {
                                padding: 30px;
                            }
                        }

                        @media (max-width: 768px) {
                            body {
                                padding-top: 80px;
                            }

                            .container {
                                padding: 1.5rem 1rem;
                            }

                            .product-container {
                                padding: 20px;
                            }

                            .product-title {
                                font-size: 1.5rem;
                            }

                            .sale-price {
                                font-size: 1.6rem;
                            }

                            .product-image-main {
                                height: 400px;
                                width: 100%;
                            }

                            .image-section {
                                flex-direction: column-reverse;
                            }

                            .thumbnail-container {
                                flex-direction: row;
                                width: 100%;
                                max-height: none;
                                overflow-x: auto;
                                overflow-y: hidden;
                            }

                            .thumbnail {
                                min-width: 80px;
                            }

                            .action-buttons {
                                flex-direction: column;
                            }

                            .options-row {
                                flex-direction: column;
                            }

                            .options-col {
                                width: 100%;
                            }

                            .product-grid {
                                gap: 15px;
                            }

                            .average-rating h3 {
                                font-size: 2rem;
                            }

                            .filter-buttons {
                                justify-content: center;
                                padding: 20px 0;
                                height: auto;
                            }
                        }

                        @media (max-width: 576px) {
                            .product-grid {
                                grid-template-columns: 1fr;
                            }

                            .feedback-item {
                                flex-direction: column;
                            }

                            .reply {
                                margin-left: 0;
                            }
                        }

                        /* ===== MODAL ===== */
                        .modal-content {
                            border-radius: 16px;
                            border: none;
                            overflow: hidden;
                        }

                        #feedback_section {
                            scroll-margin-top: 100px;
                        }

                        /* ===== SMOOTH SCROLLING ===== */
                        html {
                            scroll-behavior: smooth;
                        }

                        /* ===== SELECTION COLOR ===== */
                        ::selection {
                            background: var(--wood-light);
                            color: var(--wood-dark);
                        }
                    </style>
                </head>

                <body>
                    <jsp:include page="header.jsp" />

                    <div class="container">
                        <div class="product-container">
                            <c:if test="${alert != null && !alert.trim().isEmpty()}">
                                <c:choose>
                                    <c:when test="${alert.equals('EOS')}">
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <i class="fas fa-exclamation-circle me-2"></i>
                                            Sản phẩm đã hết hàng hoặc ngừng kinh doanh.
                                            <button type="button" class="btn-close" data-bs-dismiss="alert"
                                                aria-label="Close"></button>
                                        </div>
                                    </c:when>
                                    <c:when test="${alert.equals('SS')}">
                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                            <i class="fas fa-check-circle me-2"></i>
                                            Thêm vào giỏ hàng thành công.
                                            <button type="button" class="btn-close" data-bs-dismiss="alert"
                                                aria-label="Close"></button>
                                        </div>
                                    </c:when>
                                    <c:when test="${alert.equals('ERR')}">
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <i class="fas fa-times-circle me-2"></i>
                                            Lỗi không xác định.
                                            <button type="button" class="btn-close" data-bs-dismiss="alert"
                                                aria-label="Close"></button>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </c:if>
                            <div class="row">
                                <!-- Product Images Column -->
                                <div class="col-md-6">
                                    <div class="image-section">
                                        <div class="thumbnail-container">
                                            <c:choose>
                                                <c:when test="${not empty product.subImages}">
                                                    <c:forEach items="${product.subImages}" var="image"
                                                        varStatus="status">
                                                        <img src="${image}"
                                                            class="thumbnail ${status.index == 0 ? 'active' : ''}"
                                                            alt="${product.title} - Image ${status.index + 1}"
                                                            onclick="changeMainImage(this.src)">
                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="thumbnail-placeholder">
                                                        <span>Không có ảnh phụ</span>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <img src="${product.thumbnail}" class="product-image-main"
                                            id="main-product-image" alt="${product.title}">
                                    </div>
                                </div>

                                <!-- Product Details Column -->
                                <div class="col-md-6">
                                    <h1 class="product-title">${product.title}</h1>

                                    <div class="product-price">
                                        <div class="sale-price">
                                            <fmt:formatNumber value="${product.salePrice}" type="currency"
                                                currencySymbol="₫" maxFractionDigits="0" />
                                        </div>
                                    </div>

                                    <form action="productdetail" method="POST">
                                        <input type="hidden" name="id" value="${product.id}">

                                        <!-- Size và Color Selector -->
                                        <div class="options-row">
                                            <div class="options-col">
                                                <label for="sizeId" class="option-label">
                                                    <i class="fas fa-ruler-combined me-2"></i>Chọn Size
                                                </label>
                                                <select id="sizeId" name="sizeId" class="form-select" required
                                                    onchange="changeSize(this.value)">
                                                    <option value="">Chọn Size</option>
                                                    <c:forEach items="${sizes}" var="size">
                                                        <option value="${size.id}" ${sizeId==size.id ? 'selected' : ''
                                                            }>
                                                            ${size.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div class="options-col">
                                                <label for="colorId" class="option-label">
                                                    <i class="fas fa-palette me-2"></i>Chọn Màu
                                                </label>
                                                <select id="colorId" name="colorId" class="form-select" required
                                                    onchange="changeColor(this.value)">
                                                    <option value="">Chọn Màu</option>
                                                    <c:forEach items="${colors}" var="color">
                                                        <option value="${color.id}" ${colorId==color.id ? 'selected'
                                                            : '' }>
                                                            ${color.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>

                                        <!-- Quantity Selector và Stock Status -->
                                        <div class="options-row align-items-end">
                                            <div class="options-col">
                                                <label for="quantity" class="option-label">
                                                    <i class="fas fa-shopping-basket me-2"></i>Số Lượng
                                                </label>
                                                <div class="quantity-selector">
                                                    <button type="button" class="btn btn-outline-secondary"
                                                        onclick="decrementQuantity()">
                                                        <i class="fas fa-minus"></i>
                                                    </button>
                                                    <input type="number" id="quantity" name="quantity"
                                                        class="form-control quantity-input" value="1" min="1"
                                                        max="${product.stock}">
                                                    <button type="button" class="btn btn-outline-secondary"
                                                        onclick="incrementQuantity()">
                                                        <i class="fas fa-plus"></i>
                                                    </button>
                                                </div>
                                            </div>

                                            <div class="options-col">
                                                <div
                                                    class="stock-status ${product.stock>0 && product.status.equals('active') ? 'in-stock' : 'out-of-stock'}">
                                                    <i
                                                        class="fas ${product.stock > 0 && product.status.equals('active') ? 'fa-check-circle' : 'fa-times-circle'}"></i>
                                                    <span>
                                                        ${product.stock>0 && product.status.equals('active') ? 'Còn
                                                        Hàng' :
                                                        product.status.equals('inactive') ? 'Ngưng Bán' : 'Hết Hàng'}
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Action Buttons -->
                                        <c:if
                                            test="${sessionScope.acc.role == 'customer' || sessionScope.acc.role == null}">
                                            <div class="action-buttons">
                                                <button type="submit" name="action" value="buyNow" class="btn-buy-now"
                                                    ${product.stock <=0 || !product.status.equals('active') ? 'disabled'
                                                    : '' }>
                                                    <i class="fas fa-bolt"></i> Mua Ngay
                                                </button>
                                                <button type="submit" name="action" value="addToCart"
                                                    class="btn-add-cart" ${product.stock <=0 ||
                                                    !product.status.equals('active') ? 'disabled' : '' }>
                                                    <i class="fas fa-shopping-cart"></i> Thêm Vào Giỏ
                                                </button>
                                            </div>
                                            <div class="mt-3">
                                                <a href="ar_tryon.jsp?image=${product.thumbnail}"
                                                    class="btn btn-outline-dark w-100 py-2 d-flex align-items-center justify-content-center gap-2"
                                                    style="border-radius: 12px; font-weight: 600;">
                                                    <i class="fas fa-camera"></i> Ướm thử tại nhà (AR)
                                                </a>
                                            </div>
                                        </c:if>
                                    </form>

                                    <!-- Product Metadata -->
                                    <div class="product-meta">
                                        <div class="meta-item">
                                            <strong><i class="fas fa-tag me-2"></i>Danh Mục:</strong>
                                            <a href="listproduct?category=${product.categoryId}">${categoryName}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Product Description Section -->
                        <div class="product-description-section">
                            <h2 class="product-description-title">Mô Tả Sản Phẩm</h2>
                            <div class="product-description-content">
                                ${product.description}
                            </div>
                        </div>

                        <!-- Feedback Section -->
                        <div id="feedback_section" class="feedback-section">
                            <h2 class="feedback-title">Đánh Giá Sản Phẩm (${allFeedbacks>0 ? allFeedbacks : 0})</h2>
                            <c:choose>
                                <c:when test="${not empty feedbacks}">
                                    <!-- Average Rating & Filter Buttons -->
                                    <div class="row mb-4 align-items-stretch">
                                        <div class="col-lg-3 col-md-4 mb-3 mb-md-0">
                                            <div class="average-rating">
                                                <h3>
                                                    <fmt:formatNumber value="${averageRating}" type="number"
                                                        maxFractionDigits="1" />
                                                    /5
                                                </h3>
                                                <div class="star-rating">
                                                    <c:forEach begin="1" end="5" var="i">
                                                        <i
                                                            class="fas fa-star ${i <= averageRating ? '' : 'text-muted'}"></i>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-9 col-md-8">
                                            <div class="filter-buttons">
                                                <a class="btn btn-outline-secondary"
                                                    href="productdetail?id=${product.id}#feedback_section">
                                                    <i class="fas fa-list me-1"></i>Tất Cả
                                                </a>
                                                <a class="btn btn-outline-secondary"
                                                    href="productdetail?id=${product.id}&filterStar=5#feedback_section">
                                                    5 Sao (${fiveStarCount})
                                                </a>
                                                <a class="btn btn-outline-secondary"
                                                    href="productdetail?id=${product.id}&filterStar=4#feedback_section">
                                                    4 Sao (${fourStarCount})
                                                </a>
                                                <a class="btn btn-outline-secondary"
                                                    href="productdetail?id=${product.id}&filterStar=3#feedback_section">
                                                    3 Sao (${threeStarCount})
                                                </a>
                                                <a class="btn btn-outline-secondary"
                                                    href="productdetail?id=${product.id}&filterStar=2#feedback_section">
                                                    2 Sao (${twoStarCount})
                                                </a>
                                                <a class="btn btn-outline-secondary"
                                                    href="productdetail?id=${product.id}&filterStar=1#feedback_section">
                                                    1 Sao (${oneStarCount})
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Feedback Items -->
                                    <c:forEach items="${feedbacks}" var="feedback">
                                        <div class="feedback-item">
                                            <div class="feedback-avatar">
                                                <i class="fas fa-user"></i>
                                            </div>
                                            <div class="feedback-content">
                                                <div class="feedback-author">${feedback.userName}</div>
                                                <div class="feedback-rating">
                                                    <c:forEach begin="1" end="5" var="i">
                                                        <i
                                                            class="fas fa-star ${i <= feedback.rating ? '' : 'text-muted'}"></i>
                                                    </c:forEach>
                                                </div>
                                                <div class="feedback-text">${feedback.comment}</div>

                                                <!-- Feedback Images -->
                                                <c:if test="${not empty feedback.feedbackImages}">
                                                    <div class="feedback-images">
                                                        <c:forEach items="${feedback.feedbackImages}" var="imageUrl">
                                                            <img src="${imageUrl}" alt="Feedback Image"
                                                                onclick="showImageModal(this.src)">
                                                        </c:forEach>
                                                    </div>
                                                </c:if>

                                                <div class="feedback-date">
                                                    <i class="far fa-clock me-1"></i>
                                                    <fmt:formatDate value="${feedback.createdAt}"
                                                        pattern="dd/MM/yyyy HH:mm" />
                                                </div>

                                                <!-- Shop Replies -->
                                                <c:if test="${not empty feedback.replies}">
                                                    <c:forEach items="${feedback.replies}" var="reply">
                                                        <div class="reply">
                                                            <div class="feedback-author">
                                                                <i class="fas fa-store me-2"></i>Mộc Đăng
                                                            </div>
                                                            <div class="feedback-text">${reply.comment}</div>
                                                            <div class="feedback-date">
                                                                <i class="far fa-clock me-1"></i>
                                                                <fmt:formatDate value="${reply.createdAt}"
                                                                    pattern="dd/MM/yyyy HH:mm" />
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </c:if>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <div class="text-center py-5">
                                        <i class="fas fa-comment-slash"
                                            style="font-size: 4rem; color: var(--wood-light);"></i>
                                        <p class="mt-3" style="color: var(--text-secondary); font-size: 1.1rem;">Chưa có
                                            đánh giá nào
                                            cho sản phẩm này</p>
                                    </div>
                                </c:otherwise>
                            </c:choose>

                            <!-- Pagination -->
                            <c:if test="${totalPages > 1}">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <c:if test="${currentPage > 1}">
                                            <li class="page-item">
                                                <a class="page-link"
                                                    href="productdetail?id=${product.id}&filterStar=${filterStar}&page=${currentPage - 1}#feedback_section">
                                                    <i class="fas fa-chevron-left"></i>
                                                </a>
                                            </li>
                                        </c:if>

                                        <c:forEach begin="1" end="${totalPages}" var="i">
                                            <li class="page-item ${i == currentPage ? 'active' : ''}">
                                                <a class="page-link"
                                                    href="productdetail?id=${product.id}&filterStar=${filterStar}&page=${i}#feedback_section">${i}</a>
                                            </li>
                                        </c:forEach>

                                        <c:if test="${currentPage < totalPages}">
                                            <li class="page-item">
                                                <a class="page-link"
                                                    href="productdetail?id=${product.id}&filterStar=${filterStar}&page=${currentPage + 1}#feedback_section">
                                                    <i class="fas fa-chevron-right"></i>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </nav>
                            </c:if>
                        </div>

                        <!-- Similar Products Section -->
                        <div class="similar-products-section">
                            <h2 class="similar-products-title">Sản Phẩm Tương Tự</h2>
                            <div class="product-grid">
                                <c:forEach items="${similarProducts}" var="similarProduct" varStatus="status">
                                    <c:if test="${status.index < 4}">
                                        <div class="card product-card">
                                            <a href="productdetail?id=${similarProduct.id}">
                                                <div class="position-relative">
                                                    <img src="${similarProduct.thumbnail}" class="product-image"
                                                        alt="${similarProduct.title}">
                                                </div>
                                                <div class="product-info">
                                                    <h5 class="product-title">${similarProduct.title}</h5>
                                                    <div class="product-price">
                                                        <span>
                                                            <fmt:formatNumber value="${similarProduct.salePrice}"
                                                                type="currency" currencySymbol="đ"
                                                                maxFractionDigits="0" />
                                                        </span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </div>

                    <!-- Image Modal -->
                    <div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-body p-0">
                                    <button type="button"
                                        class="btn-close position-absolute top-0 end-0 m-3 bg-white rounded-circle p-2"
                                        data-bs-dismiss="modal" aria-label="Close" style="z-index: 10;"></button>
                                    <img id="modalImage" src="" alt="Large Image"
                                        style="width: 100%; border-radius: 16px;">
                                </div>
                            </div>
                        </div>
                    </div>

                    <jsp:include page="chat.jsp" />
                    <jsp:include page="footer.jsp" />

                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                    <script>
                        function changeMainImage(src) {
                            document.getElementById('main-product-image').src = src;
                            const thumbnails = document.querySelectorAll('.thumbnail');
                            thumbnails.forEach(thumb => {
                                if (thumb.src === src) {
                                    thumb.classList.add('active');
                                } else {
                                    thumb.classList.remove('active');
                                }
                            });
                        }

                        function changeSize(sizeID) {
                            setTimeout(() => {
                                const colorID = document.getElementById('colorId').value;
                                window.location.href = 'productdetail?id=${product.id}&sizeId=' + sizeID + '&colorId=' + colorID;
                            }, 10);
                        }

                        function changeColor(colorID) {
                            setTimeout(() => {
                                const sizeID = document.getElementById('sizeId').value;
                                window.location.href = 'productdetail?id=${product.id}&sizeId=' + sizeID + '&colorId=' + colorID;
                            }, 10);
                        }

                        function incrementQuantity() {
                            const quantityInput = document.getElementById('quantity');
                            const maxQuantity = ${ product.stock };
                            if (parseInt(quantityInput.value) < maxQuantity) {
                                quantityInput.value = parseInt(quantityInput.value) + 1;
                            }
                        }

                        function decrementQuantity() {
                            const quantityInput = document.getElementById('quantity');
                            if (parseInt(quantityInput.value) > 1) {
                                quantityInput.value = parseInt(quantityInput.value) - 1;
                            }
                        }

                        document.getElementById('quantity').addEventListener('change', function () {
                            const value = parseInt(this.value);
                            const maxQuantity = ${ product.stock };
                            if (value < 1) {
                                this.value = 1;
                            } else if (value > maxQuantity) {
                                this.value = maxQuantity;
                                alert('Số lượng tối đa có sẵn là ' + maxQuantity);
                            }
                        });

                        function showImageModal(src) {
                            document.getElementById('modalImage').src = src;
                            var modal = new bootstrap.Modal(document.getElementById('imageModal'));
                            modal.show();
                        }
                    </script>
                </body>

                </html>