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
        <h1 class="title">Cadastro de Ferramentas para manutenção</h1>
        <form action="salvarEquipamento" method="post">
          <input
            placeholder="Ordem de serviço"
            class="inputs"
            type="text"
            id="os"
            name="os"
             value="${user.os}"
          /><br /><br />

          <input
            placeholder="Descrição"
            class="inputs"
            type="text"
            id="descricao"
            name="descricao"
             value="${user.descrição}"
          /><br /><br />
          
           <input
            placeholder="Técnico"
            class="inputs"
            type="text"
            id="tecnico"
            name="tecnico"
            value="${user.tecnico}"                         
          /><br /><br />
          
          <input
            placeholder="Código do Cliente"
            class="inputs"
            type="text"
            id="codCliente"
            name="codCliente"
            value="${user.codCliente}"                         
          /><br /><br />
          
          

          <input class="submit" type="submit" value="cadastrar" />
          <br /><br />
        </form>
      </div>
    </div>
  </body>
</html>
