<%-- 
    Document   : add
    Created on : Dec 21, 2021, 10:27:27 PM
    Author     : LocNe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="string" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 
  
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="<c:url value="/"/>">HOME</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-2 my-2 my-md-0">
                <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <i class="fas fa-shopping-cart"></i>
                     </div>
            </form>
            </div>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        
                       
                        <c:if test="${currentUser.image != null}">
                            <img src="${currentUser.image}" style="height: 40px; width: 40px"class="avatar"/>${currentUser.role.role}
                        </c:if>
                        <c:if test="${currentUser.image == null}">                        
                             <i class="fa fa-user "></i>${currentUser.role.role}
                        </c:if>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <c:if test="${currentUser.role.role == 'BỆNH NHÂN'}">
                            <!--<li class="dropdown-item" ><i class="fa fa-user" aria-hidden="true"></i></li>-->
                            <li><a class="dropdown-item" href="<c:url value="/patient/setting"/>">Setting</a></li>
                            <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="<c:url value="/logout"/>">Log out</a></li>
                        </c:if>
                         <c:if test="${currentUser.role.role != 'BỆNH NHÂN'}">
                     
                            <li><a class="dropdown-item" href="<c:url value="/logout"/>">Log out</a></li>
                        </c:if>
                        
                    </ul>
                </li>
            </ul>
        </nav>
                            
                            
