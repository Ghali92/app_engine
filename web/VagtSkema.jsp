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
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>Velkommen til Ali's frugt og grønt.</h1>
        <p>I Ali's frugt og grønt system giver muligheden for at have god kommunikation, og hold styr på medarbejderens vagtdage. </p>
    </div>
    <p>Her ser vi admin menuen, hvor man kan vælge de forskellige funktioner.</p>
</div>
<table class="table table-striped table-hover">
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
        <td>${data.mandag}</td>
        <td>${data.tirsdag}</td>
        <td>${data.onsdag}</td>
        <td>${data.torsdag}</td>
        <td>${data.fredag}</td>
    </tr>
    </c:forEach>


</table>

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
