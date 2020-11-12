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
        <form action="Cliente" method="post">
             <h1 class="title">Cadastro de Cliente</h1> 
              

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
            placeholder="Endereção"
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
          
          
          <br /><br />
          <a href= "cadastroCliente.jsp">Cadastrar Cliente</a>
           <a href= "servicoFerramenta.jsp">Manutenção Ferramenta</a>
          
        </form>
        
        
        
      </div>

      </div>
  </body>
</html>
