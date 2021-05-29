<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Create new customer</h1>
<p>
    <c:if test='${message != null}'>
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to customer list</a>
</p>
<form action="/product" method="post">
    <fieldset>
        <legend>Customer information</legend>
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
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
