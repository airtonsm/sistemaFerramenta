<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Cadastro Usuário</title>
    <link rel="stylesheet" href="css/global.css" />
  </head>
  <body>
    <div class="background">
      <div class="container">
        <div class="links">
          <a id="sign-up" href="cadastroUsuario.jsp">SIGN IN</a>
          <a id="sign-in" href="cadastroUsuario.jsp"
            ><span class="lineSpan">SIGN UP</span></a
          >
        </div>

        <form action="salvarUsuario" method="post">
          <input
            class="inputs"
            placeholder="Login"
            type="text"
            name="login"
            id="login"
          /><br /><br />

          <input
            class="inputs"
            placeholder="Senha"
            type="password"
            name="senha"
            id="senha"
          /><br /><br />
          <input
            class="inputs"
            placeholder="Confirmar Senha"
            type="password"
            name="senha"
            id="senha"
          /><br /><br />
          <!-- A questão de confirmar a senha parece ser algo complexo mas não é, e tem diversas possibilidades para fazer isso um exemplo é 
            guardar os dois valores em variáveis diferentes, fazer um if(senha1 === senha2) se for true vai criar uma variável com o nome 
            correctPassword por exemplo e utiliza ela  -->

          <input class="submit" type="submit" value="CADASTAR" />
        </form>
      </div>
    </div>
  </body>
</html>
