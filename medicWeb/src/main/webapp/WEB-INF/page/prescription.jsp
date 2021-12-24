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
    
  <section class="order-form my-4 mx-4">
    <div class="container pt-4">

      <div class="row">
        <div class="col-12">
          <h1>You can see my Order Form</h1>
          <span>with some explanation below</span>
          <hr class="mt-1">
        </div>
        <div class="col-12">

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
              <label class="order-form-label">Type of thing you want to order</label>
            </div>
            <div class="col-12">
              <input class="order-form-input" placeholder=" ">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label">Another type of thing you want to order</label>
            </div>
            <div class="col-12">
              <input class="order-form-input" placeholder=" ">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label" for="date-picker-example">Date</label>
            </div>
            <div class="col-12">
              <input class="order-form-input datepicker" placeholder="Selected date" type="text"
                id="date-picker-example">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label">Adress</label>
            </div>
            <div class="col-12">
              <input class="order-form-input" placeholder="Street Address">
            </div>
            <div class="col-12 mt-2">
              <input class="order-form-input" placeholder="Street Address Line 2">
            </div>
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <input class="order-form-input" placeholder="City">
            </div>
            <div class="col-12 col-sm-6 mt-2 pl-sm-0">
              <input class="order-form-input" placeholder="Region">
            </div>
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <input class="order-form-input" placeholder="Postal / Zip Code">
            </div>
            <div class="col-12 col-sm-6 mt-2 pl-sm-0">
              <input class="order-form-input" placeholder="Country">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <div class="form-check">
                <input type="checkbox" class="form-check-input" name="validation" id="validation" value="1">
                <label for="validation" class="form-check-label">I know what I need to know</label>
              </div>
            </div>
          </div>

          <div class="row mt-3">
            <div class="col-12">
              <button type="button" id="btnSubmit" class="btn btn-dark d-block mx-auto btn-submit">Submit</button>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
    
    <input type="button" onclick="pay()" value="Thanh toan" class="btn btn-danger" />
    <br><br>
</c:if>
