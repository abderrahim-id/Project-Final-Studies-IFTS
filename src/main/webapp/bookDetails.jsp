<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca EtLabora: Titolo Libro</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<a href="/ProgettoFinale/catalog" class="test" id="a" >Indietro</a>


<div>
<h1 style="color:red;">${message}</h1>

<c:if test="${book != null}">
    <h1>Titolo: ${book.title}</h1>
    <p> ISBN: ${book.isbn}</p>
	<p> Autore: ${book.authors} </p>
	<p> Casa editrice: ${book.publisher}</p>
	<p> Disponibilità: ${book.state}</p>
	<p> Categoria: ${book.category}</p>
	<p> Note: ${book.note}</p>
	<button> Prenota </button>
</c:if>
</div>

</body>
</html>