<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca Etlabora: Catalogo dei libri</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<a href="/ProgettoFinale/Homepage" class="test" id="a" >Homepage</a>
<div class="container">

<a href="/ProgettoFinale/createBook">Aggiungi libro</a>

<div>
<form action="" method="GET">
<label>Cerca con nome: </label>
<input type="text" name="search" placeholder="Nome libro">
<input type="submit" value="Cerca">
</form>
</div>	

<c:if test="${book != null}">
<h1>Search results:</h1>
<div>
<h1>Titolo: ${book.title}</h1>
<p>Autore: ${book.authors}</p>
<a href="/ProgettoFinale/bookDetails?id=${book.id}"> Details </a>
<button> Modify</button>
</div>
</c:if>

<c:if test="${book == null}">

 
<h1 style="color:red;">${message}</h1>
<div class="all-books">
<c:forEach items="${books}" var="book">
<div>
<h1>Titolo: ${book.title}</h1>
<p>Autore: ${book.authors}</p>
<a href="/ProgettoFinale/bookDetails?id=${book.id}"> Details </a>
<a href="/ProgettoFinale/createBook?id=${book.id}">Update Book</a>
</div>
</c:forEach>


</div>
</c:if>
</div>
</body>
</html>