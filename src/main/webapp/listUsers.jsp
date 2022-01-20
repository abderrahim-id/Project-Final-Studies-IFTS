<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Biblioteca EtLabora: Lista Utenti</title>
<style>
body{
align-items: center;
}

.utenti{
margin: 1mm;
}
</style>
</head>
<body>

<h1>Lista degli utenti</h1>
<br></br>
<div class="lista">
<c:forEach items="${users}" var="user">
<div class="utenti">
<h3>Nome: ${user.name}</h3>
<a href="/ProgettoFinale/user-details?id=${user.id}">details</a>
<a href="">delete</a>
</div>
</c:forEach>
</div>
</body>
</html>