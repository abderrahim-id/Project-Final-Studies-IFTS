<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca Etlabora: ${user.name} </title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">
</head>

<style>
</style>

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
          <a class="nav-link" href="/ProgettoFinale/login">Login</a>
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


<c:if test="${not empty message}">

			<div class="alert alert-danger" role="alert">
				${message}
			</div>

</c:if>

<c:if test="${empty message}">
<div class="card" style="width: 18rem; margin: auto;">
  <div class="card-body">
    <h5 class="card-title">${user.name}</h5>
    <p class="card-text">Bio: Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Surname: ${user.surname}</li>
    <li class="list-group-item">Username: @${user.username}</li>
    <li class="list-group-item">Email: ${user.email}</li>
  </ul>
  <div class="card-body">
    <a href="/ProgettoFinale/signup?id=${user.id}" class="card-link">Aggiorna Utente</a>
  </div>
</div>
</c:if>

<footer class="container-fluid bg-4 text-center" style="position: fixed; bottom: 0; right: 0;">
  <p>La migliore squadra di sempre <a href="#team">Gabriele, Rai, Alessio, Luca, Edde</a></p> 
</footer>

</body>
</html>