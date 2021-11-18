<%-- 
    Document   : page
    Created on : Aug 10, 2021, 11:42:09 PM
    Author     : NGUYEN_NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%--<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
         <link href="<c:url value="/css/style-admin.css"/>" rel="stylesheet"/>
         
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="<c:url value="/js/scripts.js"/>"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </head>
    <body class="sb-nav-fixed">
<!--            Header-->
        <tiles:insertAttribute name="header"/>
      <!--            Context-->
      <div id="layoutSidenav">
       <tiles:insertAttribute name ="left"/>
       <tiles:insertAttribute name ="content"/>
      </div>
      <!--            Footer-->
        <tiles:insertAttribute name="footer"/>
        
    </body>
</html>
