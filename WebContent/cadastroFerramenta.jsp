<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Cadastro de Ferramentas</title>
    <link rel="stylesheet" href="css/global.css" />
  </head>
  <body>
    <div class="background">
      <div class="container">
        <h1 class="title">Cadastro de Ferramentas para manuten��o</h1>
        <form action="salvarEquipamento" method="post">
          <input
            placeholder="Id do cliente"
            class="inputs"
            type="number"
            id="id_cliente"
            name="id_cliente"
          /><br /><br />

          <input
            placeholder="Os"
            class="inputs"
            type="text"
            id="os"
            name="os"
          /><br /><br />

          <input
            placeholder="Descri��o do equipamento"
            class="inputs"
            type="text"
            id="descricao"
            name="descricao"
          /><br /><br />

          <input class="submit" type="submit" value="CADASTRAR" />
          <br /><br />
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
