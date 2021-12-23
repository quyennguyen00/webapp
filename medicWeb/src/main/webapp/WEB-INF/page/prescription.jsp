<%-- 
    Document   : prescription
    Created on : Dec 23, 2021, 9:26:28 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h1 class="text-center text-danger">ĐƠN THUỐC</h1>

<c:if test="${carts == null}">
    <h4 class="text-danger">Khong co san pham nao trong gio</h4>
</c:if>
    
<c:if test="${carts != null}">
    <table class="table">
        <tr>
            <th>STT</th>
            <th>Ten thuốc</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th></th>
        </tr>
        <c:forEach items="${carts}" var="c">
        <tr id="product${c.productId}">
            <td>${c.productId}</td>
            <td>${c.productName}</td>
            <td>${c.price} VND</td>
            <td>
                <div class="form-group">
                    <input type="number" 
                           onblur="updateCart(this, ${c.productId})"
                           value="${c.quantity}" 
                           class="form-control" />
                </div>
            </td>
            <td>
                <input type="button" 
                       value="Xoa" 
                       onclick="deleteCart(${c.productId})"
                       class="btn btn-danger" />
            </td>
        </tr>
        </c:forEach>
    </table>
    
    <div>
        <h4 class="text-info">Tong tien hoa don: <span id="amountCart">${cartStats.amount}</span> VND</h4>
    </div>
    
    <input type="button" onclick="pay()" value="Thanh toan" class="btn btn-danger" />
    <br><br>
</c:if>
