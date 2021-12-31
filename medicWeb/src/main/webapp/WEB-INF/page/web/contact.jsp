<%-- 
    Document   : contact
    Created on : Dec 12, 2021, 1:06:15 AM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../styles/bootstrap4/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="../plugins/OwlCarousel/owl.carousel.css" rel="stylesheet" type="text/css" />
        <link href="../plugins/OwlCarousel/owl.theme.default.css" rel="stylesheet" type="text/css" />
        <link href="../plugins/OwlCarousel/animate.css" rel="stylesheet" type="text/css" />
        <link href="../css/style-admin.css" rel="stylesheet" type="text/css" />
        <link href="../styles/main_styles.css" rel="stylesheet" type="text/css" />
        <link href="../styles/responsive.css" rel="stylesheet" type="text/css" />

        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css" type="text/css"  />
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
   
<c:url value="/contact/patient-${currentUser.id}" var="action"/>
<div class="contact">
    <div class="container">
        <div class="row">

            <!-- Contact Form -->
            <div class="col-lg-7">
                <div class="contact_form_container">
                    <div class="contact_form_title">Make an Appointment</div>
                    <form:form method="post" action="${action}" class="contact_form" id="contact_form" modelAttribute="registration">
                        <div class=" flex-row align-items-start flex-wrap">
                            <form:input type="hidden" id="id" path="id"/>
                            <form:input type="text" class="contact_input" placeholder="Your Email" path="email" value="${currentUser.email}"/>
                            <input type="text" class="contact_input" placeholder="Full Name" value="${currentUser.lastName} ${currentUser.firstName}" />
                            <form:errors path="email" cssClass="text-danger" element="div"  ></form:errors>
                            <form:input type="date" path="date"
                            class="form-control datetimepicker-input"
                            placeholder="Check-in date"/>
                      
                            
                        </div>
                            
                            <form:textarea type="text" class="contact form-control" placeholder="Enter information" path="description"/>
                            <form:errors path="description" cssClass="text-danger" element="div"  ></form:errors>
                            
                          
                            <c:if test="${errMsg!=null}">
                                <div class="text-danger">${errMsg}</div>
                            </c:if>
                        <button class="button button_1 contact_button trans_200" type="submit">Make an Appointment</button>
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
        <script src="../js/jquery-3.2.1.min.js"></script>
        <script src="../styles/bootstrap4/popper.js"></script>
        <script src="../styles/bootstrap4/bootstrap.min.js"></script>
        <script src="../lugins/greensock/TweenMax.min.js"></script>
        <script src="../plugins/greensock/TimelineMax.min.js"></script>
        <script src="../plugins/scrollmagic/ScrollMagic.min.js"></script>
        <script src="../plugins/greensock/animation.gsap.min.js"></script>
        <script src="../plugins/greensock/ScrollToPlugin.min.js"></script>
        <script src="../plugins/OwlCarousel/owl.carousel.js"></script>
        <script src="../plugins/easing/easing.js"></script>
        <script src="../plugins/parallax-js-master/parallax.min.js"></script>
        <script src="../lugins/jquery-datepicker/jquery-ui.js"></script>
        <script src="../js/custom.js"></script>
        <script src="../js/contact.js"></script>

