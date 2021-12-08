<%-- 
    Document   : page-index
    Created on : Dec 6, 2021, 12:28:26 AM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
    
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
        <link href="<c:url value="/styles/bootstrap-4.1.2/bootstrap.min.css"/>" rel="stylesheet"/>
         <link href="<c:url value="/css/main-styles.css"/>" rel="stylesheet"/>
         <link href="<c:url value="/css/responsive.css"/>" rel="stylesheet"/>
         <link href="<c:url value="/plugins/font-awesome-4.7.0/fonts/font-awesome.min.css"/>" rel="stylesheet"/>
         <link href="<c:url value="/plugins/OwlCarousel2-2.2.1/owl.carousel.csss"/>" rel="stylesheet"/>
         <link href="<c:url value="/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>" rel="stylesheet"/>
         <link href="<c:url value="/plugins/OwlCarousel2-2.2.1/animate.css"/>" rel="stylesheet"/>
         
<!--         <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
        <link rel="https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.10/slicknav.min.css" />      -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" >
     
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    -->
    </head>
    <body>
        <div class="super_container">
            <!--HEADER-->
             <tiles:insertAttribute name="header"/>
             <!--CONTENT-->
              <tiles:insertAttribute name="content"/>
              <!--FOOOTER-->
              <tiles:insertAttribute name="footer"/>
        </div>
        <script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/jquery-datepicker/jquery-ui.js"></script>
<script src="js/custom.js"></script>
    </body>
    
</html>
