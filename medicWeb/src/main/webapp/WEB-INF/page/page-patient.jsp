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
        INFORMATION OF DOCTORS
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                   <th></th>
                    <th>Phone</th>
                    <th>Date</th>
                    <th>Description</th>
                    
                     <th></th>
                     
                     
                </tr>
            </thead>
            <tfoot>
                <tr>
                     <th></th>
                    <th>Phone</th>
                    <th>Date</th>
                    <th>Description</th>
                    
                     <th></th>
                     
                </tr>
            </tfoot>
            <tbody>
               <c:forEach var="c" items="${listRegistraion}">
                    <tr>
                         <td>
                            <c:set var="count" value="${count +1}"/>${count}                                         
                        </td>
                        <td>${c.phone}</td>
                        <td>${c. date}</td>
                        <td>${c.description}</td>
                                        
                        <td><button type="button" class="btn btn-success" onclick="">Hủy</button></td>
                        
                    </tr>
                    
                </c:forEach>
              
            </tbody>
        </table>
    </div>
</div>

