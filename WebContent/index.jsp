<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SCF</title>
</head>
<body>

	<h1>SISTEMA DE CADASTRO DE FERRAMENTAS</h1>
	<h2>cadastro de ferramentas para manutenção</h2>

	<form action="LoginServlet" method="post">
		Login:
		<br><input type="text" id="login" name="login"><br>
		Senha:
		<br><input type="text" id="senha" name="senha"><br>
		
		<br><input type="submit" value="logar"><br>
		<a href="cadastroUsuario.jsp">Cadastrar Usuário</a>

	</form>

<script type="text/javascript">


</script>

</body>
</html>