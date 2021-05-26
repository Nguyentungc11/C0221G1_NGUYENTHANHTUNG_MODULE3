<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator Discount</title>
</head>
<body>
<form>
    <label>
        <input type="text" value="<%=request.getAttribute("discountAmount")%>" disabled >
    </label>
</form>
</body>
</html>
