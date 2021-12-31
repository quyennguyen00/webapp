<%-- 
    Document   : add
    Created on : Dec 21, 2021, 10:27:27 PM
    Author     : LocNe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <%--<c:if test="${currentUser.role.role == 'ADMIN'}">--%>
            <div class="nav">
                 <div class="sb-sidenav-menu-heading"></div>
                  
                            <a class="nav-link" href="<c:url value="/admin/error"/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                CALENDER
                            </a>
                  
                <div class="sb-sidenav-menu-heading">LIST USER</div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-user-md"></i></div>
                    DOCTOR
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="<c:url value="/admin/list-doctor"/>">LIST</a>
                        <a class="nav-link" href="<c:url value="/admin/user/add"/>">ADD</a>                                 
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                    <div class="sb-nav-link-icon"><i class="fas fa-user-nurse"></i></div>
                    NURSE
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapsePages" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link" href="<c:url value="/admin/list-nurse"/>">LIST</a>
                        <a class="nav-link" href="<c:url value="/admin/user/add"/>">ADD</a>   
                        
                       
                    </nav>
                </div>
<!--                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapsePatients" aria-expanded="false" aria-controls="pagesCollapseError">
                     <div class="sb-nav-link-icon"><i class="fas fa-hospital-user"></i></div>
                    BỆNH NHÂN
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>-->
                                          
                <div class="sb-sidenav-menu-heading">STATS VÀ MEDICINES</div>
                
                 <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseStats" >
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-line"></i></div>
                    STATS
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseStats" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link" href="<c:url value="/admin/patient"/>">PATIENT</a>
                        <a class="nav-link" href="<c:url value="/admin/turnover"/>">TURNOVER</a>                
                       
                    </nav>
                </div>
                 <a class="nav-link collapsed" href="<c:url value="/admin/medicines"/>" data-bs-toggle="collapse" data-bs-target="#collapseMedicine" >
                    <div class="sb-nav-link-icon"><i class="fas fa-capsules"></i></div>
                    MEDICINES
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseMedicine" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link" href="<c:url value="/admin/medicines"/>">LIST</a>
                        <a class="nav-link" href="<c:url value="/admin/medicines/add-medic"/>">ADD</a>
                      
                       
                    </nav>
                </div>
            </div>
            <%--</c:if>--%>
            <c:if test="${currentUser.role.role == 'BÁC SĨ'}">
                <div class="nav">
                 <div class="sb-sidenav-menu-heading"></div>

                  
                <div class="sb-sidenav-menu-heading"></div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-user-md"></i></div>
                    DOCTOR
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="<c:url value="/doctor"/>">PRESCRIPTION</a>
                        <a class="nav-link" href="<c:url value="/doctor/history-patient"/>">HISTORY</a>                                 
                    </nav>
                </div>
                
            </div>
            </c:if>
             <c:if test="${currentUser.role.role == 'Y TÁ'}">
                <div class="nav">
                 <div class="sb-sidenav-menu-heading"></div>

                  
                <div class="sb-sidenav-menu-heading"></div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-user-md"></i></div>
                    NURSE
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="<c:url value="/nurse"/>">RIGISTRATION</a>

                    </nav>
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="<c:url value="/nurse/examination-card"/>">EXAMINATION CARD</a>

                    </nav>
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="<c:url value="/nurse"/>">PAYMENT</a>

                    </nav>
                </div>
                
            </div>
            </c:if>
                        <c:if test="${currentUser.role.role == 'BỆNH NHÂN'}">
                <div class="nav">
                 <div class="sb-sidenav-menu-heading"></div>
                  
                            <a class="nav-link" href="<c:url value="/history/patient"/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                HISTORY
                            </a>
               
            </div>
            </c:if>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
            DrT&Q
        </div>
    </nav>
</div>
