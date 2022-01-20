<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca Etlabora: Login</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/ProgettoFinale/">Biblioteca Etlabora</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/ProgettoFinale/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ProgettoFinale/signup">SignUp</a>
              </li>
            <li class="nav-item">
              <a class="nav-link " href="/ProgettoFinale/list-users">Lista Utenti</a> <!-- disabled -->
            </li>
			<li class="nav-item">
                <a class="nav-link " href="/ProgettoFinale/createBook">Aggiungi Libro</a> <!-- disabled -->
              </li>
          </ul>
          <form class="form-inline my-2 my-lg-0" action="/ProgettoFinale/catalog" method="GET">
            <input class="form-control mr-sm-2" name="search" type="search" placeholder="Libro" aria-label="Cerca">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>

	<!-- <div class="container">
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
	</div> -->




<div class="card bg-light">
    <article class="card-body mx-auto" style="max-width: 400px;">
        <h4 class="card-title mt-3 text-center">Accedi</h4>

		<c:if test="${not empty message}">

			<div class="alert alert-danger" role="alert">
				${message}
			</div>

		</c:if>
		


        <form action="/ProgettoFinale/login" method="GET">
        <div class="form-group input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fas fa-user-secret"></i> </span>
             </div>
            <input name="username" value="${user.username}" class="form-control" placeholder="Username" type="text">
        </div> <!-- form-group// -->
        
        
        <div class="form-group input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
            </div>
            <input class="form-control" name="password" value="${user.password}" placeholder="Crea Password" type="password">
        </div> <!-- form-group// -->                                 
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block"> Login  </button>
        </div> <!-- form-group// -->      
        <p class="text-center">Non hai un account? <a href="/ProgettoFinale/signup">SignUp</a> </p>                                                                 
    </form>
    </article>
    </div> <!-- card.// -->
    
    </div> 
    <!--container end.//-->


	<footer class="container-fluid bg-4 text-center" style="position: fixed; bottom: 0; right: 0;">
		<p>La migliore squadra di sempre <a href="#team">Gabriele, Rai, Alessio, Luca, Edde</a></p> 
	</footer>
</body>
</html>