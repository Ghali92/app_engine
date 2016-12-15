<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 25-11-2016
  Time: 08:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Opdater_User</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">My first Web App ;-)</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Page 1</a></li>
            <li><a href="/index.jsp">Log in</a></li>
            <li><a href="/logout.jsp">Log out</a></li>
        </ul>
    </div>
</nav>

</br>

<div class="container">
    <div class="jumbotron">
        <h1>Velkommen til Alis frugt og grønt.</h1>
        <p>I Alis frugt og grønt system giver muligheden for at have god kommunikation, og hold styr på medarbejderens
            vagtdage. </p>
    </div>
    <p>Her kan Admin opdater fejl i bruger.</p>
</div>

<div class="container">
    <c:forEach items="${list}" var="data">
        <form method="get" action="${pageContext.request.contextPath}/Admin?opdater=true">
            <input type="hidden" name="username" value="${data.username}"/>
            <br>
            <td>${data.username}</td>
            <td>${data.role}</td>
            <button name="opdater" value="opdater" type="submit" onclick="alert('Opdateret!')">Opdater Bruger</button>
            </tr>
        </form>
    </c:forEach>
</div>
<tr>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="copyright">
                        © 2016, Ali, Ahmed, Mohamed og Ahmad, All rights reserved
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="design">
                        <a href="#">Franchisee </a> | <a target="_blank" href="http://www.google.com">
                        Google</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>