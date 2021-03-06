<%-- 
    Document   : index
    Created on : Dec 6, 2021, 12:13:59 AM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!-- Home -->

<div class="home">

    <!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">

				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(images/home.jpg)"></div>
					<div class="home_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_content">
										<div class="home_subtitle"></div>
										<div class="home_title">Medicine made with care</div>
										<div class="home_text">
                                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempus vestibulum mauris quis aliquam. Integer accumsan sodales odio, id tempus velit ullamcorper id. Quisque at erat eu.</p>
                                                                                           </div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				

			</div>

			<!-- Home Slider Dots -->

			
		</div>
</div>

<!-- Intro -->

<div class="intro">
    <div class="container">
        <div class="row">

            <!-- Intro Content -->
            <div class="col-lg-6 intro_col">
                <div class="intro_content">
                    <div class="section_title_container">
                        <div class="section_subtitle">DR T&Q  </div>
                        <div class="section_title"><h2>Welcome to DR T&Q</h2></div>
                    </div>
                    <div class="intro_text">
                        <p>Integer aliquet congue libero, eu gravida odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feugiat bibendum orci, non elementum urna vestibulum in. Nulla facilisi. Nulla egestas vel lacus sed interdum. Sed mollis, orci elementum eleifend tempor, nunc libero porttitor tellus, vel pharetra metus dolor.</p>
                    </div>
                    <div class="milestones">
                        <div class="row milestones_row">

                            <!-- Milestone -->
                            <div class="col-md-4 milestone_col">
                                <div class="milestone">
                                    <div class="milestone_counter" data-end-value="5000" data-sign-before="+">0</div>
                                    <div class="milestone_text">Satisfied Patients</div>
                                </div>
                            </div>

                            <!-- Milestone -->
                            <div class="col-md-4 milestone_col">
                                <div class="milestone">
                                    <div class="milestone_counter" data-end-value="352">0</div>
                                    <div class="milestone_text">Face Liftings</div>
                                </div>
                            </div>

                            <!-- Milestone -->
                            <div class="col-md-4 milestone_col">
                                <div class="milestone">
                                    <div class="milestone_counter" data-end-value="718">0</div>
                                    <div class="milestone_text">Injectibles</div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Intro Form -->
            <div class="col-lg-6 intro_col">
                <div class="intro_form_container">
                    <div class="intro_form_title">Make an Appointment</div>
                    <form action="#" class="intro_form" id="intro_form">
                        <div class="d-flex flex-row align-items-start justify-content-between flex-wrap">
                            <input type="text" class="intro_input" placeholder="Your Name" required="required">
                            <input type="email" class="intro_input" placeholder="Your E-mail" required="required">
                            <input type="tel" class="intro_input" placeholder="Your Phone" required="required">
                            <select class="intro_select intro_input" required>
                                <option disabled="" selected="" value="">Speciality</option>
                                <option>Speciality 1</option>
                                <option>Speciality 2</option>
                                <option>Speciality 3</option>
                                <option>Speciality 4</option>
                                <option>Speciality 5</option>
                            </select>
                            <select class="intro_select intro_input" required="required">
                                <option disabled="" selected="" value="">Doctor</option>
                                <option>Doctor 1</option>
                                <option>Doctor 2</option>
                                <option>Doctor 3</option>
                                <option>Doctor 4</option>
                                <option>Doctor 5</option>
                            </select>
                            <input type="text" id="datepicker" class="intro_input datepicker" placeholder="Date" required="required">
                        </div>
                        <button class="button button_1 intro_button trans_200">make an appointment</button>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Why Choose Us -->

<div class="why">
    <!-- <div class="background_image" style="background-image:url(images/why.jpg)"></div> -->
    <div class="container">
        <div class="row row-eq-height">

            <!-- Why Choose Us Image -->
            <div class="col-lg-6 order-lg-1 order-2">
                <div class="why_image_container">
                    <div class="why_image"><img src="images/why_1.jpg" alt=""></div>
                </div>
            </div>

            <!-- Why Choose Us Content -->
            <div class="col-lg-6 order-lg-2 order-1">
                <div class="why_content">
                    <div class="section_title_container">
                        <div class="section_subtitle">This is Dr Pro</div>
                        <div class="section_title"><h2>Why choose us?</h2></div>
                    </div>
                    <div class="why_text">
                        <p>Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feugiat bibendum orci, non elementum urna vestibulum in. Nulla facilisi. Nulla egestas vel lacus sed interdum. Sed mollis, orci elementum eleifend tempor, nunc libero porttitor tellus, vel pharetra metus dolor.</p>
                    </div>
                    <div class="why_list">
                        <ul>

                            <!-- Why List Item -->
                            <li class="d-flex flex-row align-items-center justify-content-start">
                                <div class="icon_container d-flex flex-column align-items-center justify-content-center">
                                    <div class="icon"><img src="images/svg/icon_1.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                                </div>
                                <div class="why_list_content">
                                    <div class="why_list_title">Only Top Products</div>
                                    <div class="why_list_text">Etiam ac erat ut enim maximus accumsan vel ac nisl</div>
                                </div>
                            </li>

                            <!-- Why List Item -->
                            <li class="d-flex flex-row align-items-center justify-content-start">
                                <div class="icon_container d-flex flex-column align-items-center justify-content-center">
                                    <div class="icon"><img src="images/svg/icon_2.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                                </div>
                                <div class="why_list_content">
                                    <div class="why_list_title">The best Doctors</div>
                                    <div class="why_list_text">Ac erat ut enim maximus accumsan vel ac</div>
                                </div>
                            </li>

                            <!-- Why List Item -->
                            <li class="d-flex flex-row align-items-center justify-content-start">
                                <div class="icon_container d-flex flex-column align-items-center justify-content-center">
                                    <div class="icon"><img src="images/svg/icon_3.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                                </div>
                                <div class="why_list_content">
                                    <div class="why_list_title">Great Feedback</div>
                                    <div class="why_list_text">Etiam ac erat ut enim maximus accumsan vel</div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Call to action -->

<div class="cta">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="cta_container d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
                    <div class="cta_content">
                        <div class="cta_title">Make your appointment today!</div>
                        <div class="cta_text">Etiam ac erat ut enim maximus accumsan vel ac nisl</div>
                    </div>
                    <div class="cta_phone ml-lg-auto">+34 586 778 8892</div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Services -->

<div class="services">
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <div class="section_title_container">
                    <div class="section_subtitle">This is Dr Pro</div>
                    <div class="section_title"><h2>Our Services</h2></div>
                </div>
            </div>
        </div>
        <div class="row services_row">

            <!-- Service -->
            <div class="col-xl-4 col-md-6 service_col">
                <div class="service text-center">
                    <div class="service">
                        <div class="icon_container d-flex flex-column align-items-center justify-content-center ml-auto mr-auto">
                            <div class="icon"><img src="images/svg/icon_4.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                        </div>
                        <div class="service_title">Breast Augmentation</div>
                        <div class="service_text">
                            <p>Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feugiat bibendum orci, non elementum urna.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Service -->
            <div class="col-xl-4 col-md-6 service_col">
                <div class="service text-center">
                    <div class="service">
                        <div class="icon_container d-flex flex-column align-items-center justify-content-center ml-auto mr-auto">
                            <div class="icon"><img src="images/svg/icon_5.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                        </div>
                        <div class="service_title">Breast Augmentation</div>
                        <div class="service_text">
                            <p>Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feugiat bibendum orci, non elementum urna.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Service -->
            <div class="col-xl-4 col-md-6 service_col">
                <div class="service text-center">
                    <div class="service">
                        <div class="icon_container d-flex flex-column align-items-center justify-content-center ml-auto mr-auto">
                            <div class="icon"><img src="images/svg/icon_6.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                        </div>
                        <div class="service_title">Breast Augmentation</div>
                        <div class="service_text">
                            <p>Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feugiat bibendum orci, non elementum urna.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Service -->
            <div class="col-xl-4 col-md-6 service_col">
                <div class="service text-center">
                    <div class="service">
                        <div class="icon_container d-flex flex-column align-items-center justify-content-center ml-auto mr-auto">
                            <div class="icon"><img src="images/svg/icon_7.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                        </div>
                        <div class="service_title">Breast Augmentation</div>
                        <div class="service_text">
                            <p>Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feugiat bibendum orci, non elementum urna.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Service -->
            <div class="col-xl-4 col-md-6 service_col">
                <div class="service text-center">
                    <div class="service">
                        <div class="icon_container d-flex flex-column align-items-center justify-content-center ml-auto mr-auto">
                            <div class="icon"><img src="images/svg/icon_8.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                        </div>
                        <div class="service_title">Breast Augmentation</div>
                        <div class="service_text">
                            <p>Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feugiat bibendum orci, non elementum urna.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Service -->
            <div class="col-xl-4 col-md-6 service_col">
                <div class="service text-center">
                    <div class="service">
                        <div class="icon_container d-flex flex-column align-items-center justify-content-center ml-auto mr-auto">
                            <div class="icon"><img src="images/icon_3.svg" alt="https://www.flaticon.com/authors/prosymbols"></div>
                        </div>
                        <div class="service_title">Breast Augmentation</div>
                        <div class="service_text">
                            <p>Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feugiat bibendum orci, non elementum urna.</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Extra -->

<div class="extra">
    <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/image_1.jpg" data-speed="0.8"></div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="extra_container d-flex flex-row align-items-start justify-content-end">
                    <div class="extra_content">
                        <div class="extra_disc d-flex flex-row align-items-end justify-content-start">
                            <div>30<span>%</span></div>
                            <div>Discount</div>
                        </div>
                        <div class="extra_title">Only in August</div>
                        <div class="extra_text">
                            <p>Nulla facilisi. Nulla egestas vel lacus sed interdum. Sed mollis, orci elementum eleifend tempor, nunc libero porttitor tellus.</p>
                        </div>
                        <div class="button button_1 extra_link trans_200"><a href="#">read more</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Newsletter -->

<div class="newsletter">
    <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/newsletter.jpg" data-speed="0.8"></div>
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <div class="newsletter_title">Subscribe to our newsletter</div>
            </div>
        </div>
        <div class="row newsletter_row">
            <div class="col-lg-8 offset-lg-2">
                <div class="newsletter_form_container">
                    <form action="#" id="newsleter_form" class="newsletter_form">
                        <input type="email" class="newsletter_input" placeholder="Your E-mail" required="required">
                        <button class="newsletter_button">subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>