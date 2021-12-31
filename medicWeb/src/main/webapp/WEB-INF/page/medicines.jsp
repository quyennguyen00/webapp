<%-- 
    Document   : medicines
    Created on : Dec 13, 2021, 7:59:34 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        INFORMATION OF MEDICINES
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Element</th>
                    <th>Weight</th>
                    <th>Price</th>
                    <th>Type</th>
                    <th>Manufactory</th>
                    <th>Supplier</th>
                     <th>Category</th>
                     <th></th>
                     <th></th>
                     
                </tr>
            </thead>
            <tfoot>
                <tr> <th>ID</th>
                    <th>Name</th>
                    <th>Element</th>
                    <th>Weight</th>
                    <th>Price</th>
                    <th>Type</th>
                    <th>Manufactory</th>
                    <th>Supplier</th>
                     <th>Category</th>
                     <th></th>
                     <th></th>
                </tr>
            </tfoot>
            <tbody>
               <c:forEach var="c" items="${medicine}">
                    <tr>
                        <th>${c.id}</th>
                        <td>${c.name}</td>
                        <td>${c.element}</td>
                        <td>${c.weight}</td>
                        <td>${c.price}</td>
                        <td>${c.typeId.type}</td>
                        <td>${c.supplierId.name}</td>
                        <td>${c.manufactoryId.factory}</td>
                        <td>${c.categoryId.name}</td>
                        <td><button type="button" class="btn btn-success" onclick="location.href='http://localhost:8083/medicWeb/admin/medicines/edit-${c.id}'">Update</button></td>
                        <td><button type="button" class="btn btn-danger" onclick="deleteMedicine(${c.id})">Delete</button></td>
                    </tr>
                    
                </c:forEach>
              
            </tbody>
        </table>
    </div>
</div>


