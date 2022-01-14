<%-- 
    Document   : month-stats
    Created on : Jan 14, 2022, 10:12:24 PM
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
                            TURNOVER - MONTH
                        </div>
                        <div class="card-body"><canvas id="monthStatsChart" width="100%" height="30"></canvas></div>
                    </div>
                                        <br>
                    <div class="card mb-2">
                        <table class="table table-bordered  mb-0">
                            <thead>
                                <tr>                  

                                    <th>Month</th>
                                    <th>Turnover </th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="count" value="0"/>
                                <c:forEach items="${monthStats}" var="c">
                                    <tr>         
                                        <td> ${c[0]}/${c[1]}                                     
                                        </td>
                                        <td> <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${c[2]}"/> đ</td>
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

    let statsLables = [], statsInfo = [];
    <c:forEach items="${monthStats}" var="c">
     statsLables.push('${c[0]}/${c[1]}')
    statsInfo.push('${c[2]}')
    </c:forEach>

    window.onload = function () {
        statsChart("monthStatsChart", statsLables, statsInfo)
    }
</script>