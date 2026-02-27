<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Mộc Đăng - Đèn trang trí thủ công</title>
            <link rel="icon" href="${pageContext.request.contextPath}/assests/images/favicon.png" type="image/png">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
                rel="stylesheet">
            <link href="${pageContext.request.contextPath}/assests/css/Header.css" rel="stylesheet" type="text/css" />
            <style>
                /* ============================================
                   PREMIUM HEADER DESIGN - IMPROVED VERSION
                   ============================================ */

                .navbar {
                    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
                    padding: 25px 0;
                    font-family: 'Poppins', sans-serif;
                }

                /* 1. Transparent & Sticky States */
                .navbar-transparent {
                    background: linear-gradient(180deg,
                            rgba(0, 0, 0, 0.7) 0%,
                            rgba(0, 0, 0, 0.4) 50%,
                            rgba(0, 0, 0, 0.2) 100%) !important;
                    backdrop-filter: blur(10px);
                    -webkit-backdrop-filter: blur(10px);
                    box-shadow: none !important;
                    border-bottom: 1px solid rgba(255, 255, 255, 0.15);
                }

                .navbar-scrolled {
                    background-color: rgba(255, 255, 255, 0.98) !important;
                    backdrop-filter: blur(10px);
                    -webkit-backdrop-filter: blur(10px);
                    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
                    padding: 12px 0;
                }

                /* 2. Typography: Space & Weight */
                .navbar-nav .nav-link {
                    text-transform: uppercase;
                    letter-spacing: 2px;
                    font-weight: 500;
                    font-size: 0.85rem;
                    padding: 10px 15px !important;
                    position: relative;
                    transition: all 0.3s ease;
                }

                /* 3. Minimalist Hover Effect (Underline) */
                .navbar-nav .nav-link::after {
                    content: '';
                    position: absolute;
                    width: 0;
                    height: 2px;
                    bottom: 5px;
                    left: 50%;
                    background-color: currentColor;
                    transition: all 0.4s ease;
                    transform: translateX(-50%);
                }

                .navbar-nav .nav-link:hover::after {
                    width: calc(100% - 30px);
                }

                .navbar-nav .nav-link:hover {
                    transform: translateY(-2px);
                }

                /* Text Colors - TRANSPARENT STATE (IMPROVED) */
                .navbar-transparent .nav-link,
                .navbar-transparent .navbar-brand,
                .navbar-transparent .fas,
                .navbar-transparent .cart-icon,
                .navbar-transparent .dropbtn,
                .navbar-transparent .dropbtn-guest i,
                .navbar-transparent .user-info-header span {
                    color: #ffffff !important;
                    text-shadow:
                        0 2px 8px rgba(0, 0, 0, 0.9),
                        0 0 20px rgba(0, 0, 0, 0.6),
                        0 1px 3px rgba(0, 0, 0, 1);
                    font-weight: 600;
                }

                /* Logo Styling - Transparent - FIXED */
                .navbar-transparent .navbar-brand img {
                    filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.8)) drop-shadow(0 0 10px rgba(0, 0, 0, 0.6));
                    transition: filter 0.4s ease;
                }

                /* Text Colors - SCROLLED STATE */
                .navbar-scrolled .nav-link,
                .navbar-scrolled .navbar-brand,
                .navbar-scrolled .fas,
                .navbar-scrolled .cart-icon,
                .navbar-scrolled .dropbtn,
                .navbar-scrolled .navbar-toggler-icon,
                .navbar-scrolled .user-info-header span {
                    color: #2c3e50 !important;
                    text-shadow: none;
                    font-weight: 500;
                }

                .navbar-scrolled .navbar-brand img {
                    filter: none;
                }

                /* Search Form Styling */
                .search-form {
                    position: relative;
                    margin-right: 20px;
                }

                .search-form input {
                    width: 0;
                    padding: 10px 40px 10px 35px;
                    border: none;
                    border-radius: 25px;
                    font-size: 0.9rem;
                    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
                    outline: none;
                }

                .search-form input:focus,
                .search-form input:not(:placeholder-shown) {
                    width: 250px;
                }

                .search-form button {
                    position: absolute;
                    right: 0;
                    top: 50%;
                    transform: translateY(-50%);
                    width: 40px;
                    height: 40px;
                    border: none;
                    border-radius: 50%;
                    cursor: pointer;
                    transition: all 0.3s ease;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }

                .search-form button:hover {
                    transform: translateY(-50%) scale(1.1);
                }

                .search-form button i {
                    font-size: 1rem;
                }

                /* Transparent State */
                .navbar-transparent .search-form input {
                    background: rgba(255, 255, 255, 0.15);
                    border: 1px solid rgba(255, 255, 255, 0.3);
                    color: #ffffff;
                    backdrop-filter: blur(10px);
                }

                .navbar-transparent .search-form input::placeholder {
                    color: rgba(255, 255, 255, 0.7);
                }

                .navbar-transparent .search-form input:focus,
                .navbar-transparent .search-form input:not(:placeholder-shown) {
                    background: rgba(255, 255, 255, 0.25);
                    border-color: rgba(255, 255, 255, 0.5);
                }

                .navbar-transparent .search-form button {
                    background: rgba(255, 255, 255, 0.2);
                    color: #ffffff;
                }

                .navbar-transparent .search-form button:hover {
                    background: rgba(255, 255, 255, 0.35);
                }

                /* Scrolled State */
                .navbar-scrolled .search-form input {
                    background: #f5f5f5;
                    border: 1px solid #e0e0e0;
                    color: #1a1a1a;
                }

                .navbar-scrolled .search-form input::placeholder {
                    color: #999;
                }

                .navbar-scrolled .search-form input:focus,
                .navbar-scrolled .search-form input:not(:placeholder-shown) {
                    background: #ffffff;
                    border-color: #333;
                    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                }

                .navbar-scrolled .search-form button {
                    background: #333;
                    color: #ffffff;
                }

                .navbar-scrolled .search-form button:hover {
                    background: #000;
                }

                /* Mobile Responsive */
                @media (max-width: 991px) {
                    .search-form {
                        margin: 15px 0;
                    }

                    .search-form input {
                        width: 100%;
                        background: #f5f5f5 !important;
                        border: 1px solid #e0e0e0 !important;
                        color: #1a1a1a !important;
                    }

                    .search-form input::placeholder {
                        color: #999 !important;
                    }

                    .search-form button {
                        background: #333 !important;
                        color: #ffffff !important;
                    }
                }

                /* Cart Count Badge */
                .navbar-transparent .cart-count {
                    background: #ff4444;
                    color: #ffffff;
                    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5);
                }

                .navbar-scrolled .cart-count {
                    background: #ff4444;
                    color: #ffffff;
                    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
                }

                /* Dropdown Menu */
                .navbar-nav .dropdown-menu {
                    display: none;
                    position: absolute;
                    background: white;
                    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
                    z-index: 9999;
                    min-width: 220px;
                    border-radius: 8px;
                    padding: 10px 0;
                    border: none;
                    margin-top: 0px;
                    /* Quan trọng: Không có khoảng cách */
                }

                /* Tạo vùng an toàn khi di chuột */
                .navbar-nav .dropdown-menu::before {
                    content: '';
                    position: absolute;
                    top: -10px;
                    left: 0;
                    right: 0;
                    height: 10px;
                    background: transparent;
                }

                .navbar-nav .dropdown:hover>.dropdown-menu {
                    display: block !important;
                    animation: fadeInDown 0.3s ease;
                }

                @keyframes fadeInDown {
                    from {
                        opacity: 0;
                        transform: translateY(-10px);
                    }

                    to {
                        opacity: 1;
                        transform: translateY(0);
                    }
                }

                .navbar-nav .dropdown-submenu {
                    position: relative;
                }

                .navbar-nav .dropdown-submenu>.dropdown-menu {
                    top: -10px;
                    /* Overlap để không bị mất khi di chuột */
                    left: 100%;
                    margin-left: -5px;
                    /* Overlap nhẹ */
                }

                /* Tạo vùng an toàn bên trái cho submenu */
                .navbar-nav .dropdown-submenu>.dropdown-menu::before {
                    content: '';
                    position: absolute;
                    top: 0;
                    left: -10px;
                    width: 10px;
                    height: 100%;
                    background: transparent;
                }

                .navbar-nav .dropdown-submenu:hover>.dropdown-menu {
                    display: block !important;
                }

                /* Đảm bảo có thể hover vào submenu */
                .navbar-nav .dropdown-item {
                    padding: 10px 20px;
                    color: #333;
                    text-decoration: none;
                    display: block;
                    transition: all 0.2s ease;
                    font-size: 0.9rem;
                    cursor: pointer;
                    position: relative;
                }

                .navbar-nav .dropdown-item:hover {
                    background-color: #f8f9fa;
                    color: #000;
                    padding-left: 25px;
                }

                /* Arrow cho submenu */
                .navbar-nav .dropdown-toggle::after {
                    display: inline-block !important;
                    margin-left: 8px;
                    vertical-align: middle;
                    content: "";
                    border-top: 5px solid;
                    border-right: 5px solid transparent;
                    border-bottom: 0;
                    border-left: 5px solid transparent;
                }

                .navbar-nav .dropdown-submenu>a::after {
                    content: "›";
                    float: right;
                    margin-left: 10px;
                    font-size: 1.2rem;
                    font-weight: bold;
                    border: none;
                }

                /* User Dropdown */
                .dropdown-content {
                    background: white;
                    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
                    border-radius: 8px;
                    overflow: hidden;
                }

                .dropdown-content a {
                    transition: all 0.2s ease;
                }

                .dropdown-content a:hover {
                    background-color: #f8f9fa;
                    padding-left: 20px;
                }

                /* Mobile Responsive */
                @media (max-width: 991px) {

                    .navbar-transparent,
                    .navbar-scrolled {
                        background: rgba(255, 255, 255, 0.98) !important;
                    }

                    .navbar-transparent .nav-link,
                    .navbar-transparent .navbar-brand,
                    .navbar-transparent .fas,
                    .navbar-transparent .cart-icon,
                    .navbar-transparent .dropbtn,
                    .navbar-transparent .user-info-header span {
                        color: #1a1a1a !important;
                        text-shadow: none;
                    }

                    .navbar-transparent .navbar-brand img {
                        filter: none;
                    }
                }
            </style>
        </head>

        <body>
            <nav class="navbar navbar-expand-lg fixed-top">
                <div class="container-header">
                    <!-- Logo -->
                    <a class="navbar-brand" href="home">
                        <img src="${pageContext.request.contextPath}\assests\css\mocdanglogo.png" alt="Logo" />
                    </a>

                    <!-- Navbar Toggle Button -->
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!-- Main Navigation -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">


                            <li class="nav-item">
                                <a class="nav-link" href="listproduct">Cửa hàng</a>
                            </li>



                            <!-- Mục "Tất cả" với dropdown phân cấp -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="categoriesDropdown" role="button">
                                    Tất cả
                                </a>
                                <ul class="dropdown-menu">
                                    <c:forEach items="${level1Categories}" var="level1">
                                        <c:if test="${level1.status == 'active'}">
                                            <li class="dropdown-submenu">
                                                <a class="dropdown-item" href="listproduct?category=${level1.id}">
                                                    ${level1.name}
                                                </a>
                                                <c:if test="${not empty level2ByParent[level1.id]}">
                                                    <ul class="dropdown-menu">
                                                        <c:forEach items="${level2ByParent[level1.id]}" var="level2">
                                                            <c:if test="${level2.status == 'active'}">
                                                                <li class="dropdown-submenu">
                                                                    <a class="dropdown-item"
                                                                        href="listproduct?category=${level2.id}">
                                                                        ${level2.name}
                                                                    </a>
                                                                    <c:if test="${not empty level3ByParent[level2.id]}">
                                                                        <ul class="dropdown-menu">
                                                                            <c:forEach
                                                                                items="${level3ByParent[level2.id]}"
                                                                                var="level3">
                                                                                <c:if
                                                                                    test="${level3.status == 'active'}">
                                                                                    <li>
                                                                                        <a class="dropdown-item"
                                                                                            href="listproduct?category=${level3.id}">
                                                                                            ${level3.name}
                                                                                        </a>
                                                                                    </li>
                                                                                </c:if>
                                                                            </c:forEach>
                                                                        </ul>
                                                                    </c:if>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                    </ul>
                                                </c:if>
                                            </li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link" href="customize.jsp">Customize</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="posts">Blogs</a>
                            </li>

                        </ul>

                        <!-- Right Side Items -->
                        <div class="d-flex align-items-center justify-content-end">
                            <!-- Search Form -->
                            <form class="search-form" action="listproduct" method="GET">
                                <input type="text" name="keyword" placeholder="Tìm kiếm:">
                                <button type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </form>

                            <!-- User Actions -->
                            <div class="user-actions">
                                <!-- User Profile/Login -->
                                <div class="user-menu">
                                    <c:choose>
                                        <c:when test="${not empty sessionScope.acc}">
                                            <div class="dropdown">
                                                <button class="dropbtn">
                                                    <img src="${sessionScope.acc.avatar}" alt="avatar"
                                                        class="avatar-img"
                                                        onerror="this.src='https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg'">
                                                    <div class="user-info-header">
                                                        <span class="full-name">${sessionScope.acc.fullName}</span>
                                                        <span class="username">${sessionScope.acc.username}</span>
                                                    </div>
                                                </button>
                                                <div class="dropdown-content">
                                                    <!-- Hiển thị tùy theo vai trò -->
                                                    <c:choose>
                                                        <c:when test="${sessionScope.acc.role == 'admin'}">
                                                            <a
                                                                href="${pageContext.request.contextPath}/admin/dashboard">Trang
                                                                quản trị</a>
                                                            <a
                                                                href="${pageContext.request.contextPath}/marketing/dashboard">Trang
                                                                tiếp thị</a>
                                                            <a href="${pageContext.request.contextPath}/sale/dashboard">Trang
                                                                bán hàng</a>
                                                        </c:when>
                                                        <c:when test="${sessionScope.acc.role == 'marketing'}">
                                                            <a
                                                                href="${pageContext.request.contextPath}/marketing/dashboard">Trang
                                                                tiếp thị</a>
                                                        </c:when>
                                                        <c:when test="${sessionScope.acc.role == 'sale'}">
                                                            <a href="${pageContext.request.contextPath}/sale/dashboard">Trang
                                                                bán hàng</a>
                                                        </c:when>
                                                        <c:otherwise> <!-- customer -->
                                                            <a href="${pageContext.request.contextPath}/myorder">Lịch sử
                                                                đơn hàng</a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <c:choose>
                                                        <c:when test="${sessionScope.acc.role == 'customer'}">
                                                            <a href="${pageContext.request.contextPath}/profile">Trang
                                                                cá nhân</a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a href="${pageContext.request.contextPath}/profile">Hồ
                                                                sơ</a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <!--                                            <a href="${pageContext.request.contextPath}/profile">Trang cá nhân</a>-->
                                                    <a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
                                                </div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="dropdown">
                                                <button class="dropbtn-guest">
                                                    <i class="fas fa-user"></i>
                                                </button>
                                                <div class="dropdown-content">
                                                    <a href="${pageContext.request.contextPath}/login">Đăng nhập</a>
                                                    <a href="${pageContext.request.contextPath}/register">Đăng ký</a>
                                                </div>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <!-- Cart -->
                                <c:if test="${sessionScope.acc.role == 'customer' || sessionScope.acc.role == null}">
                                    <a href="${pageContext.request.contextPath}/cartdetail" class="cart-icon">
                                        <span class="cart-count">${cartCount != null ? cartCount : 0}</span>
                                    </a>
                                </c:if>
                            </div>
                        </div>
                    </div>
            </nav>

            <!-- Font Awesome for icons -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
            <!-- Bootstrap JS -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

            <!-- Custom JavaScript for navbar toggle -->
            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    // Feature: Transparent Header on Scroll
                    var navbar = document.querySelector('.navbar');

                    // Robust check for Homepage (Hero Section existence OR URL check)
                    function isHomepage() {
                        var hero = document.querySelector('.hero-project') || document.querySelector('.hero-slider') || document.querySelector('.hero-section');
                        if (hero) return true;

                        var path = window.location.pathname;
                        return path.endsWith('home') || path.endsWith('homepage.jsp') || path === '/LampShop/' || path === '/';
                    }

                    function updateNavbar() {
                        var onHome = isHomepage();

                        if (window.scrollY > 50) {
                            navbar.classList.add('navbar-scrolled');
                            navbar.classList.remove('navbar-transparent');
                        } else {
                            if (onHome) {
                                navbar.classList.remove('navbar-scrolled');
                                navbar.classList.add('navbar-transparent');
                            } else {
                                navbar.classList.add('navbar-scrolled');
                                navbar.classList.remove('navbar-transparent');
                            }
                        }
                    }

                    navbar.classList.add('fixed-top');
                    updateNavbar();
                    window.addEventListener('scroll', updateNavbar);

                    var navbarToggler = document.querySelector('.navbar-toggler');
                    var navbarCollapse = document.querySelector('.navbar-collapse');

                    navbarToggler.addEventListener('click', function () {
                        var isExpanded = navbarToggler.getAttribute('aria-expanded') === 'true';
                        navbarToggler.setAttribute('aria-expanded', !isExpanded);
                    });

                    document.addEventListener('click', function (event) {
                        var isClickInside = navbarCollapse.contains(event.target) || navbarToggler.contains(event.target);
                        if (!isClickInside && navbarCollapse.classList.contains('show')) {
                            navbarCollapse.classList.remove('show');
                            navbarToggler.classList.add('collapsed');
                            navbarToggler.setAttribute('aria-expanded', 'false');
                        }
                    });

                    var navLinks = document.querySelectorAll('.nav-link:not(.dropdown-toggle)');
                    navLinks.forEach(function (navLink) {
                        navLink.addEventListener('click', function () {
                            if (window.innerWidth < 992) {
                                navbarCollapse.classList.remove('show');
                                navbarToggler.classList.add('collapsed');
                                navbarToggler.setAttribute('aria-expanded', 'false');
                            }
                        });
                    });

                    if (window.innerWidth < 992) {
                        document.querySelectorAll('.dropdown-submenu > a').forEach(function (element) {
                            element.addEventListener('click', function (e) {
                                let nextEl = this.nextElementSibling;
                                if (nextEl && nextEl.classList.contains('dropdown-menu')) {
                                    e.preventDefault();
                                    if (nextEl.style.display == 'block') {
                                        nextEl.style.display = 'none';
                                    } else {
                                        nextEl.style.display = 'block';
                                    }
                                }
                            });
                        });
                    }
                });
            </script>
        </body>

        </html>