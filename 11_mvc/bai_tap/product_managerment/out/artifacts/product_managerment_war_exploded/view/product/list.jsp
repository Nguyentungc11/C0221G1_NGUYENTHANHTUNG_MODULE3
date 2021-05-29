<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/29/2021
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List product</h1>
<p>
    <a href="/product?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${product}' var="products">
        <tr>
            <td>${products.name}</td>
            <td>${products.price}</td>
            <td><a href="/product?action=edit&id=${products.getId()}">edit</a></td>
            <td><a href="/product?action=delete&id=${products.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
