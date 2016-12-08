<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 08-12-2016
  Time: 08:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>VagtSkema</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<table>
    <tr>
        <th>Tid</th>
        <th>Mandag</th>
        <th>Tirsdag</th>
        <th>Onsdag</th>
        <th>Torsdag</th>
        <th>Fredag</th>
    </tr>


    <c:forEach items="${list}" var="data">
    <tr>
        <td>${data.tid}</td>
        <td>${data.navn}</td>
        <td>${data.navn}</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </c:forEach>


</table>

</body>
</html>
