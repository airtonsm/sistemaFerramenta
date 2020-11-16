<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>SCF</title>
    <link rel="stylesheet" href="css/global.css" />
  </head>
  <body>
    <div class="background">
      <div class="container">
        <div class="links">
          <span class="lineSpan"></span>
        </div>
        
        <h1>Login</h1>

        <form class="form" action="LoginServlet" method="post">
          <br /><input
            placeholder="Login"
            class="inputs"
            type="text"
            id="login"
            name="login"
          /><br />

          <br /><input
            placeholder="Senha"
            class="inputs"
            type="text"
            id="senha"
            name="senha"
          /><br />

          <br /><input class="submit" type="submit" value="LOGAR" /><br />
        </form>
        <a id="cadastro" href="cadastroUsuario.jsp">Cadastrar novo usuário</a>
      </div>
      </div>
  </body>
</html>
