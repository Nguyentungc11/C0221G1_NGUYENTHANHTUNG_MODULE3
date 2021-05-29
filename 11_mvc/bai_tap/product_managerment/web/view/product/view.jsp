
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/view/product">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${produc.getName()}</td>
    </tr>
    <tr>
        <td>Id: </td>
        <td>${customer.getId()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${product.getPrice()}</td>
    </tr>
</table>
</body>
</html>
