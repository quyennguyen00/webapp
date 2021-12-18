<%-- 
    Document   : addMedic
    Created on : Dec 19, 2021, 2:53:10 AM
    Author     : QUYENNGUYEN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<form:form method="post" action="${action}" modelAttribute="">
    <form:errors path="*" cssClass="alert alert-danger" element="div"/>
    <div class="form-group">
        <label for="name">Ten san pham</label>
        <form:input type="text" id="name" path="name" class="form-control"/>
        <form:errors path="name" cssClass="text-danger" element="div"/>
    </div>
    <div class="form-group">
        <label for="price">Gia</label>
        <form:input type="text" id="price" path="price" class="form-control"/>
        <form:errors path="price" cssClass="text-danger" element="div"/>
    </div>
     <div class="form-group">
        <label for="cate">Danh muc</label>
        <form:select id="cate" path="category" class="form-control">
            <c:forEach items="${categories}" var="cat">
                <option value="${cat.id}">${cat.name}</option>
            </c:forEach>
        </form:select>
        <%--<form:input type="text" id="cate" path="category" cssClass="form-control"/>--%>
        <form:errors path="category" cssClass="text-danger" element="div"/>
    </div>
    
    
   
    <div class="form-group">
        <input type="submit" value="Them san pham" class="btn btn-danger"/>
    </div>
        
</form:form>
