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
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>Velkommen til Ali's frugt og grønt.</h1>
        <p>I Ali's frugt og grønt system giver muligheden for at have god kommunikation, og hold styr på medarbejderens vagtdage. </p>
    </div>
    <p>Her kan Admin slette bruger.</p>
</div>


</br>
<div class="container">
    <c:forEach items="${list}" var="data">
    <form method="get" action="${pageContext.request.contextPath}/Admin?delete=true">

        <c:if test="${null != data.username}">
            <input type="hidden" name="username" value="${data.username}"/>
        </c:if>

        <br>
        <td>${data.username}</td>
        <td>${data.role}</td>
        <button name="deleteButton" value="delete" type="submit" onclick="alert('Slettet!')" >Slet Bruger</button>
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
                        <a href="#">Franchisee </a> | <a target="_blank" href="http://www.google.com"> Google</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
