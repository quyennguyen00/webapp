<%-- 
    Document   : page-index
    Created on : Dec 6, 2021, 12:28:26 AM
    Author     : QUYENNGUYEN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
        <!<!-- CSS -->
        <tiles:insertAttribute name="css" />
    </head>
    <body>
        <div class="colorlib-loader"></div>
        <!<!-- HEADER -->
        <tiles:insertAttribute name="header" />

        <!<!-- CONTENT -->
        <tiles:insertAttribute name="content" />

        <!<!-- FOOTER -->
        <tiles:insertAttribute name="footer" />

        <!<!-- JS -->
        <tiles:insertAttribute name="js" />

    </body>
</html>