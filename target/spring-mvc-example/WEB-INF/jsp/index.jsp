<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: George Craciun
  Date: 10/14/2019
  Time: 8:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
	<script src="https://kit.fontawesome.com/bd669c2413.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">


	<style type="text/css">




		body {
			background: url(https://s1.1zoom.me/big0/914/Lions_Crown_557828_1239x1024.jpg);

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



		/* Product items */
		div.p-flex {
			width: 25%;
		}
		div.p-flex-in {
			box-sizing: border-box;
			margin: 5px;
			padding: 10px;
			border: 1px solid #e7fcde;
			background: #f6fff2;
		}
		img.p-img {
			width: 100%;
			height: auto;
		}
		div.p-name {
			font-weight: bold;
			font-size: 1.1em;
		}
		div.p-price {
			color: #f44242;
		}
		div.p-desc {
			color: #888;
			font-size: 0.9em;
		}
		button.p-add {
			background: #f46b41;
			color: #fff;
			border: none;
			width: 100%;
			padding: 10px;
			margin: 10px 5px 5px 5px;
			font-size: 1.1em;
			font-weight: bold;
			cursor: pointer;
		}





		ul.products li {
			width: 200px;
			display: inline-block;
			vertical-align: top;
		}
	</style>
	<title></title>
</head>
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
			<a class="navbar-brand" href="GoldLion"><i class="fas fa-money-bill-alt"></i></i>Gold Lion</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
					   aria-expanded="false">Categories <span class="caret"></span></a>
					<ul class="dropdown-menu">

                        <li><a href="/electrocasnice">Electrocasnice</a></li>
                        <li><a href="/laptopuri">Laptop&Gaming</a></li>
                        <li><a href="/AlteProduse">AlteProduse</a></li>

					</ul>
				</li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="/login" method="get"><i class="fas fa-user-shield"></i>Login</a></li>
				<li><a href="/reg" method="get"> <i class="fas fa-address-card"></i> Sign up</a></li>

			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>



	<c:if test="${not empty lista}">

		<ul class="products">
			<c:forEach var="listValue" items="${lista}">

				<div id="p-flex">
					<div class="p-flex"><div class="p-flex-in">
						<img class="p-img" src="${listValue.poza}"/>
						<div class="p-name">Categorie: ${listValue.categorie}</div>
						<div class="p-price">${listValue.pret}</div>
						<div class="p-desc">${listValue.descriere}</div>
						<button class="p-add">Add to Cart</button>
					</div></div>

			</c:forEach>
		</ul>

	</c:if>


</body>

<script
		src="https://code.jquery.com/jquery-3.4.1.js"
		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
</html>
