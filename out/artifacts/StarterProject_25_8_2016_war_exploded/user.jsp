<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>user</title>
</head>
Admin har posted det her
</br>
<c:forEach items="${list}" var="data">
    <br>
    <tr>
        <td>${data}</td>
    </tr>
</c:forEach>
</body>
</html>
