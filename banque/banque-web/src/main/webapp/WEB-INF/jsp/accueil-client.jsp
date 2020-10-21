<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  

<!DOCTYPE html>
<html lang="fr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<title>Bienvenue sur votre Banque en ligne !!!</title>
	</head>
	<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">VBEL</a>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a class="nav-link" href="index.jsp">Accueil</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Nos Services</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Nos Engagements</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="contact.do">Nous Contacter</a>
				</li>				
				<li class="nav-item dropdown active">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Mes Opérations
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="comptes.do">Mes Comptes</a>
				        <a class="dropdown-item" href="virement.do">Virements entre comptes</a>
				        <div class="dropdown-divider"></div>
				        <a class="dropdown-item" href="#">Mes contrats</a>
			        </div>
			    </li>
			</ul>
			<c:if test="${sessionScope.leClient != null}">
				<span class="navbar-text mr-sm-2"><a href="accueil-client.do">Bonjour <c:out value="${leClient.prenom}" /> <c:out value="${leClient.nom}" /> !</a></span>
				<a href="deconnexion.do" class="badge badge-info my-2 my-sm-0">Déconnexion</a>
			</c:if>
		</div>
	</nav>
	
	<header>
		<div class="alert alert-primary" role="alert">
			<h2 >Bienvenue sur votre Banque en ligne !!!</h2>
		</div>
	</header>

	<div class="container" id="main">
		
		<c:if test="${messageErreur != null}">
			<div class="alert alert-danger" role="alert">
				<c:out value="${messageErreur}" />
			</div>
		</c:if>
	
		<div class="row">
			<div class="col alert alert-warning" role="alert" id="topLeft">1 of 2</div>
			<div class="col alert alert-warning" role="alert" id="topRight">2 of 2</div>
		</div>
		<div class="row">
			<div class="col alert alert-warning" role="alert" id="bottomLeft">1 of 3</div>
			<div class="col alert alert-warning" role="alert" id="bottomMiddle">2 of 3</div>
			<div class="col alert alert-warning" role="alert" id="bottomRight">3 of 3</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>