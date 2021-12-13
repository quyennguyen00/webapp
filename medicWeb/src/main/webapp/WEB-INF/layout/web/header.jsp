<%-- 
    Document   : footer
    Created on : Dec 8, 2021, 3:12:32 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<header class="header trans_400">
    <div class="header_content d-flex flex-row align-items-center jusity-content-start trans_400">

        <!-- Logo -->
        <div class="logo">
            <a href="<c:url value="/"/>">
                <div>Dr<span>T&Q</span></div>
                <div>Plastic Surgery</div>
            </a>
        </div>

        <!-- Main Navigation -->
        <nav class="main_nav">
            <ul class="d-flex flex-row align-items-center justify-content-start">
                <li class="active"><a href="<c:url value="/"/>">Trang chủ</a></li>
                
                <li><a href="services.html">Dịch vụ</a></li>
                <li><a href="blog.html">Bác sĩ</a></li>
                <li><a href="<c:url value="/Contact"/>">Liên hệ</a></li>
            </ul>
        </nav>
        <div class="header_extra d-flex flex-row align-items-center justify-content-end ml-auto">

            <!-- Work Hourse -->
            <div class="work_hours"></div>

            <!-- Header Phone -->
            <div class=" button button_1 header_phone"><a href="<c:url value="/Contact"/>">ĐĂNG KÝ KHÁM</a></div>

            <!-- Appointment Button -->
            <div class="button button_1 header_button"><a href="<c:url value="/Login"/>">ĐĂNG NHẬP</a></div>

            <!-- Header Social -->
            <div class="social header_social">
                <ul class="d-flex flex-row align-items-center justify-content-start">
                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                </ul>
            </div>

            <!-- Hamburger -->
            <div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
        </div>
    </div>
</header>

<!-- Menu -->

<div class="menu_overlay trans_400"></div>
<div class="menu trans_400">
    <div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
    <nav class="menu_nav">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About us</a></li>
            <li><a href="services.html">Services</a></li>
            <li><a href="blog.html">News</a></li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
    </nav>
    <div class="menu_extra">
        <div class="menu_link"></div>
        <div class="menu_link"><a href="#">LOGIN</a></div>
        <div class="menu_link"><a href="#">Make an appointment</a></div>
    </div>
    <div class="social menu_social">
        <ul class="d-flex flex-row align-items-center justify-content-start">
            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
        </ul>
    </div>
</div>