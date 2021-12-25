<%-- 
    Document   : contact
    Created on : Dec 12, 2021, 1:06:15 AM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 

<c:url value="/contact/patient-${currentUser.id}" var="action"/>
<div class="contact">
    <div class="container">
        <div class="row">

            <!-- Contact Form -->
            <div class="col-lg-7">
                <div class="contact_form_container">
                    <div class="contact_form_title">ĐĂNG KÝ KHÁM</div>
                    <form:form method="post" action="${action}" class="contact_form" id="contact_form" modelAttribute="registration">
                        <div class=" flex-row align-items-start flex-wrap">
                            <form:input type="hidden" id="id" path="id"/>
                            <form:input type="tel" class="contact_input" placeholder="Số điện thoại" path="phone"/>
                            <form:errors path="phone" cssClass="text-danger" element="div"  ></form:errors>
                            <form:input type="date" path="date"
                            class="form-control datetimepicker-input"
                            placeholder="Check-in date"/>
                      
                            
                        </div>
                            
                            <form:textarea type="text" class="contact form-control" placeholder="Triệu chứng" path="description"/>
                            <form:errors path="description" cssClass="text-danger" element="div"  ></form:errors>
                            
                          
                            <c:if test="${errMsg!=null}">
                                <div class="text-danger">${errMsg}</div>
                            </c:if>
                        <button class="button button_1 contact_button trans_200" type="submit">Đăng ký khám</button>
                    </form:form>
        
                </div>
            </div>

            <!-- Contact Content -->
            <div class="col-lg-4 offset-lg-1 contact_col">
                <div class="contact_content">
                    <div class="contact_content_title">Get in touch with us</div>
                    <div class="contact_content_text">
                        <p>Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feug iat bibendum orci, non elementum urna. Cras sit amet sapien aliquam.</p>
                    </div>
                    <div class="direct_line d-flex flex-row align-items-center justify-content-start">
                        <div class="direct_line_title text-center">Direct Line</div>
                        <div class="direct_line_num text-center">+53 345 7953 324</div>
                    </div>
                    <div class="contact_info">
                        <ul>
                            <li class="d-flex flex-row align-items-start justify-content-start">
                                <div>Address</div>
                                <div>1481 Creekside Lane Avila Beach, CA 931</div>
                            </li>
                            <li class="d-flex flex-row align-items-start justify-content-start">
                                <div>Phone</div>
                                <div>+53 345 7953 32453</div>
                            </li>
                            <li class="d-flex flex-row align-items-start justify-content-start">
                                <div>E-mail</div>
                                <div>medicalDR.T&Q@gmail.com</div>
                            </li>
                        </ul>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="row google_map_row">
            <div class="col">

                <!-- Contact Map -->

                <div class="contact_map">

                    <!-- Google Map -->

                    <div class="map">
                        <div id="google_map" class="google_map">
                            <div class="map_container">
                                <div id="map"></div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>

