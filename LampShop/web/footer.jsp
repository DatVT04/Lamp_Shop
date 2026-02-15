<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Footer</title>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link
                href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Inter:wght@300;400;500;600&display=swap"
                rel="stylesheet">
            <style>
                /* ===== MỘC ĐĂNG FOOTER COLOR PALETTE ===== */
                :root {
                    --wood-primary: #8B6F47;
                    --wood-dark: #5C4A33;
                    --wood-darker: #3A2E1F;
                    --wood-light: #D4B896;
                    --warm-white: #FFF8F0;
                    --cream: #F5EBE0;
                    --light-gold: #E8D7C3;
                    --accent-orange: #D4875E;
                    --text-light: #E5E5E5;
                    --text-muted: #B8B8B8;
                }

                /* ===== FOOTER CONTAINER ===== */
                .footer-container {
                    background: linear-gradient(180deg, var(--wood-darker) 0%, var(--wood-dark) 100%);
                    color: var(--text-light);
                    padding: 60px 0 30px;
                    font-family: 'Inter', sans-serif;
                    position: relative;
                    overflow: hidden;
                }

                /* Decorative pattern overlay */
                .footer-container::before {
                    content: '';
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    height: 100%;
                    background-image:
                        repeating-linear-gradient(45deg,
                            transparent,
                            transparent 35px,
                            rgba(139, 111, 71, 0.03) 35px,
                            rgba(139, 111, 71, 0.03) 70px);
                    pointer-events: none;
                }

                /* Top decorative border */
                .footer-container::after {
                    content: '';
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    height: 4px;
                    background: linear-gradient(90deg, var(--wood-primary), var(--accent-orange), var(--wood-primary));
                }

                .footer-content {
                    display: flex;
                    justify-content: space-between;
                    max-width: 1400px;
                    margin: 0 auto;
                    padding: 0 2rem;
                    flex-wrap: wrap;
                    gap: 40px;
                    position: relative;
                    z-index: 1;
                }

                /* ===== FOOTER SECTIONS ===== */
                .footer-section {
                    flex: 1;
                    min-width: 250px;
                    margin-bottom: 30px;
                }

                .footer-section h3 {
                    font-family: 'Playfair Display', serif;
                    color: var(--light-gold);
                    font-size: 1.4rem;
                    font-weight: 600;
                    margin-bottom: 25px;
                    position: relative;
                    padding-bottom: 15px;
                    letter-spacing: 0.5px;
                }

                .footer-section h3::after {
                    content: '';
                    position: absolute;
                    bottom: 0;
                    left: 0;
                    width: 60px;
                    height: 3px;
                    background: linear-gradient(90deg, var(--accent-orange), transparent);
                    border-radius: 3px;
                }

                .footer-section h3::before {
                    content: '◆';
                    color: var(--accent-orange);
                    margin-right: 10px;
                    font-size: 0.8rem;
                    vertical-align: middle;
                }

                /* ===== COMPANY INFO ===== */
                .footer-section ul {
                    list-style: none;
                    padding: 0;
                    margin: 0;
                }

                .footer-section ul li {
                    margin-bottom: 15px;
                    color: var(--text-muted);
                    line-height: 1.8;
                    display: flex;
                    align-items: flex-start;
                    gap: 10px;
                    font-size: 0.95rem;
                }

                .footer-section ul li i {
                    color: var(--accent-orange);
                    margin-top: 3px;
                    font-size: 1rem;
                    min-width: 20px;
                }

                .footer-section ul li strong {
                    color: var(--light-gold);
                    font-weight: 500;
                    min-width: 100px;
                }

                .footer-section ul li a {
                    color: var(--text-muted);
                    text-decoration: none;
                    transition: all 0.3s ease;
                    position: relative;
                }

                .footer-section ul li a::after {
                    content: '';
                    position: absolute;
                    bottom: -2px;
                    left: 0;
                    width: 0;
                    height: 1px;
                    background: var(--accent-orange);
                    transition: width 0.3s ease;
                }

                .footer-section ul li a:hover {
                    color: var(--light-gold);
                }

                .footer-section ul li a:hover::after {
                    width: 100%;
                }

                /* Company logo */
                .footer-section ul li img {
                    max-width: 140px;
                    height: auto;
                    margin-bottom: 15px;
                    border-radius: 8px;
                    filter: brightness(0.9);
                    transition: all 0.3s ease;
                }

                .footer-section ul li img:hover {
                    filter: brightness(1.1);
                    transform: scale(1.05);
                }

                /* ===== SOCIAL ICONS ===== */
                .social-icons {
                    display: flex;
                    flex-wrap: wrap;
                    gap: 12px;
                    max-width: 100%;
                }

                .social-icons a {
                    color: var(--text-light);
                    background: rgba(139, 111, 71, 0.3);
                    width: 44px;
                    height: 44px;
                    border-radius: 50%;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    transition: all 0.3s ease;
                    font-size: 18px;
                    border: 2px solid transparent;
                    position: relative;
                    overflow: hidden;
                }

                .social-icons a::before {
                    content: '';
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    background: linear-gradient(135deg, var(--wood-primary), var(--accent-orange));
                    opacity: 0;
                    transition: opacity 0.3s ease;
                    border-radius: 50%;
                }

                .social-icons a i,
                .social-icons a img {
                    position: relative;
                    z-index: 1;
                }

                .social-icons a:hover {
                    transform: translateY(-3px);
                    border-color: var(--accent-orange);
                    box-shadow: 0 5px 15px rgba(212, 135, 94, 0.4);
                }

                .social-icons a:hover::before {
                    opacity: 1;
                }

                .social-icons a img {
                    width: 24px;
                    height: 24px;
                    object-fit: contain;
                    filter: brightness(0) invert(1);
                }

                /* ===== MAP SECTION ===== */
                .footer-map {
                    width: 100%;
                    border-radius: 12px;
                    overflow: hidden;
                    margin-top: 15px;
                    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
                    border: 2px solid var(--wood-primary);
                    transition: all 0.3s ease;
                }

                .footer-map:hover {
                    box-shadow: 0 6px 20px rgba(212, 135, 94, 0.4);
                    transform: translateY(-2px);
                }

                #map {
                    width: 100%;
                    height: 220px;
                }

                /* ===== FOOTER BOTTOM ===== */
                .footer-bottom {
                    max-width: 1400px;
                    margin: 40px auto 0;
                    padding: 25px 2rem 0;
                    border-top: 1px solid rgba(139, 111, 71, 0.3);
                    text-align: center;
                    position: relative;
                    z-index: 1;
                }

                .footer-bottom p {
                    color: var(--text-muted);
                    font-size: 0.9rem;
                    margin: 0;
                    font-family: 'Inter', sans-serif;
                }

                .footer-bottom p strong {
                    color: var(--light-gold);
                    font-weight: 600;
                }

                .footer-bottom p .heart {
                    color: var(--accent-orange);
                    display: inline-block;
                    animation: heartbeat 1.5s ease-in-out infinite;
                }

                @keyframes heartbeat {

                    0%,
                    100% {
                        transform: scale(1);
                    }

                    50% {
                        transform: scale(1.1);
                    }
                }

                /* ===== RESPONSIVE DESIGN ===== */
                @media (max-width: 1200px) {
                    .footer-section {
                        min-width: 220px;
                    }
                }

                @media (max-width: 992px) {
                    .footer-content {
                        gap: 30px;
                    }

                    .footer-section {
                        flex: 1 1 calc(50% - 15px);
                        min-width: 200px;
                    }
                }

                @media (max-width: 768px) {
                    .footer-container {
                        padding: 40px 0 20px;
                    }

                    .footer-content {
                        flex-direction: column;
                        padding: 0 1.5rem;
                        gap: 25px;
                    }

                    .footer-section {
                        width: 100%;
                        margin-bottom: 20px;
                    }

                    .footer-section h3 {
                        font-size: 1.25rem;
                        margin-bottom: 20px;
                    }

                    .social-icons {
                        justify-content: flex-start;
                    }

                    .social-icons a {
                        width: 42px;
                        height: 42px;
                    }

                    #map {
                        height: 200px;
                    }

                    .footer-bottom {
                        margin-top: 30px;
                        padding-top: 20px;
                    }
                }

                @media (max-width: 576px) {
                    .footer-container {
                        padding: 30px 0 15px;
                    }

                    .footer-content {
                        padding: 0 1rem;
                    }

                    .footer-section h3 {
                        font-size: 1.15rem;
                    }

                    .footer-section ul li {
                        font-size: 0.9rem;
                    }

                    .social-icons a {
                        width: 40px;
                        height: 40px;
                        font-size: 16px;
                    }
                }

                /* ===== ACCESSIBILITY ===== */
                .footer-section a:focus,
                .social-icons a:focus {
                    outline: 2px solid var(--accent-orange);
                    outline-offset: 2px;
                }
            </style>
        </head>

        <body>
            <footer class="footer-container">
                <div class="footer-content">
                    <!-- Thông tin công ty -->
                    <div class="footer-section">
                        <h3>Thông tin công ty</h3>
                        <ul>
                            <c:forEach items="${companyInfo}" var="info">
                                <li>
                                    <c:if test="${not empty info.image}">
                                        <img src="${info.image}" alt="${info.fieldName}">
                                    </c:if>
                                    <c:if test="${info.fieldName eq 'logo'}">
                                        <img src="${info.value}" alt="Company Logo">
                                    </c:if>
                                    <c:if test="${info.fieldName ne 'logo'}">
                                        <span><strong>${info.fieldName}:</strong> ${info.value}</span>
                                    </c:if>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <!-- Thông tin liên hệ -->
                    <div class="footer-section">
                        <h3>Thông tin liên hệ</h3>
                        <ul>
                            <c:forEach items="${contactInfo}" var="contact">
                                <li>
                                    <c:choose>
                                        <c:when test="${contact.fieldName eq 'Địa chỉ'}">
                                            <i class="fas fa-map-marker-alt"></i>
                                        </c:when>
                                        <c:when test="${contact.fieldName eq 'Điện thoại'}">
                                            <i class="fas fa-phone"></i>
                                        </c:when>
                                        <c:when test="${contact.fieldName eq 'Email'}">
                                            <i class="fas fa-envelope"></i>
                                        </c:when>
                                        <c:when test="${contact.fieldName eq 'Giờ làm việc'}">
                                            <i class="fas fa-clock"></i>
                                        </c:when>
                                        <c:otherwise>
                                            <i class="fas fa-info-circle"></i>
                                        </c:otherwise>
                                    </c:choose>
                                    <span><strong>${contact.fieldName}:</strong> ${contact.value}</span>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <!-- Liên kết mạng xã hội -->
                    <div class="footer-section">
                        <h3>Kết nối với chúng tôi</h3>
                        <div class="social-icons">
                            <c:forEach items="${socialLinks}" var="social">
                                <c:choose>
                                    <c:when test="${social.fieldName eq 'Facebook'}">
                                        <a href="${social.value}" target="_blank" aria-label="Facebook">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </c:when>
                                    <c:when test="${social.fieldName eq 'Instagram'}">
                                        <a href="${social.value}" target="_blank" aria-label="Instagram">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    </c:when>
                                    <c:when test="${social.fieldName eq 'Twitter'}">
                                        <a href="${social.value}" target="_blank" aria-label="Twitter">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </c:when>
                                    <c:when test="${social.fieldName eq 'Youtube'}">
                                        <a href="${social.value}" target="_blank" aria-label="Youtube">
                                            <i class="fab fa-youtube"></i>
                                        </a>
                                    </c:when>
                                    <c:when test="${social.fieldName eq 'LinkedIn'}">
                                        <a href="${social.value}" target="_blank" aria-label="LinkedIn">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                    </c:when>
                                    <c:when test="${social.fieldName eq 'TikTok'}">
                                        <a href="${social.value}" target="_blank" aria-label="TikTok">
                                            <i class="fab fa-tiktok"></i>
                                        </a>
                                    </c:when>
                                    <c:when test="${social.fieldName eq 'Pinterest'}">
                                        <a href="${social.value}" target="_blank" aria-label="Pinterest">
                                            <i class="fab fa-pinterest-p"></i>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <c:choose>
                                            <c:when test="${not empty social.image}">
                                                <a href="${social.value}" target="_blank"
                                                    aria-label="${social.fieldName}">
                                                    <img src="${social.image}" alt="${social.fieldName}">
                                                </a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="${social.value}" target="_blank"
                                                    aria-label="${social.fieldName}">
                                                    <i class="fas fa-link"></i>
                                                </a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>
                    </div>

                    <!-- Bản đồ cửa hàng -->
                    <div class="footer-section">
                        <h3>Địa chỉ cửa hàng</h3>
                        <div class="footer-map">
                            <iframe
                                src="https://maps.google.com/maps?q=${shopAddressEncoded}&hl=vi&z=14&amp;output=embed"
                                width="100%" height="220" style="border:0;" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                        </div>
                    </div>
                </div>

                <!-- Footer Bottom -->
                <div class="footer-bottom">
                    <p>
                        © 2025 <strong>Mộc Đăng</strong> - Để ánh sáng định hình bản sắc không gian.
                        Made with <span class="heart">♥</span> by Team Mộc Đăng
                    </p>
                </div>
            </footer>
        </body>

        </html>