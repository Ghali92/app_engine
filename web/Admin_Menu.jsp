<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 22-11-2016
  Time: 09:28
  To change this template use File | Settings | File Templates.


  <form method="post" action="Admin">
  <button1 input type="submit" name="buttom1"Opret Bruger= "button 1" />

  class="btn btn-lg btn-primary btn-block"
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Menu</title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover:not(.active) {
            background-color: #111;
        }

        .active {
            background-color: #4CAF50;
        }
    </style>
</head>
<body>
<%--<form action="${pageContext.request.contextPath}/Admin" method="post">--%>
    <%--<ul>--%>
        <%--<button class="active" type="button1" name="button1" type="submit">Opret Bruger</button>--%>
        <%--<button type="button2" name="button2" type="submit">Slet Bruger</button>--%>
        <%--<button type="button3" name="button3" type="submit">Opdater bruger</button>--%>
    <%--</ul>--%>
<%--</form>--%>
<form action="${pageContext.request.contextPath}/Admin?opret=true" method="get">
    <ul>
        <button class="active" type="button1" name="button1" type="submit" value="opret">Opret Bruger</button>
    </ul>
</form>
<form action="${pageContext.request.contextPath}/Admin?slet=true" method="get">
    <ul>
        <button type="button2" name="button2" type="submit" value="slet">Slet Bruger</button>
    </ul>
</form>
<form action="${pageContext.request.contextPath}/Admin?opdater=true" method="get">
    <ul>
        <button type="button3" name="button3" type="submit" value="opdater">Opdater bruger</button>
    </ul>
</form>

</body>
</html>

