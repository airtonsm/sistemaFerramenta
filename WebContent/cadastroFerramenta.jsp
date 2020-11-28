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

        <h1 class="title">Cadastro de Ferramentas</h1>

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
            placeholder="Descrição do equipamento"
            class="inputs"
            type="text"
            id="descricao"
            name="descricao"
          /><br /><br />


          <input class="submit" type="submit" value="CADASTRAR" /><br /><br />

	<h3 style="color: orange;">${msg}</h3>
          
         <br /><br />
          <a href= "cadastroCliente.jsp">Cadastrar Cliente</a>
           <a href= "Manutencao?acao=listartodos">Manutenção Ferramenta</a>

       </form>
      </div>
    </div>
  </body>
</html>
