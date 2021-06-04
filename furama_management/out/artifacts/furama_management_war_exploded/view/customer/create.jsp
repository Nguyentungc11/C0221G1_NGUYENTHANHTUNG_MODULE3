<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2021
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.css"/>

</head>
<body>
<h1>Create new customer</h1>
<div class="container">
    <form action="/customers?action=create" method="post">
        <div class="form-group row">
            <label for="code" class="col-sm-2 col-form-label" >Code</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" name ="code" id="code">
            </div>
        </div>
        <div class="form-group row">
            <label for="name" class="col-sm-2 col-form-label" >Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" name ="name" id="name">
            </div>
        </div>
        <div class="form-group row">
            <label for="birthday" class="col-sm-2 col-form-label">Birthday</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" name="birthday" id="birthday">
            </div>
        </div>
        <div class="form-group row">
            <label for="gender" class="col-sm-2 col-form-label">Gender</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" name="gender" id="gender">
            </div>
        </div>
        <div class="form-group row">
            <label for="idcard" class="col-sm-2 col-form-label">Id Card</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" name="idcard" id="idcard">
            </div>
        </div>
        <div class="form-group row">
            <label for="phone" class="col-sm-2 col-form-label">Phone</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" name="phone" id="phone">
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" name="email" id="email">
            </div>
        </div>
        <div class="form-group row">
            <label  class="col-sm-2 col-form-label">Type of customer</label>
            <div class="col-sm-10">
                <select name="typeCustomer">
                    <c:forEach items="${typeCustomerList}" var="a">
                        <option value="${a.idTypeCustomer}">${a.nameTypeCustomer}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="address" class="col-sm-2 col-form-label">Address</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" name="address" id="address">
            </div>
        </div>
        <div class="d-flex justify-content-around">
            <a class="btn btn-secondary">Back to list customer</a>
            <button type="submit" class="btn btn-success">Create</button>
        </div>

    </form>
</div>
<script src="../../bootstrapmin/jquery-3.6.0.min.js"></script>
<script src="../../bootstrapmin/bootstrap.min.js"></script>
</body>
</html>
