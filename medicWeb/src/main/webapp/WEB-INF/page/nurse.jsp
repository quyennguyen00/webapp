<%-- 
    Document   : page-nurse
    Created on : Dec 30, 2021, 4:51:59 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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


        </tr>
    </c:if>


</c:forEach>

</tbody>
</table>
</div>
</div>
<c:url value="/nurse/examination-card/add" var="action"/>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        INFORMATION OF EXAMINATION CARD
    </div>
        <form:form method="POST" action="${action}" modelAttribute="exam">
        <section class="order-form my-4 mx-4">
            <div class="container pt-4">

                <div class="row">
                    <div class="col-12">
                        <h1> EXAMINATION CARD</h1>
                        <hr class="mt-1">
                    </div>
                    <div class="col-12">

                        <div class="row mt-3 mx-4">
                            <form:input class="form-control" type="hidden" path="id" />
                            <div class=" row col-12">
                                <label class="order-form-label">Select ID of registration</label>
                            </div>
                            <div class="col-12">                         
                                <form:select  id="registrationId" path="registrationId" class="form-control">                                                                     
                                    <c:forEach items="${register}" var="cat">     
                                        <c:if test="${cat.active == 'true'}" >
                                            <option value="${cat.id}" >${cat.id} </option>
                                        </c:if>
                                    </c:forEach>                                     
                                </form:select>

                            </div>

                        </div>
                        <div class="row mt-3 mx-4">
                            <div class="col-12">
                                <label class="order-form-label" >Date</label>
                            </div>
                            <div class="col-12">
                                <form:input type="date" cssClass="form-control" id="dob" path="createdDate"/>
                            </div>
                        </div>
                        <div class="row mt-3 mx-4">
                            <div class="col-12">
                                <label class="order-form-label" >Service</label>
                            </div>
                            <div class="col-12">
                                <form:select id="serviceId" path="serviceId" class="form-control">                                                                     
                                    <c:forEach items="${service}" var="cat">     
                                        <option value="${cat.id}" >${cat.name} </option>
                                    </c:forEach>                                     
                                </form:select>
                            </div>

                        </div>


                        <div class="row mt-3">
                            <div class="col-12">
                                <button type="submit" class="btn btn-success d-block mx-auto btn-submit">SUBMIT</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section> 
    </form:form>

</div>
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
<!--
    <script>

        var date = new Date();

        var day = ("0" + date.getDate()).slice(-2);
        var month = ("0" + (date.getMonth() + 1)).slice(-2);

        var today = date.getFullYear() + "/" + (month) + "/" + (day);

        $('#currentDate').val(today);
    </script>-->
