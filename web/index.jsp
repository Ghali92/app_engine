<%--
  Created by IntelliJ IDEA.
  User: test
  Date: 25/08/16
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hello World Endpoints</title>

    <!-- Bootstrap -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">

    <script src="hello.js"></script>

    <!--  Load the Google APIs Javascript client library -->
    <!--  Then call the init function, which is defined in hello.js -->
    <script src="https://apis.google.com/js/client.js?onload=init"></script>

    <!-- Reference my style sheet, placed under WEB-INF. -->
    <link rel="stylesheet" type="text/css" href="mystyle.css">

</head>

<body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<H1 class="text-center">My First Web App</H1>

<div class="wrapper">
    <form class="form-signin" method="POST" action="MyServlet">
        <h2 class="form-signin-heading">Please login</h2>
        <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus=""/>
        <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
        <label class="checkbox">
            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
    </form>
</div>

</body>


</html>


