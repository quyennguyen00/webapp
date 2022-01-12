<%-- 
    Document   : doctor
    Created on : Dec 23, 2021, 4:19:03 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        DANH SÁCH THÔNG TIN THUỐC
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>

                    <th>Name</th>
                    <th>Element</th>
                    <th>Weight</th>
                    <th>Price</th>
                    <th>Type</th>
                    <th>Manufactory</th>
                    <th>Suppier</th>
                    <th>Catagory</th>
                    <th>Use</th>
                    <th></th>


                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>Name</th>
                    <th>Element</th>
                    <th>Weight</th>
                    <th>Price</th>
                    <th>Type</th>
                    <th>Manufactory</th>
                    <th>Suppier</th>
                    <th>Catagory</th>
                    <th>Use</th>
                    <th></th>
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
                        <th><input type="text" class="form-control mr-3" style=" width: 200px" id ="contentId"  placeholder="how to use"></th>
                        <td><button type="button" class="btn btn-success" onclick="addToPrescription(${c.id}, '${c.name}','${c.typeId.type}')">Add</button></td>

                    </tr>

                </c:forEach>

            </tbody>
        </table>
    </div>
</div>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        INFORMATION OF PRESCIPTION
    </div>

    <section class="order-form my-4 mx-4">
        <div class="container pt-4">

            <div class="row">
                <div class="col-12">
                    <h1>PRESCRIPTION</h1>
                    <hr class="mt-1">
                </div>

                <div class="col-12">

                    <div class="row mt-3 mx-4">

                        <div class=" row col-12">
                            <label class="order-form-label">Select ID of registration</label>
                        </div>
                        <div class="col-12">
                            <select id="sex" path="" class="form-control">                                                                     
                                <c:forEach items="${register}" var="cat">   
                                    <c:if test="${cat.active == 'true'}" >
                                        <option value="${cat.id}"selected >${cat.id}</option>
                                    </c:if>
                                    
                                </c:forEach>                                                                                        
                            </select>

                        </div>

                    </div>
                    <div class="row mx-4">
                        <div class="col-12 mb-2">
                            <label class="order-form-label">Name</label>
                        </div>
                        <div class="col-12 col-sm-6">
                            <input class="order-form-input" placeholder="First">
                        </div>
                        <div class="col-12 col-sm-6 mt-2 mt-sm-0">
                            <input class="order-form-input" placeholder="Last">
                        </div>
                    </div>

                    <div class="row mt-3 mx-4">
                        <div class="col-12">
                            <label class="order-form-label" for="date-picker-example">Date</label>
                        </div>
                        <div class="col-12">
                            <input class="order-form-input datepicker"  type="date"
                                   id="date-picker-example">
                        </div>
                    </div>

                    <div class="row mt-3 mx-4" id="areaMedicine">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th></th>

                                    <th>Medicine</th>
                                    <th>Description</th>
                                    <th>Num</th>
                                    <th>Type</th>
                                    <th></th>
                                    
                                    
                                </tr>
                            </thead>

                            <tbody>
                            
                                <c:forEach var="p" items="${prescriptions}">
                                    <tr id="medicine${p.medicineId}">
                                        <td>
                                            <c:set var="dem" value="${dem +1}"/>${dem}                                         
                                        </td>
                                            <td>${p.name}</td>
                                            <td>${p.description}</td>
                                            <td><input type="number" class="form-control" style=" width: 200px" value="${p.count}" onblur=" updatePres(this,${p.medicineId})"/></td>
                                            <td>${p.type}</td>
                                                          
                                        <td><button type="button" class="btn btn-danger" onclick="deletePres(${p.medicineId})">Delete</button></td>

                                    </tr>

                                </c:forEach>
                           
                                
                                <tr></tr>
                                <tr  >                           
                                    <th></th>
                                    <th></th>
                                    <th >Sum</th>                                                                 
                                    <th> 

                                        <div><span >${dem}</span></div>

                                    </th>                                    

                                </tr>

                            </tbody>
                        </table>
                    </div>



                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="button" id="btnSubmit" onclick="add()" class="btn btn-success d-block mx-auto btn-submit">Submit</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</div>


