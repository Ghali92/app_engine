<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 21-11-2016
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opret_User</title>
</head>
<body>
<form method="post" action="OpretServlet">
    Username:<br>
    <input type="text" name="username">
    <br>
    Password:<br>
    <input type="password" name="password">
    <br>
    Confirm Password:<br>
    <input type="password" name="confirmpassword">
    <br>
    Role:<br>
    <input type="text" name="role">
    <br><br>
    <input type="submit">
</form>
</body>
</html>
