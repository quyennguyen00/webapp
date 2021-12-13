<%-- 
    Document   : contact
    Created on : Dec 12, 2021, 1:06:15 AM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="home d-flex flex-column align-items-start justify-content-end">
    <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/slide-1.jpg" data-speed="0.8"></div>
    <div class="home_overlay"><img src="images/home_overlay.png" alt=""></div>
    <div class="home_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="home_content">
                        <div class="home_title">Contact</div>
                        <div class="home_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Contact -->

<div class="contact">
    <div class="container">
        <div class="row">

            <!-- Contact Form -->
            <div class="col-lg-7">
                <div class="contact_form_container">
                    <div class="contact_form_title">ĐẶT LỊCH HẸN</div>
                    <form action="#" class="contact_form" id="contact_form">
                        <div class="d-flex flex-row align-items-start justify-content-between flex-wrap">
                            <input type="text" class="contact_input" placeholder="Họ&Tên" required="required">
                            <input type="email" class="contact_input" placeholder="E-mail" required="required">
                            <input type="tel" class="contact_input" placeholder="Số điện thoại" required="required">
                            <select class="contact_select contact_input" required>
                                <option disabled="" selected="">Speciality</option>
                                <option>Speciality 1</option>
                                <option>Speciality 2</option>
                                <option>Speciality 3</option>
                                <option>Speciality 4</option>
                                <option>Speciality 5</option>
                            </select>
                            <select class="contact_select contact_input"required="required">
                                <option disabled="" selected="">Doctor</option>
                                <option>Doctor 1</option>
                                <option>Doctor 2</option>
                                <option>Doctor 3</option>
                                <option>Doctor 4</option>
                                <option>Doctor 5</option>
                            </select>
                            <input type="text" id="datepicker" data-date-format="mm/dd/yyyy"class="contact_input datepicker" placeholder="Ngày" required="required">
                        </div>
                        <button class="button button_1 contact_button trans_200">Đặt lịch hẹn</button>
                        <button class="button button_1 contact_button trans_200">Thiết lập lại</button>
                    </form>
        
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
