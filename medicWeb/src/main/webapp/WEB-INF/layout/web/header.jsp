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
                <div></div>
            </a>
        </div>

        <!-- Main Navigation -->
        <nav class="main_nav">
            <ul class="d-flex flex-row align-items-center justify-content-start">
                <li class="active"><a href="<c:url value="/"/>">Trang chủ</a></li>
                
                <li><a href="#">Dịch vụ</a></li>
                <li><a href="#">Bác sĩ</a></li>
                <li><a href="<c:url value="/contact"/>">Liên hệ</a></li>
            </ul>
        </nav>
        <div class="header_extra d-flex flex-row align-items-center justify-content-end ml-auto">

            <!-- Work Hourse -->
            <div class="work_hours"></div>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
             <div class=" button button_1 header_phone"><a href="<c:url value="/user/contact"/>">ĐĂNG KÝ KHÁM</a></div>
            </c:if>
             <c:if test="${pageContext.request.userPrincipal.name == null}">
                  <div class=" button button_1 header_phone"><a href="<c:url value="/login"/>">ĐĂNG KÝ KHÁM</a></div>
                 <div class="button button_1 header_button"><a href="<c:url value="/register"/>">ĐĂNG KÝ</a></div>

                <div class="button button_1 header_button"><a href="<c:url value="/login"/>">ĐĂNG NHẬP</a></div>
             </c:if>
             
        </div>
    </div>
</header>

<!-- Menu -->

<div class="menu_overlay trans_400"></div>
<div class="menu trans_400">
    <div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
    <nav class="menu_nav">
        <ul>
           <li class="active"><a href="<c:url value="/"/>">Trang chủ</a></li>
                
                <li><a href="#">Dịch vụ</a></li>
                <li><a href="#">Bác sĩ</a></li>
                <li><a href="<c:url value="/contact"/>">Liên hệ</a></li>
        </ul>
    </nav>
    <div class="menu_extra">
        <div class="menu_link"></div>
        <div class="menu_link"><a href="<c:url value="/login"/>">LOGIN</a></div>
        <div class="menu_link"><a href="<c:url value="/contact"/>">Đăng kí lịch khám</a></div>
    </div>
    <div class="social menu_social">
        <ul class="d-flex flex-row align-items-center justify-content-start">
            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
        </ul>
    </div>
</div>