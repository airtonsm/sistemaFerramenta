<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Cliente</title>
 <link rel="stylesheet" href="css/global.css" />
</head>
<body>
<div class="background">
      <div class="container">
      
        <form action="salvarCliente" method="post">
          <input
            class="inputs"
            placeholder="Nome do cliente"
            type="text"
            name="login"
            id="nome"
          /><br /><br />

          <input
            class="inputs"
            placeholder="Contato"
            type="text"
            name="contato"
            id="contato"
          /><br /><br />
          
          <input
            class="inputs"
            placeholder="Endereço"
            type="text"
            name="endereco"
            id="endereco"
          /><br /><br />
          
         <input type="text" 
         class="inputs"
         name="cpf" 
         placeholder="CPF" 
         maxlength="14" 
         OnKeyPress="formatar('###.###.###-##', this)"/>
         <br /><br />
          
          <input class="submit" type="submit" value="cadastrar"/>
        </form>
      </div>
    </div>

</body>
</html>