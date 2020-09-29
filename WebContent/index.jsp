<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>SCF</title>
    <link rel="stylesheet" href="./WEB-INF//css/global.css" />
  </head>
  <body>
    <div class="container">
      <div class="links">
        <a id="sign-in" href="cadastroUsuario.jsp"
          ><span class="lineSpan">SIGN IN</span></a
        >
        <a id="sign-up" href="cadastroUsuario.jsp">SIGN UP</a>
      </div>

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
      <footer>
        <a class="forgotPassword" href="#">Forgot Password?</a>
      </footer>
    </div>
    <script type="text/javascript"></script>
  </body>
</html>
