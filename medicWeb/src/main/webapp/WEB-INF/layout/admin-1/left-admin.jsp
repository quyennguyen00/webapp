<%-- 
    Document   : left-admin
    Created on : Nov 18, 2021, 11:27:18 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                 <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                XẾP LỊCH
                            </a>
                <div class="sb-sidenav-menu-heading">NGƯỜI DÙNG</div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-user-md"></i></div>
                    BÁC SĨ
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="layout-static.html">Thêm</a>
                        <a class="nav-link" href="layout-sidenav-light.html">Sửa</a>
                        
                        <a class="nav-link" href="layout-sidenav-light.html">Tìm kiếm</a>                      
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                    <div class="sb-nav-link-icon"><i class="fas fa-user-nurse"></i></div>
                    Y TÁ
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapsePages" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link" href="layout-static.html">Thêm</a>
                        <a class="nav-link" href="layout-sidenav-light.html">Sửa</a>
                        
                        <a class="nav-link" href="layout-sidenav-light.html">Tìm kiếm</a>
                        
                       
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapsePatients" aria-expanded="false" aria-controls="pagesCollapseError">
                     <div class="sb-nav-link-icon"><i class="fas fa-hospital-user"></i></div>
                    BỆNH NHÂN
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="pagesCollapsePatients" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                    <nav class="sb-sidenav-menu-nested nav">
                        
                        <a class="nav-link" href="layout-sidenav-light.html">Tìm kiếm</a>
                    </nav>
                </div>                          
                <div class="sb-sidenav-menu-heading">THỐNG KÊ VÀ THUỐC</div>
                
                 <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseStats" >
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-line"></i></div>
                    THỐNG KÊ
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseStats" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link" href="layout-static.html">Bệnh nhân</a>
                        <a class="nav-link" href="layout-sidenav-light.html">Doanh thu</a>                
                       
                    </nav>
                </div>
                 <a class="nav-link collapsed" href="<c:url value="/admin/medicines"/>" data-bs-toggle="collapse" data-bs-target="#collapseMedicine" >
                    <div class="sb-nav-link-icon"><i class="fas fa-capsules"></i></div>
                    QUẢN LÝ THUỐC
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseMedicine" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link" href="<c:url value="/admin/medicines"/>">Trang chủ</a>
                        <a class="nav-link" href="<c:url value="/admin/medicines/add-medic"/>">Thêm</a>
                      
                       
                    </nav>
                </div>
            </div>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
            DrT&Q
        </div>
    </nav>
</div>
