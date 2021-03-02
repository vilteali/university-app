<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro universidad</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/register.css" />
</head>
<body>
	<div class="main">
		<form action="saveUser" method="POST">
			<div class="container-fluid">
				<div class="text-center">
					<img
						src="${pageContext.request.contextPath}/resources/img/avatarLogin2.png"
						alt="Avatar" class="avatar">
				</div>
				<div class="row g-3">
					<div class="col-md-6">
						<label for="nombre" class="form-label">Nombre</label> <input
							type="text" class="form-control" id="nombre" name="nombre"
							placeholder="Nombre">
					</div>
					<div class="col-md-6">
						<label for="apellido" class="form-label">Apellido</label> <input
							type="text" class="form-control" id="apellido" name="apellido"
							placeholder="Apellido">
					</div>
				</div>
				<div class="row g-3">
					<div class="form-group col-md-6">
						<label for="email" class="form-label">Email</label> <input
							type="email" class="form-control" id="mail" name="mail"
							placeholder="Email">
					</div>
					<div class="form-group col-md-6">
						<label for="password" class="form-label">Contrse&ntilde;a</label>
						<input type="password" class="form-control" id="clave"
							name="clave" placeholder="Contrase&ntilde;a">
					</div>
				</div>
				<div class="row g-3">
					<div class="form-group col-md-6">
						<label for="dni" class="form-label">DNI</label> <input
							type="text" class="form-control" id="dni" name="dni"
							required minlength="8" maxlength="8" placeholder="DNI">
					</div>
					<div class="form-group col-md-6">
						<label for="numeroLegajo" class="form-label">N&uacute;mero legajo</label> 
						<input type="text" class="form-control" id="numeroLegajo" 
						name="numeroLegajo" required minlength="5" maxlength="5" 
						placeholder="N&uacute;mero legajo">
					</div>
				</div>
				<button type="submit" name="submit">Registrarme</button>
			</div>
		</form>
	</div>
</body>
</html>