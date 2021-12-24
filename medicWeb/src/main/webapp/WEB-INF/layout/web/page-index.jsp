<%-- 
    Document   : page-index
    Created on : Dec 6, 2021, 12:28:26 AM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--<base href="./" type="text/html">-->
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
   
         <link href="./styles/bootstrap4/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="./css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="./plugins/OwlCarousel/owl.carousel.css" rel="stylesheet" type="text/css" />
        <link href="./plugins/OwlCarousel/owl.theme.default.css" rel="stylesheet" type="text/css" />
        <link href="./plugins/OwlCarousel/animate.css" rel="stylesheet" type="text/css" />
        <link href="./css/style-admin.css" rel="stylesheet" type="text/css" />
        <link href="./styles/main_styles.css" rel="stylesheet" type="text/css" />
        <link href="        <link href="styles/responsive.css" rel="stylesheet" type="text/css" />
styles/responsive.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css" type="text/css"  />
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
        <script>
        $( function() {
          $( "#datepicker" ).datepicker({ dateFormat: 'dd-mm-yy' });
        } );
        </script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
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
        <script src="styles/bootstrap4/popper.js"></script>
        <script src="styles/bootstrap4/bootstrap.min.js"></script>
        <script src="plugins/greensock/TweenMax.min.js"></script>
        <script src="plugins/greensock/TimelineMax.min.js"></script>
        <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
        <script src="plugins/greensock/animation.gsap.min.js"></script>
        <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
        <script src="plugins/OwlCarousel/owl.carousel.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="plugins/parallax-js-master/parallax.min.js"></script>
        <script src="plugins/jquery-datepicker/jquery-ui.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/contact.js"></script>
    </body>

</html>
