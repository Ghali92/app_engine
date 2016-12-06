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

<c:forEach items="${list}" var="data">
    <form method="get" action="${pageContext.request.contextPath}/Admin?delete=true">
        <input type="hidden" name="username" value="${data.username}"/>
        <br>
        <tr>
            <td>${data.username}</td>
            <td>${data.role}</td>
            <button name="deleteButton" value="delete" type="submit" onclick="alert('Slettet!')" >Slet Bruger</button>
        </tr>
    </form>
</c:forEach>

</body>
</html>
