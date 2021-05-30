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
    <link rel="stylesheet" href="../../bootstrapmin/bootstrap.min.css">

</head>
<body>
<h1>Create new customer</h1>
<div class="container">
    <form action="/customers?action=create" method="post">
        <div class="form-group row">
            <label for="ipname" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" id="ipname">
            </div>
        </div>
        <div class="form-group row">
            <label for="ipday" class="col-sm-2 col-form-label">Birthday</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" id="ipday">
            </div>
        </div>
        <div class="form-group row">
            <label for="ipname1" class="col-sm-2 col-form-label">Gender</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" id="ipname1">
            </div>
        </div>
        <div class="form-group row">
            <label for="ipname2" class="col-sm-2 col-form-label">Id Card</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" id="ipname2">
            </div>
        </div>
        <div class="form-group row">
            <label for="ipname3" class="col-sm-2 col-form-label">Phone</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" id="ipname3">
            </div>
        </div>
        <div class="form-group row">
            <label for="ipname4" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" id="ipname4">
            </div>
        </div>
        <div class="form-group row">
            <label for="ipname5" class="col-sm-2 col-form-label">Type of customer</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" id="ipname5">
            </div>
        </div>
        <div class="form-group row">
            <label for="ipname6" class="col-sm-2 col-form-label">Address</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext" id="ipname6">
            </div>
        </div>
        <div class="d-flex justify-content-around">
            <a class="btn btn-secondary">Back to list customer</a>
            <a class="btn btn-success">Create</a>
        </div>

    </form>
</div>
<script src="../../bootstrapmin/jquery-3.6.0.min.js"></script>
<script src="../../bootstrapmin/bootstrap.min.js"></script>
</body>
</html>
