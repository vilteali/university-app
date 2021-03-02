<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Bienvenidos a la Universidad</title>
	<link type="text/css" rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/login.css"/>
</head>
<body>
	<div class="main">
		<form action="validar" method="POST">
			<input type="hidden" id="id" name="id"
				value="<c:out value='${modelo.usuario.id}'/>" />
			<div class="container-fluid">
				<div class="text-center">
					<img
						src="${pageContext.request.contextPath}/resources/img/avatarLogin2.png"
						alt="Avatar" class="avatar">
				</div>
				<label for="usuario"><b>Usuario</b></label> 
					<input type="text" placeholder="Ingrese su usuario" name="usuario"
						value="<c:out value="${modelo.nombre}" />" /> 
						
					<label for="clave"><b>Contrase&ntilde;a</b></label> 
					<input type="password" placeholder="Ingrese su contrase&ntilde;a"
						name="clave" value="<c:out value="${modelo.clave}" />" />
				<button type="submit" name="submit">Login</button>
				<p class="text-align">No tienes cuenta? <a href="register">Registrate</a></p>
			</div>
		</form>
	</div>
</body>
</html>