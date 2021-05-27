<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/28/2021
  Time: 3:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<h1>Simple Calculate</h1>
<form action="/calculator" method="get">
  <table>
    <tr>
      <td>First operand</td>
      <td><input type="text" name="firstNumber"></td>
    </tr>
    <tr>
      <td>Operator</td>
      <td>
        <select name="operator" id="">
          <option value="Addition">Addition</option>
          <option value="Subtraction">Subtraction</option>
          <option value="Multiplication">Multiplication</option>
          <option value="Division">Division</option>
        </select>
      </td>
    </tr>
    <tr>
      <td>Second operand</td>
      <td><input type="text" name="secondNumber"></td>
    </tr>
  </table>
  <input type="submit" value="submit">
</form>
</body>
</html>
