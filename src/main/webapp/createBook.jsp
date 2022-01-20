<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca EtLabora: Aggiungi Libro</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<a href="/ProgettoFinale/catalog" class="test" id="a">Indietro</a>
	<div class="container">
		<h1>${message}</h1>
		<h1>Nuovo Libro:</h1>
		<form action="/ProgettoFinale/bookDetails?id=${book.id}" method="GET"
			class="the-form">
			<input type="hidden" value="${book.id}" name="id" /> <input
				type="text" name="title" placeholder="Titolo" value="${book.title}"
				required> <input type="text" name="publisher"
				placeholder="Casa editrice" value="${book.publisher}" required>
			<input type="text" name="authors" placeholder="Autore"
				value="${book.authors}" required> <input type="text"
				name="category" placeholder="Categoria" value="${book.category}"
				required> <input type="text" name="isbn"
				placeholder="Codice ISBN" value="${book.isbn}" required> <input
				type="text" name="note" placeholder="Descrizione"
				value="${book.note}" required> <input type="text"
				name="state" placeholder="Stato" value="${book.state}" required>


			<input type="submit" value="${operation}">

		</form>
	</div>
</body>
</html>