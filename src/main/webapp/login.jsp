<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca Etlabora: Login</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<a href="/ProgettoFinale/Homepage" class="test" id="a">Homepage</a>
	<div class="container">
		<a href="/ProgettoFinale/Homepage" class="test" id="a">Homepage</a>
		<form class="the-form" action="/ProgettoFinale/login">
			<h1>Login</h1>
			<h3>${message}</h3>
			<input type="text" name="username" placeholder="Username" required>
			<input type="password" name="password" placeholder="Password"
				required> <input type="submit" value="Login">
		</form>
		<p>
			Non hai un account? <a href="/ProgettoFinale/signup">registrati</a>
		</p>
	</div>
</body>
</html>