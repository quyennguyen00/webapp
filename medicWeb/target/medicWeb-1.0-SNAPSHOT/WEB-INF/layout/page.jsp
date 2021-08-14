<%-- 
    Document   : page
    Created on : Aug 10, 2021, 11:42:09 PM
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        
        
        <tiles:insertAttribute name="topbar"/>
<!--            Header-->
        <tiles:insertAttribute name="header"/>
      <!--            Context-->
       <tiles:insertAttribute name ="content"/>
      <!--            Footer-->
        <tiles:insertAttribute name="footer"/>
        
    </body>
</html>
