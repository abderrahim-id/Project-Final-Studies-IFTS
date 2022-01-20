<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca Etlabora: SignUp</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<a href="/ProgettoFinale/Homepage" class="test" id="a" >Homepage</a>
<h1>SignUp</h1>
<div class="error-id">${error}</div><br>
<form action="/ProgettoFinale/user-details" method="GET" class="the-form">
<input type="hidden" value="${user.id}" name="id" />
<input type="text" name="name" value="${user.name}" placeholder="Nome" required>
<input type="text" name="surname" value="${user.surname}" placeholder="Cognome" required>
<input type="text" name="username" value="${user.username}" placeholder="Nome utente" required>
<input type="email" name="email" value="${user.email}" placeholder="Email" required>
<input type="password" name="password" value="${user.password}" placeholder="Password" required>
<!-- <input type="password" name="password2" value="${user.password}" placeholder="Rinserisci Password" required>  -->
<input type="submit" value="SignUp"> <!-- the button to press Here should be Update if the id is not null -->
</form>
 <p>Hai già un account? <a href="/ProgettoFinale/login">Login</a></p>
</body>
</html>