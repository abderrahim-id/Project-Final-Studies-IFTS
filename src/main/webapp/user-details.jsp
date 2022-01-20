<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Biblioteca Etlabora: ${user.name} </title>
</head>

<style>

h1#welcome{
  font-family: 'Dancing Script', cursive;
  padding: 0px;
  display: flex;
  justify-content: center;
  align-items: center;
}

div#details{
  font-family: 'Dancing Script', cursive;
  padding: 0px;
  display: flex;
  justify-content: center;
  align-items: center;
}

</style>

<body>

<div>
<h1>${message}</h1>
</div>

<div>
<h1 id="welcome">Benvenuto ${user.name}</h1>
</div>

<div id="details">
<a>Username: ${user.username}</a><br>
<a>Nome: ${user.name}</a><br>
<a>Cognome: ${user.surname}</a><br>
<a>Email: ${user.email}</a>
</div>

</body>
</html>