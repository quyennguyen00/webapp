<%-- 
    Document   : addMedic
    Created on : Dec 19, 2021, 2:53:10 AM
    Author     : QUYENNGUYEN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="card mb-4">
    <div class="card-header">       
        <h4>THÊM - CẬP NHẬT THÔNG TIN VỀ THUỐC</h4>
    </div>
</div>

<c:url value="/admin/medicines/save-medic" var="action"/>
<c:if test="${errMsg!=null}">
    <div class="alert alert-danger">${errMsg}</div>
</c:if>

<form:form method="POST" action="${action}" modelAttribute="medicines">
    <div class="row">
        <div>
            <form:input type="hidden" id="id" path="id"/>
             <div class="col">
            <label for="name">TÊN THUỐC:</label>
            <form:input type="text" class="form-control" id="name" placeholder="Nhập thông tin" path="name"/>
            <form:errors path="name" cssClass="text-danger" element="div"  ></form:errors>
            </div>
            <div class="col">
                <label for="price">Giá:</label>
            <form:input type="number" class="form-control"  path="price" />
            <form:errors path="price" cssClass="text-danger" element="div"  ></form:errors>

            </div>
        </div>
        
        <div class="form-group mb-3">
            <label for="element">THÀNH PHẦN:</label>
        <form:textarea type="text" class="form-control" id="element" placeholder="Nhập thông tin thành phần" path="element" />
        <form:errors path="element" cssClass="text-danger" element="div"  ></form:errors>
        </div>
        <div class="form-group mb-3">
            <label for="weight">HÀM LƯỢNG:</label>
        <form:textarea type="text" class="form-control" id="weight" placeholder="Nhập hàm lượng" path="weight" />
        <form:errors path="weight" cssClass="text-danger" element="div"  ></form:errors>

        </div>
        <div class="form-group mb-3">
            <label for="description">CHÚ THÍCH:</label>
        <form:input type="text" class="form-control" id="description" placeholder="Nhập thông tin" path="description" />
        <form:errors path="description" cssClass="text-danger" element="div"  ></form:errors>

        </div>
        <div class="form-group mb-3">
            <label for="cate">ĐƠN VỊ TÍNH</label>
        <form:select id="cate" path="typeId" class="form-control">
            <c:forEach items="${types}" var="cat">
                <c:if test="${cat.id == medicines.typeId.id}">
                    <option value="${cat.id}" selected >${cat.type}</option>
                </c:if>
                 <c:if test="${cat.id != medicines.typeId.id}">
                    <option value="${cat.id}" >${cat.type}</option>
                </c:if>
                
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group mb-3">
        <label for="cate">NHÀ CUNG CẤP</label>
        <form:select id="cate" path="supplierId" class="form-control">
            <c:forEach items="${suppliers}" var="cat">
                <c:if test="${cat.id == medicines.supplierId.id}">
                    <option value="${cat.id}" selected >${cat.name}</option>
                </c:if>
                <c:if test="${cat.id != medicines.supplierId.id}">
                    <option value="${cat.id}" >${cat.name}</option>
                </c:if>
                
            </c:forEach>
        </form:select>           
    </div>
    <div class="form-group mb-4">
        <label for="cate">NHÀ SẢN XUẤT</label>
        <form:select id="cate" path="manufactoryId" class="form-control">
            <c:forEach items="${manufactories}" var="cat">
                 <c:if test="${cat.id == medicines.manufactoryId.id}">
                    <option value="${cat.id}" selected >${cat.factory}</option>
                </c:if>
                <c:if test="${cat.id != medicines.manufactoryId.id}">
                    <option value="${cat.id}" >${cat.factory}</option>
                </c:if>
            </c:forEach>
        </form:select>
    </div>
    
    <div class="form-group mb-4">
        <label for="cate">NHÓM THUỐC</label>
        <form:select id="cate" path="categoryId" class="form-control">
            <c:forEach items="${categories}" var="cat">
                 <c:if test="${cat.id == medicines.categoryId.id}">
                    <option value="${cat.id}" selected >${cat.name}</option>
                </c:if>
                <c:if test="${cat.id != medicines.categoryId.id}">
                    <option value="${cat.id}" >${cat.name}</option>
                </c:if>
            </c:forEach>
        </form:select>

    </div>
    <div class="form-group">
        <input type="submit" value="LƯU DỮ LIỆU" class="btn btn-success"/>
    </div>
        </div>
</form:form>

