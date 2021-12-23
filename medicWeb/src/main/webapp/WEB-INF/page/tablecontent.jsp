<%-- 
    Document   : tablecontent
    Created on : Aug 14, 2021, 12:44:01 AM
    Author     : NGUYEN_NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Dashboard</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active">Dashboard</li>
        </ol>
        <div class="row">
            <div class="col-xl-3 col-md-6">
                <div class="card bg-primary text-white mb-4">
                    <div class="card-body">Primary Card</div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="#">View Details</a>
                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card bg-warning text-white mb-4">
                    <div class="card-body">Warning Card</div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="#">View Details</a>
                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card bg-success text-white mb-4">
                    <div class="card-body">Success Card</div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="#">View Details</a>
                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card bg-danger text-white mb-4">
                    <div class="card-body">Danger Card</div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="#">View Details</a>
                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-6">
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-chart-area me-1"></i>
                        Area Chart Example
                    </div>
                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-chart-bar me-1"></i>
                        Bar Chart Example
                    </div>
                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                </div>
            </div>
        </div>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                DataTable Example
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                        <tr>
                            <th>Tên thuốc</th>
                            <th>Thành phần</th>
                            <th>Hàm lượng</th>
                            <th>Giá</th>
                            <th>Dạng</th>
                            <th>Nhà sản xuất</th>
                            <th>Nhà cung cấp</th>
                            <th>Nhóm thuốc</th>
                            

                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Tên thuốc</th>
                            <th>Thành phần</th>
                            <th>Hàm lượng</th>
                            <th>Giá</th>
                            <th>Dạng</th>
                            <th>Nhà sản xuất</th>
                            <th>Nhà cung cấp</th>
                            <th>Nhóm thuốc</th>
                            
                        </tr>
                    </tfoot>
                    <tbody>
                        <c:forEach var="c" items="${medicine}">
                            <tr>
                                <td>${c.name}</td>
                                <td>${c.element}</td>
                                <td>${c.weight}</td>
                                <td>${c.price}</td>
                                <td>${c.typeId.type}</td>
                                <td>${c.supplierId.name}</td>
                                <td>${c.manufactoryId.factory}</td>
                                <td>${c.categoryId.name}</td>
                                
                            </tr>

                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>



