<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<html lang="fr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<title>Identification Client</title>
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
					<a class="nav-link" href="contact.eni">Nous Contacter</a>
				</li>				
				<li class="nav-item active">
					<a class="nav-link" href="identification.eni">Accès client<span class="sr-only">(current)</span></a>
				</li>
			</ul>
		</div>
	</nav>
	
	<header>
		<div class="alert alert-primary" role="alert">
			<h2 >Bienvenue sur votre Banque en ligne !!!</h2>
		</div>
	</header>

	<div class="container" id="main">

		<div class="alert alert-secondary" role="alert">
			<h3>Identification Client</h3>
		</div>
		
		<c:if test="${message != null}">
			<div class="alert alert-danger" role="alert">
				<c:out value="${message}" />
			</div>
		</c:if>
		
		<form:form modelAttribute="identificationForm" action="identification.eni" method="post">
			<div class="form-group" id="identifiantField">
				<label for="authIdentifiant">Identifiant : </label>
				<form:input class="form-control" id="authIdentifiant" aria-describedby="identifiantHelp" placeholder="Votre identifiant" path="identifiant" />
				<small id="identifiantHelp" class="form-text text-muted">Votre identifiant est votre numéro de client.</small>
			</div>
			<div class="form-group" id="motdepasseField">
				<label for="authMotdepasse" >Mot de passe : </label>
				<form:password  class="form-control" id="authMotdepasse" aria-describedby="motdepasseHelp" placeholder="Votre mot de passe" path="motDePasse"  />
				<small id="motdepasseHelp" class="form-text text-muted">Votre mot de passe ne doit jamais être communiqué à qui que ce soit.</small>
			</div>
			
			<button type="submit" class="btn btn-primary">Valider</button>
				
		</form:form>
	</div>
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>