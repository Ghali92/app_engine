<%--
  Created by IntelliJ IDEA.
  User: test
  Date: 25/08/16
  Time: 20:56
  To change this template use File | Settings | File Templates.
  class="btn btn-lg btn-primary btn-block"
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

<style>
    form {
        border: 3px solid #f1f1f1;
    }

    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    button {
        background-color: #4CAF50;
        color: Black;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
    }

    img.avatar {
        width: 100%;

    }
    img.avatar2 {
        width: 50%;
    border-radius: 50%;
    }
    .container {
        padding: 16px;
    }

    span.psw {
        float: right;
        padding-top: 16px;
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
    }
</style>

<body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<div class="wrapper">
    <form class="form-signin" method="POST" action="MyServlet">

    <!-- http://media.danskemedier.dk/xdoc/logoer/l519.jpg
        http://e-handelsjura.dk/wp-content/uploads/login.jpg
        -->
        <div class="imgcontainer">
            <img src="http://media.danskemedier.dk/xdoc/logoer/l519.jpg" alt="Avatar" class="avatar">
        </div>

        <div class="imgcontainer">
            <img src="http://e-handelsjura.dk/wp-content/uploads/login.jpg" alt="Avatar2" class="avatar2">
        </div>

        <h2 class="form-signin-heading">Please login</h2>
        <input type="text" name="username" placeholder="Email Address" required="" autofocus=""/>
        <input type="password" name="password" placeholder="Password" required=""/>
        <label class="checkbox">
            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
        </label>
        <button type="submit">Login</button>

        <div  style="background-color:#f1f1f1">
            <button type="button" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>

    </form>
</div>

</body>


</html>


