<%-- 
    Document   : medicines
    Created on : Dec 13, 2021, 7:59:34 PM
    Author     : QUYENNGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                     <th></th>
                     <th></th>
                     
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
                     <th></th>
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
                        <td><button type="button" class="btn btn-success">Sửa</button></td>
                        <td><button type="button" class="btn btn-danger">Xóa</button></td>
                    </tr>
                    
                </c:forEach>
              
            </tbody>
        </table>
    </div>
</div>


<div class="row">


<div class="card mb-4">
    <div class="card-header">       
        <h4>THÊM THÔNG TIN VỀ THUỐC</h4>
    </div>
    <form action="/action_page.php" class="needs-validation" novalidate>
        
        <div class="row">
            <div class="col">
                <label for="name">Tên thuốc:</label>
                <input type="text" class="form-control" id="name" placeholder="Nhập tên thuốc" name="name" required>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <div class="col">
                <label for="price">Giá:</label>
                <input type="number" class="form-control" min="0" name="price" required>
                <div class="valid-feedback">Valid.</div>
                 <div class="invalid-feedback">Please fill out this field.</div>
            </div>
        </div>
        <div class="form-group">
            <label for="element">Thành phần:</label>
            <input type="text" class="form-control" id="element" placeholder="Nhập thông tin" name="element" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <label for="weight">Hàm lượng:</label>
            <input type="text" class="form-control" id="weight" placeholder="Nhập hàm lượng" name="weight" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        
        <div class="form-group ">
           <label for="cate">Nhóm thuốc:</label>
            
        </div>
        <div class="form-group form-check">

            </label>
        </div>
        <button type="submit" class="btn btn-primary">THÊM</button>
    </form>
</div>

</div>

<script>
// Disable form submissions if there are invalid fields
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            // Get the forms we want to add validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
