<%-- 
    Document   : doctor-list
    Created on : Dec 22, 2021, 3:51:58 AM
    Author     : QUYENNGUYEN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        INFORMATION OF NURSES
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                    <th></th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>Dob</th>
                    <th>Sex</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Phone</th>
                     <th></th>
                     <th></th>
                     
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th></th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>Dob</th>
                    <th>Sex</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Phone</th>
                     <th></th>
                     <th></th>
                </tr>
            </tfoot>
            <tbody>
               <c:forEach var="c" items="${listNurse}">
                    <tr>
                         <td>
                            <c:set var="count" value="${count +1}"/>${count}                                         
                        </td>
                        <td>${c.lastName}</td>
                        <td>${c.firstName}</td>
                        <td>${c.dob}</td>
                        <td>${c.sex}</td>
                        <td>${c.email}</td>
                        <td>${c.address}</td>
                        <td>${c.phone}</td>                      
                        <td><button type="button" class="btn btn-success" onclick="location.href='http://localhost:8083/medicWeb/admin/list-nurse/edit-${c.id}'">Update</button></td>
                        <td><button type="button" class="btn btn-danger" onclick="deleteUser(${c.id})">Delete</button></td>
                    </tr>
                    
                </c:forEach>
              
            </tbody>
        </table>
    </div>
</div>


