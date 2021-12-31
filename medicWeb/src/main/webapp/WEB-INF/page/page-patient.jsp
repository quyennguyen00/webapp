<%-- 
    Document   : page-patient
    Created on : Dec 25, 2021, 8:31:46 PM
    Author     : QUYENNGUYEN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
       APPOINTMENT LIST
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                   <th>ID</th>
                    <th>Email</th>
                    <th>Date</th>
                    <th>Description</th>
                    
                     <th></th>
                     
                     
                </tr>
            </thead>
            <tfoot>
                <tr>
                     <th>ID</th>
                    <th>Email</th>
                    <th>Date</th>
                    <th>Description</th>
                    
                     <th></th>
                     
                </tr>
            </tfoot>
            <tbody>
               <c:forEach var="c" items="${listRegistraion}">
                    <tr>
                         <td>${c.id} </td>
                        <td>${c.email}</td>
                        <td>${c. date}</td>
                        <td>${c.description}</td>
                        <c:if test="${c.active == 'false'}" >
                          <td><button type="button" class="btn btn-success" onclick="">Cancel</button></td>   
                        </c:if>               
                       
                        
                    </tr>
                    
                </c:forEach>
              
            </tbody>
        </table>
    </div>
</div>

