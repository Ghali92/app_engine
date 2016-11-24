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
</head>
<body>
<form action = "${pageContext.request.contextPath}/Admin" method="post">

    <button type="button1" name = "button1"  type="submit">Opret Bruger</button>
    <button type="button2" name = "button2"  type="submit">Slet Bruger</button>
    <button type="button3" name = "button3"  type="submit">Opdater bruger</button>

    </form>
</body>
</html>

