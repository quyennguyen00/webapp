<%-- 
    Document   : context
    Created on : Aug 11, 2021, 12:05:30 AM
    Author     : NGUYEN_NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="string" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:url value="/login" var="action"/>

        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">ĐĂNG NHẬP</h3></div>
                                    <div class="card-body">
                                        <form method="POST" action="${action}">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="email" name="username" type="email" placeholder="name@example.com" />
                                                <label for="email">Email </label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="password" name="password" type="password" placeholder="Password" />
                                                <label for="password">Password</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                               <c:if test="${param.Error != null}">
                                                    <div class="text text-danger">
                                                       Email hoặc mật khẩu không đúng!
                                                    </div>
                                                </c:if><c:if test="${param.accessDenied != null}">
                                                    <div class="alert alert-danger">
                                                        Không có quyền truy cập
                                                    </div>
                                                </c:if>
                                                
                                            </div>
                                            <div class="form-floating mb-3">
                                                <button type="submit" class="btn btn-info btn-block"><div class="d-grid">ĐĂNG NHẬP</div></button>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                     
                                                
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="<c:url value="/register"/>">Tạo tài khoản? Đăng kí!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
           

</div>