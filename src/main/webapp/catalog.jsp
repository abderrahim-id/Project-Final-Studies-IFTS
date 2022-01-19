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
<div class="container">
<div>
<input type="submit" value="Aggiungi libro">
</div>

<div>
<form>
<label>Cerca con nome: </label>
<input type="text" placeholder="Nome libro">
<input type="submit" value="Cerca">
</form>
</div>	 

<div class="all-books">
<c:forEach items="${books}" var="book">
<div class="libro">
<h1>${book.title}</h1>
<p>Autore: ${book.authors}</p>
<a href="/ProgettoFinale/"> Details </a>
<button> Modify</button>
</div>
</c:forEach>
</div>

</div>
</body>
</html>