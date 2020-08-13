<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Cadastro de Usuários</h1>

<form action="LoginServlet" method="post">
		Login:
		<br><input type="text" id="login" name="login"><br>
		Senha:
		<br><input type="text" id="senha" name="senha"><br>
		
		<br><input type="submit" value="logar"><br>

	</form>

</body>
</html>