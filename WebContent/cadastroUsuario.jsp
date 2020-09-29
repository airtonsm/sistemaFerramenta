<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="./WEB-INF//css/global.css" />
  </head>
  <body>
    <h1>Cadastro de Usuarios</h1>

    <form action="salvarUsuario" method="post">
      Login:
      <input type="text" name="login" id="login" /><br /><br />
      Senha:
      <input type="password" name="senha" id="senha" /><br /><br />

      <input type="submit" value="cadastrar" />
    </form>
  </body>
</html>
