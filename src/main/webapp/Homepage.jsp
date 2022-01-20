<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Biblioteca Etlabora: SignUp</title>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

    <style>
       @import url("https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap");
      .home{
          height: 400px;
          width: 1200px;
          margin: 30px auto;
          background-color: gainsboro;
          border-radius: 20px;
          display: flex;
          justify-content: center;
          align-items: center;
          flex-direction: row;
          gap: 40px;
      }
      .home .text-home{
        max-width: 600px;
      }
    </style>
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
    <!-- <a href="/ProgettoFinale/login">Login</a>
    <a href="/ProgettoFinale/signup">Registrati</a> -->
    <!-- <a href="/ProgettoFinale/catalog">Catalogo Libri</a> -->


    <div class="home">

        <div class="text-home">Il patrimonio librario della biblioteca del Trinity College di Vimodrone è arricchito anche da una peculiarità di questo istituto: il fatto di essere una “copyright library”, vale a dire un deposito legale di ogni libro pubblicato in Italia. Assieme alla British Library, alla Bodleian Library, alle biblioteche di Oxford e Cambridge, alla Biblioteca Nazionale del Galles e alla Biblioteca Nazionale della Scozia, la Big Biblioteca Comunale può vantare il diritto di richiesta di qualsiasi opera pubblicata nel Mondo.</div>
        <div class="right-home">
            <a href="/ProgettoFinale/catalog" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Catalogo Dei Libri</a>
        </div>
    </div>

    <footer class="container-fluid bg-4 text-center" style="position: fixed; bottom: 0; right: 0;">
        <p>La migliore squadra di sempre <a href="#team">Gabriele, Rai, Alessio, Luca, Edde</a></p> 
    </footer>
  </body>
</html>
