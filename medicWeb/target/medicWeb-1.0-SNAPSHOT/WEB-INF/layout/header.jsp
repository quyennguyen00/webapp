<%-- 
    Document   : header
    Created on : Aug 10, 2021, 11:41:19 PM
    Author     : NGUYEN_NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="string" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 
  
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="<c:url value="/"/>">Trang chủ</a>
        </li>
        <c:forEach items="${categories}" var="cate">
            <li class="nav-item">
              <a class="nav-link" href="<c:url value="/?cateId=${cate.id}" />">${cate.name}</a>
            </li>
        </c:forEach>
        <li class="nav-item">
            <a class="nav-link" href="<c:url value="/cart" />">
                Giỏ hàng 
            </a>
        </li>
       
         
    </ul>
</nav>