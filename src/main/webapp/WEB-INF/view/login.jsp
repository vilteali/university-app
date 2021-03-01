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
		href="${pageContext.request.contextPath}/resources/css/home.css"/>
</head>
<body>
	<div class="main">
		<form action="/home" method="post">
		<div class="container-fluid">
			<div class="text-center">
    			<img src="${pageContext.request.contextPath}/resources/img/avatarLogin2.png" 
    			 alt="Avatar" class="avatar">
  			</div>
			<label for="usuario"><b>Usuario</b></label> <input type="text" 
			placeholder="Ingrese su usuario" name="usuario" required />
			
			<label for="password"><b>Contrase&ntilde;a</b></label> <input type="password"
			placeholder="Ingrese su contrase&ntilde;a" name="password" required />			 
			
			<button type="submit">Login</button> 
		
		</div>
		</form>
	</div>
</body>
</html>