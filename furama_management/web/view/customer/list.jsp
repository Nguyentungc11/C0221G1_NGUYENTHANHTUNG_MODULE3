<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2021
  Time: 10:26 PM
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
<h1>Customer List</h1>
<div class="d-flex justify-content-between">
    <div>
        <a class="btn btn-success" href="/customers?action=create">Create new customer</a>
    </div>
    <form class="d-flex">
        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-success" type="submit">Search</button>
    </form>
</div>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Birthday</th>
        <th scope="col">Gender</th>
        <th scope="col">Id Card</th>
        <th scope="col">Phone</th>
        <th scope="col">Email</th>
        <th scope="col">Type of customer</th>
        <th scope="col">Address</th>
        <th scope="col">Show</th>
        <th scope="col">Edit</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td><a class="btn btn-info">Show</a></td>
        <td><a class="btn btn-warning">Edit</a></td>
        <td><a class="btn btn-danger">Delete</a></td>
    </tr>
    </tbody>
</table>
<script src="../../bootstrapmin/jquery-3.6.0.min.js"></script>
<script src="../../bootstrapmin/bootstrap.min.js"></script>
</body>
</html>
