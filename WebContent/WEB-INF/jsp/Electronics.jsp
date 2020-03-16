<%--
  Created by IntelliJ IDEA.
  User: George Craciun
  Date: 12/1/2019
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <script src="https://kit.fontawesome.com/bd669c2413.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">



    <style type="text/css">
        #centered{
            text-align: center;
            padding-top: 25%

        }
        hr{
            width: 400px;
            border-top: 1px solid #f8f8f8;
            border-bottom: 1px solid rgb(0,0,0);
        }

        body{
            background: url(https://cdn.pixabay.com/photo/2015/01/20/13/13/ipad-605439__340.jpg);

            background-position: center;
            font-family: 'Open Sans', sans-serif;
            color:white;
        }
        html{
            height: 100%;
        }
        h1{
            font-weight: 700;
            font-size: 5em;
        }
    </style>
    <title> Electronics</title>
</head>

<body>


<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href=""><i class="fas fa-money-bill-alt"></i></i>Gold Lion</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Categories <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Electronics</a></li>
                        <li><a href="#">Fashion</a></li>
                        <li><a href="#">Auto Parts</a></li>
                        <li><a href="#">Sports</a></li>
                        <li><a href="#">Collectibles&Art</a></li>
                        <li><a href="#">Health&Beauty</a></li>
                        <li><a href="#">Home&Garden</a></li>

                    </ul>
                </li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href=/login method="get"><i class="fas fa-user-shield"></i>Login</a></li>
                <li><a href="/register" method="get"> <i class="fas fa-address-card"></i> Sign up</a></li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<p10>
<c:if test="${not empty lists}">

    <ul>
        <c:forEach var="listValue" items="${lists}">

            <li>${listValue.descriere}</li>

            <li> <img src="${listValue.poza}"> </li>
        </c:forEach>
    </ul>

        </c:if>
    </p10>

</body>
<script
        src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</html>