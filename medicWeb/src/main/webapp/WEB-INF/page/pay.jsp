<%-- 
    Document   : pay
    Created on : Jan 12, 2022, 9:41:39 AM
    Author     : QUYENNGUYEN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                            <td><button type="button" class="btn btn-success" ><a href="<c:url value="/nurse/payment-${c.id}" />">PAY</a></button></td>
                        </tr>
                    </c:if>
                </c:forEach>

            </tbody>
        </table>
    </div>
</div>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        INFORMATION OF BILL
    </div>

    <section class="order-form my-4 mx-4">
        <div class="container pt-4">

            <div class="row">
                <div class="col-12">
                    <h1>PAYMENT</h1>
                    <hr class="mt-1">
                </div>

                <div class="col-12">

                    <div class="row mt-3 mx-4">


                    </div>
                    <div class="row mx-4">
                        <div class="col-12 mb-2">
                            <label class="order-form-label">Full Name</label>
                        </div>
                        <div class="col-12 col-sm-6">
                                <input class="order-form-input" value="${regis.userId.lastName}">
                            
                        </div>
                        <div class="col-12 col-sm-6 mt-2 mt-sm-0">
                            <input class="order-form-input" value="${regis.userId.firstName}">
                        </div>
                    </div>

                    <div class="row mt-3 mx-4">
                        <div class="col-12">
                            <label class="order-form-label" for="date-picker-example">Date</label>
                        </div>
                        <div class="col-12">
                            <input class="order-form-input datepicker"  type="date"
                                   id="date-picker-example">
                        </div>
                    </div>

                    <div class="row mt-3 mx-4" id="areaMedicine">
                        <table>
                            <thead>
                                <tr>

                                    <th>STT</th>
                                    <th>Service Name</th>
                                    <th>Price</th> 
                                </tr>
                            </thead>

                            <tbody>
                                <c:forEach var="p" items="${payment}">
                                    <tr >
                                        <td>
                                            <c:set var="dem" value="${dem +1}"/>${dem}                                         
                                        </td>
                                        <td>${p[1].getName()}</td>
                                        <td>
                                            <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${p[1].getPrice()}" />  VNĐ</td>
                                    </tr>
                                    </c:forEach>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td>------------</td>
                                    </tr>
                                    <tr>                           
                                        <th></th>
                                        <th >Sum</th>                                                                 
                                        <th> 
                                            <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "" />  VNĐ
                                        </th>                                    

                                    </tr>

                                
                            </tbody>
                        </table>
                    </div>



                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="button" id="btnSubmit" onclick="add()" class="btn btn-success d-block mx-auto btn-submit">Submit</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</div>