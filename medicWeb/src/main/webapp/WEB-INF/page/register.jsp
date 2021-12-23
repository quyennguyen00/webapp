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
                                <div class="card-header"><h3 class="text-center font-weight-light my-4">TẠO TÀI KHOẢN</h3></div>
                                <div class="card-body">
                                    <form:form class="login-form" method="post" action="${action}" modelAttribute="user"> 
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3">
                                                    <label for="inputLastName">Họ</label>
                                                    <form:input class="form-control" type="text" path="lastName" placeholder="Họ"/>
                                                    <form:errors path="lastName" cssClass="text-danger" element="div"  ></form:errors>

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3">
                                                    <label for="inputLastName">Tên</label>
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


                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3">
                                                    <label for="inputLastName">Mật khẩu</label>
                                                    <form:input class="form-control" type="password" path="password" placeholder="Nhập mật khẩu"/> 
                                                    <form:errors path="password" cssClass="text-danger" element="div"  ></form:errors>

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3">
                                                    <label for="inputLastName">Nhập lại mật khẩu</label>
                                                    <form:input class="form-control" type="password" path="confirmPassword" placeholder="Nhập lại mật khẩu"/> 
                                                    <form:errors path="confirmPassword" cssClass="text-danger" element="div"  ></form:errors>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="mt-4 mb-0">
                                            <button type="submit" class="btn btn-info btn-block"><div class="d-grid">TẠO TÀI KHOẢN</div></button>
                                        </div>
                                    </form:form>


                                </div>
                                <div class="card-footer text-center py-3">
                                    <div class="small"><a href="<c:url value="/login"/>">Tồn tại tài khoản? Đăng nhập</a></div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </main>
                
        </div>
    </div>
</div>

