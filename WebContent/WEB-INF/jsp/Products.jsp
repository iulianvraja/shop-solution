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
    <link href="https://fonts.googleapis.com/css?family=Alatsi&display=swap" rel="stylesheet">

    <link href="/Styling/electronicsStyle.css" rel="stylesheet">
    <title> Electronics</title>
    <style>

        #centered {
            text-align: center;
            padding-top: 25%

        }

        .col-lg-4, .col-md-6 {
            height: 30%;
        }

        hr {
            width: 400px;
            border-top: 1px solid #f8f8f8;
            border-bottom: 1px solid rgb(0, 0, 0);
        }

        p {
            text-align: center;
            font-family: 'Open Sans', sans-serif;
            color: rgb(67, 80, 250);
        }

        .elem {
            height: 350px;
            border-bottom: 30px;

        }

        .container {
            margin-left: 10%;
            margin-right: 10%;


        }

        .c1 {
            background-color: white;
            height: 100%;
        }

        .thumbnail {
            padding: 0px;
            margin: 0px;
            height: 80%;

        }

        .thumbnail img {
            max-height: 100%;
            max-width: 100%;
        }

        .textzone p {

            font-size: 16px;
            font-family: 'Alatsi', sans-serif;
            color: black;

        }

        body {
            background: url(https://cdn.pixabay.com/photo/2014/09/24/14/29/mac-459196_1280.jpg);
            background-size: cover;
            background-position: center;
            font-family: 'Open Sans', sans-serif;
            color: white;
        }

        html {
            height: 100%;
        }

        h1 {
            font-weight: 700;
            font-size: 5em;
        }
    </style>
</head>

<body>


<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><i class="fas fa-money-bill-alt"></i></i>Gold Lion</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Categories <span class="caret"></span></a>
                    <ul class="dropdown-menu">

                        <li><a href="/products?category=2" method="get">Electronics</a></li>
                        <li><a href="/products?category=3" method="get">Fashion</a></li>
                        <li><a href="/products?category=4" method="get">Auto Parts</a></li>
                        <li><a href="/products?category=5" method="get">Sports</a></li>
                        <li><a href="/products?category=6" method="get">Collectibles&Art</a></li>
                        <li><a href="/products?category=7" method="get">Health&Beauty</a></li>
                        <li><a href="/products?category=8" method="get">Home&Garden</a></li>

                    </ul>
                </li>
                <li><a href="/about">About</a></li>
                <li><a href="/contact">Contact</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="/login" method="get"><i class="fas fa-user-shield"></i>Login</a></li>
                <li><a href="/register" method="get"> <i class="fas fa-address-card"></i> Sign up</a></li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <c:if test="${not empty lists}">


    <div class="col-lg-4 col-md-6 elem" >
        <c:forEach var="listValue" items="${lists}">
        <div class="c1">

            <div class="thumbnail ">
                <img src="${listValue.url}" >
            </div>
            <div class="textzone">
                <p> ${listValue.descriere}</p>
                <p> ${listValue.pret}</p>
            </div>

        </div>
        </c:forEach>
        </c:if>
    </div>

</div>
<p>
    <c:if test="${not empty parmezan}">


<ul>


        <li>${parmezan.categorie}</li>
        <li>${parmezan.descriere}</li>
        <li>${parmezan.pret}</li>
        <li> <img id="ItemPreview" src="${parmezan.poza}"> </li>

</ul>

</c:if>
</p>


</body>
<script
        src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</html>