<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>user</title>
</head>
<body>
Admin har posted det her
</br>
<c:forEach items="${list}" var="data">
    <br>
    <tr>
        <td>${data}</td>
    </tr>
</c:forEach>
</body>

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

</html>
