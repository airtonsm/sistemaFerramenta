<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Cadastro Usu�rio</title>
    <link rel="stylesheet" href="css/global.css" />
  </head>
  <body>
    <div class="background">
      <div class="container">
        <h1>Cadastro Usu�rio</h1>
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
          
          <h3 style="color: orange;">${msg}</h3>
          
         

        </form>
      </div>
      <div class="frontEndDev">
        <a
          target="_blank"
          href="https://github.com/joaopealves"
          id="frontEndDev"
          ><span>Front end feito por: </span>João Pedro Alves</a
        >
      </div>
      <div class="backEndDev">
        <a target="_blank" href="https://github.com/airtonsm" id="BackEndDev"
          ><span>Back end feito por: </span>José Airton</a
        >
      </div>
    </div>
  </body>
</html>
