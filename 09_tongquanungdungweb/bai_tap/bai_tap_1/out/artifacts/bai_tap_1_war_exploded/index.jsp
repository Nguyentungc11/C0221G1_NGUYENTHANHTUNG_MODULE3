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
  <label>Product Description</label>
  <input type="text" name="desc" placeholder="description"><br>
  <label>List Price</label>
  <input type="text" name="price" placeholder="0"><br>
  <label>Discount Percent</label>
  <input type="text" name="percent" placeholder="0%"><br>
  <button type="submit" name="submit">Calculator Discount</button>
</form>
</body>
</html>
