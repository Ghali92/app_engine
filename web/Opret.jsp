<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 21-11-2016
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opret_User</title>

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

<div class="container">
    <div class="jumbotron">
        <h1>Velkommen til Alis frugt og grønt.</h1>
        <p>I Alis frugt og grønt system giver muligheden for at have god kommunikation, og hold styr på medarbejderens
            vagtdage. </p>
    </div>
    <p>Her kan Admin oprette ny bruger.</p>
</div>


<div class="container">
    <form method="post" action="Admin" class="form-inline">
        <div class="form-group">
            Username:<br>
            <input class="form-control" type="text" name="username">
        </div>

        <br>

        <div class="form-group">
            Password:<br>
            <input class="form-control" type="password" name="password">
        </div>
        <br>

        <div class="form-group">
            Confirm Password:<br>
            <input class="form-control" type="password" name="confirmpassword">
        </div>
        <br>

        <div class="form-group">
            Role:<br>
            <input class="form-control" type="text" name="role">
        </div>
        <br>
        <button class="btn btn-primary" type="submit"> Submit</button>

    </form>
</div>

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
