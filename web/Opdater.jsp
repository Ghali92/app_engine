<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 25-11-2016
  Time: 08:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opdater_User</title>
</head>
<body>

</br>

<c:forEach items="${list}" var="data">
    <form method="get" action="${pageContext.request.contextPath}/Admin?Opateret=true">
        <input type="hidden" name="username" value="${data.username}"/>
        <br>
        <td>${data.username}</td>
        <td>${data.role}</td>
        <button name="Opdater" value="Opdateret" type="submit" onclick="alert('Opdateret!')" >Opdater Bruger</button>
        </tr>
    </form>
</c:forEach>
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