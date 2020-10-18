<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Cadastro Usuário</title>
    <link rel="stylesheet" href="css/global.css" />
  </head>
  <body>
    <div class="background">
      <div class="container">
        <form action="salvarUsuario" method="post">
          <input
            class="inputs"
            placeholder="Login"
            type="text"
            name="login"
            id="login"
            value="${user.login}"
          /><br /><br />

          <input
            class="inputs"
            placeholder="Senha"
            type="password"
            name="senha"
            id="senha"
            value="${user.senha}"
          /><br /><br />

          <input class="submit" type="submit" value="CADASTAR" />
        </form>
      </div>
    </div>
  </body>
</html>
