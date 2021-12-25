<%-- 
    Document   : stats-patient
    Created on : Dec 25, 2021, 8:25:26 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                LIST PATIENT
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                        <tr>
                            <th>Last name</th>
                            <th>First name</th>
                            <th>email</th>
                            
                            

                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <<th>Last name</th>
                            <th>First name</th>
                            <th>email</th>
                            
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
