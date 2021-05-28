<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/28/2021
  Time: 4:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        th{
            border: solid;
            width: 150px;
        }
        td{
            border: solid;
            width: 150px;
        }
    </style>
</head>
<body>
<h3>Danh sách khách hàng</h3>
<table>
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa chỉ</th>
        <th>ẢNh</th>
    </tr>
<c:forEach items="${customerList}" var="customer" >
    <tr style="border: solid">
        <td>${customer.name}</td>
        <td>${customer.birthday}</td>
        <td>${customer.address}</td>
        <td><img src="${customer.image}" style="width:100px;height: 100px"></td>
    </tr>
</c:forEach>
</body>
</html>
