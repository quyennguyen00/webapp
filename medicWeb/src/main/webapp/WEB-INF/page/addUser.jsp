<%-- 
    Document   : addUser
    Created on : Dec 19, 2021, 2:53:10 AM
    Author     : QUYENNGUYEN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="card mb-4">
    <div class="card-header">       
        <h4>THÊM - CẬP NHẬT THÔNG TIN NGƯỜI DÙNG</h4>
    </div>
</div>
<c:url value="/admin/user/save" var="action"/>


<form:form method="POST" action="${action}" modelAttribute="user">
    <div class="container row">
        <div class="col"><!--left col-->
            <div class="text-center">
                <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                <input type="file" class="text-center center-block file-upload">
            </div></hr><br>
        </div><!--/col-3-->
        <div class="col-sm-9"> 
            <div class="tab-content">
                <div class="tab-pane active" >
                    <div class="form-group">   
                        <form:input type="hidden" path="id"/>
                        <div class="col-xs-6">
                            <label for="lastName"><h5>Họ:</h5></label>
                            <form:input type="text" class="form-control"  path="lastName" name="lastName" id="lastName" placeholder="Nhập thông tin" />
                            <form:errors path="lastName" cssClass="text-danger" element="div"  ></form:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="firstName"><h5>Tên:</h5></label>
                            <form:input type="text" class="form-control" name="firstName"  path="firstName"
                                        id="firstName" placeholder="Nhập thông tin"/>
                            <form:errors path="firstName" cssClass="text-danger" element="div"  ></form:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">                        
                                <label for="dob"><h5>Ngày sinh</h5></label>
                                <div class="form-group">
                                <form:input type="date" cssClass="form-control" id="dob" path="dob"/>
                                <c:if test="${errDobMsg!=null}">
                                    <div class="alert alert-danger">${errDobMsg}</div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-6">
                            <label for="sex"><h5>Giới tính</h5></label>
                            <c:if test="${user.sex == 'Nam' || user.sex == null}">
                                <form:select id="sex" path="sex" class="form-control">                                                                    
                                    <option value="Nam" selected >Nam</option>
                                    <option value="Nữ"  >Nữ</option>
                                    <option value="Khác"  >Khác</option>                                                                                        
                                </form:select>
                            </c:if>     
                            <c:if test="${user.sex == 'Nữ'}">
                                <form:select id="sex" path="sex" class="form-control">                                                                    
                                    <option value="Nam" >Nam</option>
                                    <option value="Nữ" selected  >Nữ</option>
                                    <option value="Khác"  >Khác</option>                                                                                        
                                </form:select>
                            </c:if>  
                             <c:if test="${user.sex == 'Khác' }">
                                <form:select id="sex" path="sex" class="form-control">                                                                    
                                    <option value="Nam" >Nam</option>
                                    <option value="Nữ"  >Nữ</option>
                                    <option value="Khác"  selected >Khác</option>                                                                                        
                                </form:select>
                            </c:if> 
                                    
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-6">
                            <label for="phone"><h5>Số điện thoại:</h5></label>
                            <form:input type="tel" class="form-control" name="phone" path="phone" id="phone" placeholder="Nhập số điện thoại" />
                            <form:errors path="phone" cssClass="text-danger" element="div"  ></form:errors>
                            </div>
                        </div>


                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email"><h5>Email</h5></label>
                            <form:input type="email" class="form-control" path="email" id="email" placeholder="you@email.com"/>
                            <form:errors path="email" cssClass="text-danger" element="div"  ></form:errors>
                             <c:if test="${errEmailMsg!=null}">
                                    <div class="text text-danger">${errEmailMsg}</div>
                                </c:if>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="address"><h5>Địa chỉ:</h5></label>
                            <form:input type="address" class="form-control" path="address" placeholder="Nhập thông tin" />
                            <form:errors path="address" cssClass="text-danger" element="div"  ></form:errors>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone"><h5>Chức vụ:</h5></label>
                            <form:select id="cate" path="role" class="form-control">
                                <c:forEach items="${roles}" var="cat">
                                    <c:if test="${cat.id == user.role.id}">
                                        <option value="${cat.id}" selected >${cat.role}</option>
                                    </c:if>
                                    <c:if test="${cat.id != user.role.id}">
                                        <option value="${cat.id}" >${cat.role}</option>
                                    </c:if>

                                </c:forEach>
                            </form:select>
                        </div>
                    </div>
                    <div class="form-group">
                         
                        <div class="col-xs-6">
                            <label for="text"><h5>Mật khẩu :</h5></label> 
                            <form:input type="password" class="form-control" path="password" id="password" placeholder="Nhập password" /> 
                            <c:if test="${errMsg!=null}">
                                    <div class="text text-danger">${errMsg}</div>
                                </c:if>
                          
                        </div>                                       
                        
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> LƯU DỮ LIỆU</button>                              	
                            </div>
                        </div>

                        <hr>      
                    </div>
                </div>
            </div>
        </div><!--/col-9-->
    </form:form>