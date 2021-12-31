<%-- 
    Document   : registration
    Created on : Dec 30, 2021, 9:47:47 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
       APPOINTMENT LIST UNCHECKED 
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                   <th>ID</th>
                    <th>Email</th>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>ID User</th>
                     <th></th>
                     
                     
                </tr>
            </thead>
            <tfoot>
                <tr>
                     <th>ID</th>
                    <th>Email</th>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>ID User</th>
                     <th></th>
                     
                </tr>
            </tfoot>
            <tbody>
                 <c:forEach var="c" items="${register}">
                     <c:if test="${c.active == 'false'}" >
                           <tr>
                         <td>${c.id} </td>
                        <td>${c.email}</td>
                        <td>${c.date}</td>
                        <td>${c.description}</td>
                        <td>${c.userId.lastName}</td>
                        <td>${c.userId.firstName}</td>
                        <td>${c.userId.id}</td>         
                          <td><button type="button" class="btn btn-success" onclick="">Confirm</button></td>                    
                    </tr>
                     </c:if>
                  
                    
                </c:forEach>
              
            </tbody>
        </table>
    </div>
</div>