<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Universidad - Acceso</title>
<link type="text/css" rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/home.css"/>		
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-success">
		<div class="container-fluid">
			<a class="btn btn-outline-light" href="#">Home</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="btn btn-outline-light"
						aria-current="page" href="#">Profesores</a></li>
					<li class="nav-item"><a class="btn btn-outline-light" 
						aria-current="page" href="#">Materias</a>
					</li>
					<li class="nav-item"><a class="btn btn-outline-light" 
						aria-current="page" href="#">Cupos de inscripci&oacute;n</a>
					</li>
<!-- 					<li class="nav-item"><a class="nav-link disabled" href="#" -->
<!-- 						tabindex="-1" aria-disabled="true">Disabled</a></li> -->
				</ul>

				<div class="btn-group">
					<button type="button" class="btn btn-outline-light dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">
							<c:out value="${modelo.nombre}"/>
					</button>
					<ul class="dropdown-menu text-center">
						<li><a class="dropdown-item" href="#">
							<img src="${pageContext.request.contextPath}/resources/img/avatarLogin.png"/>
							</a>
						</li>
						<li><a class="dropdown-item" href="#">Usuario</a></li>
						<li><a class="dropdown-item" href="#">usuario@gmail.com</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Salir</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/home.js"></script>
</body>
</html>