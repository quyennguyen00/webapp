<%-- 
    Document   : patient-month
    Created on : Jan 15, 2022, 2:00:09 AM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="card panel">
    <div class="row ">
        <div class="col-md-12 px-2">
            <div >
                <section class="panel">
                
                     <div class="card mb-2">
                        <div class="card-header">
                            <i class="fas fa-chart-area me-1"></i>
                            PATIENT - MONTH
                        </div>
                        <div class="card-body"><canvas id="yearStatsChart" width="90%" height="30"></canvas></div>
                    </div>
                                        <br>
                    <div class="card mb-2">
                        <table class="table table-bordered  mb-0">
                            <thead>
                                <tr>                  

                                    <th>Year</th>
                                    <th>Count </th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="count" value="0"/>
                                <c:forEach items="${monthP}" var="c">
                                    <tr>         
                                        <td> ${c[0]} / ${c[1]}                                   
                                        </td>
                                        <td> ${c[2]}</td>
<!--                                                                                                        -->
                                    </tr>
                                </c:forEach>                            
                            </tbody>
                        </table>
                    </div> 
                </section>
            </div>          
        </div>
        <!-- End of carousel -->
    </div>
</div>

<script>

    let productLables = [], productInfo = [];
    <c:forEach items="${monthP}" var="c">
    productLables.push('${c[0]}/${c[1]}')
    productInfo.push('${c[2]}')
    </c:forEach>

    window.onload = function () {
        yearChart("yearStatsChart", productLables, productInfo)
    }
</script>
