<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
				<li class="nav-item active">
					<a class="nav-link" href="index.jsp">Accueil<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Nos Services</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Nos Engagements</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="#">Nous Contacter<span class="sr-only">(current)</span></a>
				</li>
				<c:choose>
					<c:when test="${sessionScope.leClient == null}">
						<li class="nav-item">
							<a class="nav-link" href="identification.eni">Accès client</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="nav-item dropdown">
					        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Mes Opérations
					        </a>
					        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="comptes.eni">Mes Comptes</a>
						        <a class="dropdown-item" href="virement.eni">Virements entre comptes</a>
						        <div class="dropdown-divider"></div>
						        <a class="dropdown-item" href="#">Mes contrats</a>
					        </div>
					    </li>
					</c:otherwise>
				</c:choose>
			</ul>
			<c:if test="${sessionScope.leClient != null}">
				<span class="navbar-text mr-sm-2"><a href="accueil-client.eni">Bonjour <c:out value="${leClient.prenom}" /> <c:out value="${leClient.nom}" /> !</a></span>
				<a href="deconnexion.eni" class="badge badge-info my-2 my-sm-0">Déconnexion</a>
			</c:if>
		</div>
	</nav>
	
	<header>
		<div class="alert alert-primary" role="alert">
			<h2>Bienvenue sur votre Banque en ligne !!!</h2>
		</div>
	</header>

	<div class="container" id="main">
	
		<div class="alert alert-secondary" role="alert">
			<h3>Nous contacter</h3>
		</div>
		
		<c:if test="${messageErreur != null}">
			<div class="alert alert-danger" role="alert">
				<c:out value="${messageErreur}" />
			</div>
		</c:if>
	
		<form:form modelAttribute="contactForm" action="contact.eni" method="post">

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Prénom et Nom : </label>
				<div class="col-sm-10">
					<form:input path="nomPrenom" class="form-control" id="formField1" placeholder="Robert DUPONT" aria-describedby="nomPrenomHelp" />
					<small id="nomPrenomHelp" class="form-text text-muted">Vos prénom et nom séparés d'un espace.</small>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Email : </label>
				<div class="col-sm-10">
					<form:input path="email" class="form-control" id="formField1" placeholder="moi@domaine.fr" aria-describedby="emailHelp" />
					<small id="emailHelp" class="form-text text-muted">Votre adresse mail.</small>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Objet : </label>
				<div class="col-sm-10">
					<form:input path="objet" class="form-control" id="formField2" placeholder="" aria-describedby="objetHelp" />
					<small id="objetHelp" class="form-text text-muted">La raison pour laquelle vous nous contactez.</small>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Votre message : </label>
				<div class="col-sm-10">
					<form:textarea path="objet" class="form-control" id="formField3" placeholder="" rows="10"/>
				</div>
			</div>
			
			<button type="submit" class="btn btn-primary">Envoyer</button>
			
		</form:form>
	</div>

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>