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
  padding: 0px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.detail{
	display: block;
	margin: 20px;
	
}

</style>

<body>

<div>
<h1>${message}</h1>
</div>

<div>
<h1 id="welcome">Benvenuto ${user.name}</h1>
</div>

<h3 class="detail">Dettagli utenti</h3>

<div id="details">
<div class="detail">Username: ${user.username}</div>
<div class="detail">Nome: ${user.name}</div>
<div class="detail">Cognome: ${user.surname}</div>
<div class="detail">Email: ${user.email}</div>
</div>

</body>
</html>