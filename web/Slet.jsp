<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 22-11-2016
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Slet_User</title>
</head>
<body>

Her er dine users :-)
</br>
<form method="post" action="Admin">
<c:forEach items="${list}" var="data">
    <br>
    <tr>
        <td name="delete">${data.username}</td>
        <td>${data.role}</td>
        <button type="submit" onclick="alert('Slettet!')">Slet Bruger</button>

    </tr>
</c:forEach>
    </form>
</body>
</html>
