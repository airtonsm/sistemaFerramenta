<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Cadastro de Usuários</h1>

<form action="/salvarUsuario" method="post">
		Login:
		<br><input type="text" id="login" name="login" value="${user.login}"><br>
		Senha:
		<br><input type="text" id="senha" name="senha" value="${user.senha}"><br>
		
		<br><input type="submit" value="cadastrar"><br>

	</form>

</body>
</html>