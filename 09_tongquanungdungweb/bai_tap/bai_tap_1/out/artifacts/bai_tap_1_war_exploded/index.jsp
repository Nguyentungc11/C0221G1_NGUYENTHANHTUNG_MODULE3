<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/26/2021
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Calculator Discount</title>
</head>
<body>
<form action="/discount" method="post">
  <p>Product Description</p>
  <input type="text" name="desc">
  <p>Price</p>
  <input type="text" name="price">
  <p>Discount Percent</p>
  <input type="text" name="percent">
  <button type="submit" name="submit">Calculator Discount</button>
</form>
</body>
</html>
