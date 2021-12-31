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
                <li class="active"><a href="<c:url value="/"/>">Home</a></li>
                
                <li><a href="#">Services</a></li>
                <li><a href="#">Doctor</a></li>
                <li><a href="<c:url value="/contact"/>">Contact</a></li>
            </ul>
        </nav>
        <div class="header_extra d-flex flex-row align-items-center justify-content-end ml-auto">

            <!-- Work Hourse -->
            <div class="work_hours"></div>
            <c:if test="${currentUser.role.role == 'BỆNH NHÂN'}">
             <div class=" button button_1 header_phone"><a href="<c:url value="/contact/patient-${currentUser.id}"/>">Make an Appointment</a></div>
              <div class="button button_1 header_button"><a href="<c:url value="/history/patient"/>">HISTORY</a></div>

                <div class="button button_1 header_button"><a href="<c:url value="/logout"/>">LOG OUT</a></div>
            </c:if>
             <c:if test="${currentUser.id == null}">
                  <div class=" button button_1 header_phone"><a href="<c:url value="/login"/>">Make an Appointment</a></div>
                 <div class="button button_1 header_button"><a href="<c:url value="/register"/>">RIGISTER</a></div>

                <div class="button button_1 header_button"><a href="<c:url value="/login"/>">LOGIN</a></div>
             </c:if>
              <c:if test="${currentUser.role.role == 'ADMIN'}">
                 
                <div class="button button_1 header_button"><a href="<c:url value="/admin"/>">${currentUser.role.role}</a></div>
             </c:if>
                 <c:if test="${currentUser.role.role == 'BÁC SĨ'}">
                 
                <div class="button button_1 header_button"><a href="<c:url value="/doctor"/>">${currentUser.role.role}</a></div>
             </c:if>
                 <c:if test="${currentUser.role.role == 'Y TÁ'}">
                 
                <div class="button button_1 header_button"><a href="<c:url value="/nurse"/>">${currentUser.role.role}</a></div>
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
           <li class="active"><a href="<c:url value="/"/>">Home</a></li>
                
                <li><a href="#">Services</a></li>
                <li><a href="#">Doctor</a></li>
                <li><a href="<c:url value="/contact"/>">Contact</a></li>
        </ul>
    </nav>
    <div class="menu_extra">
        <div class="menu_link"></div>
        <div class="menu_link"><a href="<c:url value="/login"/>">LOGIN</a></div>
        <div class="menu_link"><a href="<c:url value="/contact"/>">Make an Appointment</a></div>
    </div>
    <div class="social menu_social">
        <ul class="d-flex flex-row align-items-center justify-content-start">
            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
        </ul>
    </div>
</div>