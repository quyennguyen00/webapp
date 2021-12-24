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
        INFORMATION OF DOCTORS
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ</th>
                    <th>Tên</th>
                    <th>Ngày sinh</th>
                    <th>Giới tính</th>
                    <th>email</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                     <th></th>
                     <th></th>
                     
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>STT</th>
                    <th>Họ</th>
                    <th>Tên</th>
                    <th>Ngày sinh</th>
                    <th>Giới tính</th>
                    <th>email</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                     <th></th>
                     <th></th>
                </tr>
            </tfoot>
            <tbody>
               <c:forEach var="c" items="${listDoctor}">
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
                        <td><button type="button" class="btn btn-success" onclick="location.href='http://localhost:8083/medicWeb/admin/list-doctor/edit-${c.id}'">Sửa</button></td>
                        <td><button type="button" class="btn btn-danger" onclick="deleteUser(${c.id})">Xóa</button></td>
                    </tr>
                    
                </c:forEach>
              
            </tbody>
        </table>
    </div>
</div>


