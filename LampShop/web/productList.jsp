<%-- 
    Document   : productList
    Created on : Feb 24, 2025, 1:40:02 AM
    Author     : tphon
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>${categoryName != null ? categoryName : 'All Products'} - Mộc Đăng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
            /* ===== MỘC ĐĂNG COLOR PALETTE ===== */
            :root {
                --wood-primary: #8B6F47;      /* Nâu gỗ ấm áp */
                --wood-dark: #5C4A33;          /* Nâu đậm sang trọng */
                --wood-light: #D4B896;         /* Nâu sáng nhẹ nhàng */
                --warm-white: #FFF8F0;         /* Trắng ấm */
                --cream: #F5EBE0;              /* Kem nhẹ */
                --light-gold: #E8D7C3;         /* Vàng nhạt */
                --accent-orange: #D4875E;      /* Cam đất */
                --text-primary: #3A3A3A;       /* Chữ chính */
                --text-secondary: #6B6B6B;     /* Chữ phụ */
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
                font-family: 'Playfair Display', 'Georgia', serif;
                background: linear-gradient(135deg, var(--warm-white) 0%, var(--cream) 100%);
                color: var(--text-primary);
                line-height: 1.7;
                padding-top: 100px;
                min-height: 100vh;
            }

            /* ===== CONTAINER ===== */
            .container {
                max-width: 1400px;
                padding: 2.5rem 2rem;
                margin: 0 auto;
            }

            /* ===== PAGE TITLE ===== */
            h1.h2 {
                font-family: 'Playfair Display', serif;
                font-size: 2.8rem;
                font-weight: 700;
                color: var(--wood-dark);
                text-align: center;
                margin-bottom: 3rem;
                letter-spacing: 1px;
                position: relative;
                text-transform: uppercase;
            }

            h1.h2::after {
                content: '';
                display: block;
                width: 80px;
                height: 3px;
                background: linear-gradient(90deg, var(--wood-primary), var(--accent-orange));
                margin: 1rem auto 0;
                border-radius: 3px;
            }

            /* ===== SIDEBAR FILTERS ===== */
            .sidebar-filters {
                background: white;
                border-radius: 16px;
                box-shadow: var(--shadow-soft);
                padding: 2rem;
                position: sticky;
                top: 120px;
                transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
                border: 1px solid var(--light-gold);
            }

            .sidebar-filters:hover {
                box-shadow: var(--shadow-hover);
                transform: translateY(-2px);
            }

            .filter-section {
                margin-bottom: 2rem;
            }

            .filter-title {
                font-family: 'Playfair Display', serif;
                font-size: 1.2rem;
                font-weight: 600;
                color: var(--wood-dark);
                margin-bottom: 1.2rem;
                padding-bottom: 0.8rem;
                border-bottom: 2px solid var(--light-gold);
                position: relative;
            }

            .filter-title::before {
                content: '◆';
                color: var(--wood-primary);
                margin-right: 8px;
                font-size: 0.9rem;
            }

            /* Price Range Inputs */
            .price-range {
                display: flex;
                gap: 10px;
                align-items: center;
                margin-bottom: 1rem;
            }

            .price-input {
                background-color: var(--warm-white);
                border: 1.5px solid var(--light-gold);
                border-radius: 8px;
                padding: 0.7rem;
                font-size: 0.95rem;
                color: var(--text-primary);
                transition: all 0.3s ease;
                font-family: 'Inter', sans-serif;
            }

            .price-input:focus {
                outline: none;
                border-color: var(--wood-primary);
                box-shadow: 0 0 0 3px rgba(139, 111, 71, 0.1);
                background: white;
            }

            .price-input::placeholder {
                color: var(--text-secondary);
                opacity: 0.7;
            }

            /* Radio Options */
            .price-radio-options {
                margin-top: 1.2rem;
            }

            .radio-option {
                margin-bottom: 0.7rem;
                display: flex;
                align-items: center;
                padding: 0.4rem;
                border-radius: 6px;
                transition: background 0.2s;
            }

            .radio-option:hover {
                background: var(--warm-white);
            }

            .form-check-input {
                width: 18px;
                height: 18px;
                margin-right: 10px;
                border: 2px solid var(--wood-primary);
                cursor: pointer;
            }

            .form-check-input:checked {
                background-color: var(--wood-primary);
                border-color: var(--wood-primary);
            }

            .form-check-label {
                cursor: pointer;
                font-family: 'Inter', sans-serif;
                font-size: 0.95rem;
                color: var(--text-primary);
            }

            /* Sort Select */
            .form-select {
                background-color: var(--warm-white);
                border: 1.5px solid var(--light-gold);
                border-radius: 8px;
                padding: 0.7rem;
                font-size: 0.95rem;
                color: var(--text-primary);
                transition: all 0.3s ease;
                cursor: pointer;
                font-family: 'Inter', sans-serif;
            }

            .form-select:focus {
                outline: none;
                border-color: var(--wood-primary);
                box-shadow: 0 0 0 3px rgba(139, 111, 71, 0.1);
            }

            /* Apply Filter Button */
            .apply-filters-btn {
                width: 100%;
                background: linear-gradient(135deg, var(--wood-primary) 0%, var(--wood-dark) 100%);
                color: white;
                border: none;
                border-radius: 10px;
                padding: 0.9rem 1.5rem;
                font-size: 1rem;
                font-weight: 600;
                font-family: 'Inter', sans-serif;
                text-transform: uppercase;
                letter-spacing: 0.5px;
                cursor: pointer;
                transition: all 0.3s ease;
                box-shadow: 0 4px 15px rgba(139, 111, 71, 0.3);
            }

            .apply-filters-btn:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(139, 111, 71, 0.4);
            }

            .apply-filters-btn:active {
                transform: translateY(0);
            }

            .apply-filters-btn i {
                margin-right: 8px;
            }

            /* ===== PRODUCT GRID ===== */
            .product-grid {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 2rem;
            }

            /* ===== PRODUCT CARD ===== */
            .product-card {
                background: white;
                border-radius: 16px;
                overflow: hidden;
                box-shadow: var(--shadow-soft);
                transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
                display: flex;
                flex-direction: column;
                border: 1px solid var(--light-gold);
                position: relative;
            }

            .product-card::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: linear-gradient(135deg, rgba(139, 111, 71, 0.05) 0%, transparent 100%);
                opacity: 0;
                transition: opacity 0.4s;
                pointer-events: none;
                z-index: 1;
            }

            .product-card:hover {
                transform: translateY(-8px);
                box-shadow: var(--shadow-hover);
            }

            .product-card:hover::before {
                opacity: 1;
            }

            .product-card a {
                text-decoration: none;
                color: inherit;
                display: flex;
                flex-direction: column;
                height: 100%;
            }

            /* Product Image Container */
            .position-relative {
                overflow: hidden;
                height: 320px;
                background: var(--warm-white);
                position: relative;
            }

            .product-image {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.5s cubic-bezier(0.4, 0, 0.2, 1);
            }

            .product-card:hover .product-image {
                transform: scale(1.08);
            }

            /* Product Badge */
            .product-badge {
                position: absolute;
                top: 1rem;
                right: 1rem;
                background: linear-gradient(135deg, var(--accent-orange), #C97651);
                color: white;
                padding: 0.5rem 1.2rem;
                border-radius: 25px;
                font-size: 0.85rem;
                font-weight: 600;
                font-family: 'Inter', sans-serif;
                letter-spacing: 0.5px;
                box-shadow: 0 4px 12px rgba(212, 135, 94, 0.4);
                z-index: 2;
                text-transform: uppercase;
            }

            /* Product Info */
            .product-info {
                padding: 1.5rem;
                background: white;
                flex-grow: 1;
                display: flex;
                flex-direction: column;
                position: relative;
                z-index: 2;
            }

            .product-title {
                font-family: 'Playfair Display', serif;
                font-size: 1.15rem;
                font-weight: 600;
                color: var(--wood-dark);
                margin-bottom: 0.8rem;
                line-height: 1.4;
                overflow: hidden;
                text-overflow: ellipsis;
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
                min-height: 3.2rem;
                transition: color 0.3s;
            }

            .product-card:hover .product-title {
                color: var(--wood-primary);
            }

            .product-price {
                font-family: 'Inter', sans-serif;
                font-size: 1.4rem;
                font-weight: 700;
                color: var(--wood-primary);
                margin-top: auto;
                display: flex;
                align-items: center;
                gap: 0.5rem;
            }

            .product-price::before {
                content: '';
                width: 30px;
                height: 2px;
                background: var(--light-gold);
            }

            /* ===== NO PRODUCTS ===== */
            .no-products {
                background: white;
                border-radius: 20px;
                box-shadow: var(--shadow-soft);
                padding: 5rem 3rem;
                text-align: center;
                border: 1px solid var(--light-gold);
            }

            .no-products i {
                color: var(--wood-light);
                font-size: 5rem;
                margin-bottom: 1.5rem;
                opacity: 0.6;
            }

            .no-products h3 {
                font-family: 'Playfair Display', serif;
                color: var(--wood-dark);
                margin-bottom: 1rem;
                font-size: 1.8rem;
            }

            .no-products p {
                color: var(--text-secondary);
                font-family: 'Inter', sans-serif;
                font-size: 1rem;
                line-height: 1.6;
            }

            /* ===== PAGINATION ===== */
            .pagination {
                justify-content: center;
                margin-top: 3.5rem;
                gap: 0.5rem;
            }

            .page-item {
                margin: 0 0.3rem;
            }

            .page-link {
                color: var(--wood-dark);
                background: white;
                border: 1.5px solid var(--light-gold);
                border-radius: 10px;
                padding: 0.6rem 1rem;
                font-weight: 500;
                font-family: 'Inter', sans-serif;
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

            /* ===== RESPONSIVE DESIGN ===== */
            @media (max-width: 1200px) {
                .product-grid {
                    grid-template-columns: repeat(3, 1fr);
                    gap: 1.5rem;
                }
            }

            @media (max-width: 992px) {
                body {
                    padding-top: 80px;
                }

                .container {
                    padding: 2rem 1.5rem;
                }

                h1.h2 {
                    font-size: 2.2rem;
                    margin-bottom: 2rem;
                }

                .sidebar-filters {
                    position: static;
                    margin-bottom: 2rem;
                }

                .product-grid {
                    grid-template-columns: repeat(2, 1fr);
                    gap: 1.5rem;
                }
            }

            @media (max-width: 768px) {
                h1.h2 {
                    font-size: 1.8rem;
                }

                .price-range {
                    flex-direction: column;
                    gap: 0.8rem;
                }

                .price-input {
                    width: 100%;
                }

                .product-grid {
                    grid-template-columns: repeat(2, 1fr);
                    gap: 1rem;
                }

                .position-relative {
                    height: 250px;
                }

                .product-info {
                    padding: 1rem;
                }

                .product-title {
                    font-size: 1rem;
                }

                .product-price {
                    font-size: 1.2rem;
                }
            }

            @media (max-width: 576px) {
                .container {
                    padding: 1.5rem 1rem;
                }

                h1.h2 {
                    font-size: 1.5rem;
                }

                .product-grid {
                    grid-template-columns: 1fr;
                }

                .sidebar-filters {
                    padding: 1.5rem;
                }

                .filter-title {
                    font-size: 1.1rem;
                }

                .position-relative {
                    height: 300px;
                }
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
            <!-- Page Title -->
            <h1 class="h2 mb-4 text-center">${categoryName != null ? categoryName : 'Tất Cả Sản Phẩm'}</h1>

            <div class="row">
                <!-- Sidebar Filters -->
                <div class="col-lg-3">
                    <div class="sidebar-filters">
                        <form action="listproduct" method="GET" id="filterForm">
                            <input type="hidden" name="category" value="${category}">

                            <!-- Price Range Filter -->
                            <div class="filter-section">
                                <div class="filter-title">Khoảng Giá (đ)</div>
                                <div class="d-flex flex-column">
                                    <div class="price-range">
                                        <input type="text" id="minPrice" name="minPrice"
                                               class="form-control me-2 price-input" placeholder="Thấp Nhất" value="${minPrice}">
                                        <span class="align-self-center">-</span>
                                        <input type="text" id="maxPrice" name="maxPrice"
                                               class="form-control ms-2 price-input" placeholder="Cao Nhất" value="${maxPrice}">
                                    </div>

                                    <!-- Price Range Radio Options -->
                                    <div class="price-radio-options">
                                        <div class="radio-option">
                                            <input type="radio" id="price_all" name="priceRange" value="" class="form-check-input"
                                                   ${empty minPrice && empty maxPrice ? 'checked' : ''}>
                                            <label for="price_all" class="form-check-label">Tất cả mức giá</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_under_100k" name="priceRange" value="0-100000" class="form-check-input"
                                                   ${minPrice == '0' && maxPrice == '100000' ? 'checked' : ''}>
                                            <label for="price_under_100k" class="form-check-label">Dưới 100.000đ</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_100k_300k" name="priceRange" value="100000-300000" class="form-check-input"
                                                   ${minPrice == '100000' && maxPrice == '300000' ? 'checked' : ''}>
                                            <label for="price_100k_300k" class="form-check-label">100.000đ - 300.000đ</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_300k_500k" name="priceRange" value="300000-500000" class="form-check-input"
                                                   ${minPrice == '300000' && maxPrice == '500000' ? 'checked' : ''}>
                                            <label for="price_300k_500k" class="form-check-label">300.000đ - 500.000đ</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_500k_1000k" name="priceRange" value="500000-1000000" class="form-check-input"
                                                   ${minPrice == '500000' && maxPrice == '1000000' ? 'checked' : ''}>
                                            <label for="price_500k_1000k" class="form-check-label">500.000đ - 1.000.000đ</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_over_1000k" name="priceRange" value="1000000-99999000" class="form-check-input"
                                                   ${minPrice == '1000000' && maxPrice == '3000000' ? 'checked' : ''}>
                                            <label for="price_over_1000k" class="form-check-label">Trên 1.000.000đ</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Sorting Filter -->
                            <div class="filter-section">
                                <div class="filter-title">Sắp xếp</div>
                                <select name="sortBy" class="form-select">
                                    <option value="">Mặc Định</option>
                                    <option value="price_asc" ${sortBy == 'price_asc' ? 'selected' : ''}>Giá: Thấp đến Cao</option>
                                    <option value="price_desc" ${sortBy == 'price_desc' ? 'selected' : ''}>Giá: Cao xuống Thấp</option>
                                    <option value="newest" ${sortBy == 'newest' ? 'selected' : ''}>Mới nhất</option>
                                </select>
                            </div>

                            <button class="btn btn-primary apply-filters-btn" type="submit">
                                <i class="fa-solid fa-filter me-2"></i>Áp dụng bộ lọc
                            </button>
                        </form>
                    </div>
                </div>

                <!-- Products Content -->
                <div class="col-lg-9">
                    <!-- Products Grid -->
                    <c:choose>
                        <c:when test="${not empty products}">
                            <div class="product-grid">
                                <c:forEach items="${products}" var="product">
                                    <div class="card product-card">
                                        <a href="productdetail?id=${product.id}">
                                            <div class="position-relative">
                                                <img src="${product.thumbnail}" class="product-image" alt="${product.title}">
                                                <c:if test="${product.isCombo}">
                                                    <span class="product-badge">Combo</span>
                                                </c:if>
                                            </div>
                                            <div class="product-info">
                                                <h5 class="product-title">${product.title}</h5>
                                                <div class="product-price">
                                                    <span><fmt:formatNumber value="${product.salePrice}" type="currency" currencySymbol="đ" maxFractionDigits="0"/></span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="no-products">
                                <i class="fas fa-box-open"></i>
                                <h3>Không tìm thấy sản phẩm</h3>
                                <p>Hãy thử điều chỉnh tiêu chí tìm kiếm hoặc duyệt danh mục của chúng tôi</p>
                            </div>
                        </c:otherwise>
                    </c:choose>

                    <!-- Pagination -->
                    <c:if test="${totalPages > 1}">
                        <nav aria-label="Product pagination">
                            <ul class="pagination">
                                <!-- Previous page -->
                                <c:if test="${currentPage > 1}">
                                    <li class="page-item">
                                        <a class="page-link" href="listproduct?page=${currentPage - 1}&keyword=${keyword}&category=${selectedCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}&sortBy=${sortBy}">
                                            <i class="fas fa-chevron-left"></i>
                                        </a>
                                    </li>
                                </c:if>

                                <!-- Page numbers -->
                                <c:forEach begin="1" end="${totalPages}" var="i">
                                    <li class="page-item ${currentPage == i ? 'active' : ''}">
                                        <a class="page-link" href="listproduct?page=${i}&keyword=${keyword}&category=${selectedCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}&sortBy=${sortBy}">
                                            ${i}
                                        </a>
                                    </li>
                                </c:forEach>

                                <!-- Next page -->
                                <c:if test="${currentPage < totalPages}">
                                    <li class="page-item">
                                        <a class="page-link" href="listproduct?page=${currentPage + 1}&keyword=${keyword}&category=${selectedCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}&sortBy=${sortBy}">
                                            <i class="fas fa-chevron-right"></i>
                                        </a>
                                    </li>
                                </c:if>
                            </ul>
                        </nav>
                    </c:if>
                </div>
            </div>
        </div>
        
        <jsp:include page="chat.jsp" />                        
        <jsp:include page="footer.jsp" />
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            function formatNumberInput(input) {
                let value = input.value.replace(/\D/g, '');
                console.log(value);
                if (value) {
                    value = parseInt(value, 10).toLocaleString('vi-VN');
                    input.value = value;
                } else {
                    input.value = '';
                }
            }

            // Chạy sau khi trang đã tải
            document.addEventListener('DOMContentLoaded', function() {
                const minPriceInput = document.getElementById('minPrice');
                const maxPriceInput = document.getElementById('maxPrice');

                minPriceInput.addEventListener('input', function() {
                    formatNumberInput(this);
                    if (minPriceInput.value.replace(/\./g, '') > 99999999) {
                        alert('Giới hạn nhập vào là 99.999.999 đ');
                        $('#minPrice').val('99.999.999');
                    }
                });

                maxPriceInput.addEventListener('input', function() {
                    formatNumberInput(this);
                    if (maxPriceInput.value.replace(/\./g, '') > 99999999) {
                        alert('Giới hạn nhập vào là 99.999.999 đ');
                        $('#maxPrice').val('99.999.999');
                    }
                });
            });

            $(document).ready(function() {
                $('input[name="priceRange"]').on('change', function() {
                    if (this.value) {
                        const [min, max] = this.value.split('-');
                        $('#minPrice').val(parseInt(min, 10).toLocaleString('vi-VN'));
                        $('#maxPrice').val(parseInt(max, 10).toLocaleString('vi-VN'));
                    } else {
                        // All prices option
                        $('#minPrice').val('');
                        $('#maxPrice').val('');
                    }
                });

                $('#minPrice, #maxPrice').on('input', function() {
                    $('input[name="priceRange"]').prop('checked', false);
                });

                // Kiểm duyệt giá nhập vào
                $('#maxPrice').on('change', function() {
                    const maxPrice = parseInt($('#maxPrice').val().replace(/\./g, '')) || 0;
                    const minPrice = parseInt($('#minPrice').val().replace(/\./g, '')) || 0;

                    console.log('minPrice: ' + minPrice);
                    console.log('maxPrice: ' + maxPrice);
                    if (maxPrice < minPrice) {
                        alert('Giá tối đa không được nhỏ hơn giá tối thiểu!');
                        $('#maxPrice').val(parseInt(minPrice, 10).toLocaleString('vi-VN'));
                    }
                });
            });
        </script>
    </body>
</html>
