<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca Etlabora: Lista utenti</title>
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
              <a class="nav-link" href="/ProgettoFinale/login">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ProgettoFinale/signup">SignUp</a>
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


<div class="btn-toolbar container" style="margin: 30px 50px;">
<div style="margin: 30px 50px;">
    <a href="/ProgettoFinale/signup" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Aggiungi Utente</a>

</div>
   
</div>
<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Username</th>
          <th style="width: 36px;"></th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${users}" var="user">

        <tr>
          <td>${user.id}</td>
          <td>${user.name}</td>
          <td>${user.surname}</td>
          <td>${user.username}</td>
          <td>
              <a href="/ProgettoFinale/user-details?id=${user.id}" role="button" data-toggle="modal"><i class="fas fa-info"></i></a>
              <a href="/ProgettoFinale/signup?id=${user.id}" role="button" data-toggle="modal"><i class="fas fa-edit"></i></a>
          </td>
        </tr>

    </c:forEach>

      </tbody>
    </table>
</div>

<div style="height: 200px; background-color: white;"></div>



<footer class="container-fluid bg-4 text-center" style="position: fixed; bottom: 0; right: 0; background-color: white;">
    <p>La migliore squadra di sempre <a href="#team">Gabriele, Rai, Alessio, Luca, Edde</a></p> 
</footer>
</body>
</html>