<%-- 
    Document   : loginform
    Created on : Sep 1, 2021, 1:08:01 AM
    Author     : NGUYEN_NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
         <link href="<c:url value="/css/style.css"/>" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://unpkg.com/@icon/elegant-icons/elegant-icons.css">
        <link href="<c:url value="css/style-responsive.css"/>" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
        
        
    </head>
    <body>
<!--            Header-->
      <!--            Context-->
       <tiles:insertAttribute name ="content"/>
      <!--            Footer-->
        <tiles:insertAttribute name="footer"/>
        
    </body>
</html>
