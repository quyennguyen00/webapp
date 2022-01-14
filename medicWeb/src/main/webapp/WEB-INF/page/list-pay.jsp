<%-- 
    Document   : list-pay
    Created on : Jan 13, 2022, 10:50:58 PM
    Author     : QUYENNGUYEN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:url value="/nurse/payment/add" var="action"/>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        APPOINTMENT 
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
                    <c:if test="${c.active == 'true'}" >
                        <tr>
                            <td>${c.id} </td>
                            <td>${c.email}</td>
                            <td>${c.date}</td>
                            <td>${c.description}</td>
                            <td>${c.userId.lastName}</td>
                            <td>${c.userId.firstName}</td>
                            <td>${c.userId.id}</td>
                            <td><button type="button" class="btn btn-success" onclick="location.href='http://localhost:8083/medicWeb/nurse/payment-${c.id}'">PAY</button></td>
                        </tr>
                    </c:if>
                </c:forEach>

            </tbody>
        </table>
    </div>
</div>
<form:form method="POST" action="${action}" modelAttribute="bill">
<div >
    <form:input type ="hidden" path="registrationId" />

                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="submit" class="btn btn-success d-block mx-auto btn-submit">Submit</button>
                        </div>
                    </div>
    
</div>
</form:form>
