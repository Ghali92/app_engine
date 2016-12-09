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

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
<div class="container">
    <div class="jumbotron">
        <h1>Velkommen til Ali's frugt og grønt.</h1>
        <div class="g-item">
            <img class="img-responsive img-rounded" src="\pics\frugt.PNG"/>
        </div>
        <br>
        <p>I Ali's frugt og grønt system giver muligheden for at have god kommunikation, og hold styr på medarbejderens vagtdage. </p>
    </div>
    <p>Her ser vi admin menuen, hvor man kan vælge de forskellige funktioner.</p>
</div>

<div class="container">

    <div class="row">
        <div class="col-md-3">
            <div class="well">
                <form action="${pageContext.request.contextPath}/Admin?opret=true" method="get">
                    <button class="btn btn-primary" type="button1" name="button1" type="submit" value="opret">Opret
                        Bruger
                    </button>
                    <h4>I opret bruger kan man komme ind, og indtaste en ny bruger.</h4>
                </form>
            </div>
        </div>


        <div class="col-md-3">
            <div class="well">
                <form action="${pageContext.request.contextPath}/Admin?slet=true" method="get">
                    <button class="btn btn-danger" type="button2" name="button2" type="submit" value="slet">Slet
                        Bruger
                    </button>
                    <h4>I denne knap kan man slette en eksisterende bruger.</h4>
                </form>
            </div>
        </div>


        <div class="col-md-3">
            <div class="well">
                <form action="${pageContext.request.contextPath}/Admin?opdater=true" method="get">
                    <button class="btn btn-primary" type="button3" name="button3" type="submit" value="opdater">Opdater
                        bruger
                    </button>
                    <h4>I denne knap kan man opdatere de eksisterende brugere.</h4>
                </form>
            </div>
        </div>


        <div class="col-md-3">
            <div class="well">
                <form action="${pageContext.request.contextPath}/Admin?skema=true" method="get">
                    <button class="btn btn-primary" type="button4" name="button4" type="submit" value="vis_skema">Vis
                        Skema
                    </button>
                    <h4>Her kan admin komme ind, og se vagtplanen.</h4>
                </form>
            </div>
        </div>
    </div>
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

