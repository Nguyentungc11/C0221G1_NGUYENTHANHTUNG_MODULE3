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
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="jquery-3.6.0.min.js"></script>
    <script src="js/bootstrap.js"></script>
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
<table class="table" id="tableCustomer">
    <thead>
    <tr>
        <th scope="col">Code</th>
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
    <c:forEach items="${customers}" var="cus">
        <tr>
            <th scope="row">${cus.code}</th>
            <td>${cus.name}</td>
            <td>${cus.birthday}</td>
            <td>${cus.gender}</td>
            <td>${cus.idCard}</td>
            <td>${cus.phone}</td>
            <td>${cus.email}</td>
            <c:forEach items="${typeCustomer}" var="a">
              <c:if test="${a.idTypeCustomer == cus.customerTypeId}">
                  <td>${a.nameTypeCustomer}</td>
              </c:if>
            </c:forEach>
            <td>${cus.address}</td>
            <td><a class="btn btn-info">Show</a></td>
            <td><a class="btn btn-warning">Edit</a></td>
            <td><a class="btn btn-danger">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="/jquery/jquery-3.5.1.min.js"></script>
<script src="/datatables/js/jquery.dataTables.min.js"></script>
<script src="/datatables/js/dataTables.bootstrap4.min.js"></script>
</body>
<script>
    $(document).ready(function() {
    $('#tableCustomer').dataTable( {
    "dom": 'lrtip',
    "lengthChange": false,
    "pageLength": 2
    } );
    } );
</script>
</html>
