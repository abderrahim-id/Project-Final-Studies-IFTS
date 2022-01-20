<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Biblioteca Etlabora: Catalogo dei libri</title>
    <link rel="stylesheet" href="style.css" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/ProgettoFinale/">Biblioteca Etlabora</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/ProgettoFinale/"
              >Home <span class="sr-only">(current)</span></a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/ProgettoFinale/login">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/ProgettoFinale/signup">SignUp</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/ProgettoFinale/list-users"
              >Lista Utenti</a
            >
            <!-- disabled -->
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/ProgettoFinale/createBook"
              >Aggiungi Libro</a
            >
            <!-- disabled -->
          </li>
        </ul>
        <form
          class="form-inline my-2 my-lg-0"
          action="/ProgettoFinale/catalog"
          method="GET"
        >
          <input
            class="form-control mr-sm-2"
            name="search"
            type="search"
            placeholder="Libro"
            aria-label="Cerca"
          />
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
            Search
          </button>
        </form>
      </div>
    </nav>

    <c:if test="${book != null}">
      <h1>Search results:</h1>
      <div>
        <h1>Titolo: ${book.title}</h1>
        <p>Autore: ${book.authors}</p>
        <a href="/ProgettoFinale/bookDetails?id=${book.id}"> Details </a>
        <button>Modify</button>
      </div>
    </c:if>

    <c:if test="${book == null}">
      <h1 style="color: red">${message}</h1>

      <c:forEach items="${books}" var="book">
        <div>
          <h1>Titolo: ${book.title}</h1>
          <p>Autore: ${book.authors}</p>
          <a href="/ProgettoFinale/bookDetails?id=${book.id}"> Details </a>
          <a href="/ProgettoFinale/createBook?id=${book.id}">Update Book</a>
        </div>
      </c:forEach>
    </c:if>
    
    <footer class="container-fluid bg-4 text-center" style="position: fixed; bottom: 0; right: 0;">
        <p>La migliore squadra di sempre <a href="#team">Gabriele, Rai, Alessio, Luca, Edde</a></p> 
    </footer>
  </body>
</html>
