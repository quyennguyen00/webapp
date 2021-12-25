<%-- 
    Document   : register
    Created on : Aug 11, 2021, 2:09:00 AM
    Author     : NGUYEN_NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="string" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:url value="/register" var="action"/>
<div>
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h3 class="text-center font-weight-light my-4">CREATE ACCOUNT</h3></div>
                                <div class="card-body">
                                    <form:form class="login-form" method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data"> 
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3">
                                                    <label for="inputLastName">Last Name</label>
                                                    <form:input class="form-control" type="text" path="lastName" placeholder="Họ"/>
                                                    <form:errors path="lastName" cssClass="text-danger" element="div"  ></form:errors>

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3">
                                                    <label for="inputLastName">First Name</label>
                                                    <form:input  class="form-control" type="text" path="firstName" placeholder="Tên"/>   
                                                     <form:errors path="firstName" cssClass="text-danger" element="div"  ></form:errors>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <!--//Java-->
                                           <label for="inputLastName">Email</label>
                                            <form:input class="form-control" type="email" path="email" placeholder="Email"/>
                                            <form:errors path="email" cssClass="text-danger" element="div"  ></form:errors>
                                            <c:if test="${errEmailMsg!=null}">
                                                        <div class="text text-danger">${errEmailMsg}</div>
                                                    </c:if>

                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3">
                                                    <label for="inputLastName">Password</label>
                                                    <form:input class="form-control" type="password" path="password" placeholder="Nhập mật khẩu"/> 
                                                    <c:if test="${errMsg!=null}">
                                                        <div class="text text-danger">${errMsg}</div>
                                                    </c:if>

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3">
                                                    <label for="inputLastName">Confirm password</label>
                                                    <form:input class="form-control" type="password" path="confirmPassword" placeholder="Nhập lại mật khẩu"/> 
                                                    

                                                </div>
                                            </div>
                                        </div>
                                                    <div class="row mb-3">
                                                       <div class="col-md-6">
                                                           <div class="form-floating mb-3"> 
                                                           <form:input path="file" type="file" placeholder="Choose avatar" />
                                                           </div>
                                                       </div>
                                                    </div>
                                        <div class="mt-4 mb-0">
                                            <button type="submit" class="btn btn-info btn-block"><div class="d-grid">CREATE ACCOUNT</div></button>
                                        </div>
                                    </form:form>


                                </div>
                                <div class="card-footer text-center py-3">
                                    <div class="small"><a href="<c:url value="/login"/>">Have an account? Go to login</a></div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </main>
                
        </div>
    </div>
</div>

