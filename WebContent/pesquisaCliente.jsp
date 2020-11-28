<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Manutenção Ferramenta</title>
    <link rel="stylesheet" href="css/manutencao.css" />
  </head>
  <body>
    <div class="background">
      <div class="container">
        <h1>Pesquisar Ferramenta</h1>
        <br /><br />

			<form action="salvarCliente" method="post">
				<input placeholder="Nome do Cliente " class="inputs" type="text"
					id="nome" name="nome" /> 
				
				<input class="submit"
					type="submit" value="PESQUISAR" /> 
					<br /><br />
			</form>
		</div>
		
       <div style="text-align:center;">
        <table class="responsive-table" class="center">
        
        <tr>
        	<th>Id do Cliente</th> 
        	<th>Nome do cliente</th>
        	<th>Cadastrar Ferramenta</th>
        	<th>Editar</th>
        	<th>Excluir<th>
        	
        </tr>

				<c:forEach items="${cliente}" var="user">
					<tr>

						<td><c:out value="${user.id}"></c:out></td>
						<td><c:out value="${user.nome}"></c:out></td>
					</tr>
				</c:forEach>

			</table>   
			    
           
       <br /><br />
          <a  href= "cadastroCliente.jsp">Cadastrar Cliente</a>
          <a href= "cadastroFerramenta.jsp">Cadastro Ferramenta</a>
        </div>  
      </div> 

       

  </body>
</html>
