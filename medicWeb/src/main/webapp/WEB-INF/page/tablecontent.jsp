<%-- 
    Document   : tablecontent
    Created on : Aug 14, 2021, 12:44:01 AM
    Author     : NGUYEN_NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="">
            <a class="" href="index.html">
                          <i class="fas fa-clinic-medical"></i>
                          <span>Home</span>
                      </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="fa fa-user-md"></i>
                          <span>Doctor</span>
                          <span class="fa fa-angle-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="form_component.html">Form Elements</a></li>//
              <li><a class="" href="form_validation.html">Form Validation</a></li>//
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="fas fa-user-nurse"></i>
                          <span>Nurse</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="buttons.html">Buttons</a></li>
              <li><a class="" href="grids.html">Grids</a></li>
            </ul>
          </li>
          <li>
            <a class="" href="widgets.html">
                          <i class="fas fa-capsules"></i>
                          <span>Medic</span>
                      </a>
          </li>
          <li>
            <a class="" href="chart-chartjs.html">
                          <i class="fa fa-bar-chart"></i>
                          <span>Charts</span>
                      </a>

          </li>

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>