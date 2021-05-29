<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/29/2021
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${message != null}'>
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/view/product">Back to product list</a>
</p>
<form action=method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td><label for = "name">Name :</label> </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td><label for = "id">Id :</label> </td>
                <td><input type="text" name="name" id="id"></td>
            </tr>
            <tr>
                <td><label for = "price">Price :</label> </td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
