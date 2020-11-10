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
        <form action="Cliente" method="post">
          <h1>Cadastro Cliente</h1>
          <input
            class="inputs"
            placeholder="Nome do Cliente"
            type="text"
            name="nome"
            id="nome"
            value="${user.nome}"
          /><br /><br />

          <input
            class="inputs"
            placeholder="Contato"
            type="text"
            name="contato"
            id="contato"
            value="${user.contato}"
          /><br /><br />

          <input
            class="inputs"
            placeholder="Endere�o"
            type="text"
            name="endereco"
            id="endereco"
            value="${user.endereco}"
          /><br /><br />

          <input
            class="inputs"
            placeholder="cpf"
            type="text"
            name="cpf"
            id="cpf"
            value="${user.cpf}"
          /><br /><br />

          <input class="submit" type="submit" value="CADASTRAR" />
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
