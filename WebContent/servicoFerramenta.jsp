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

			<form action="Manutencao" method="post">
				<input placeholder="Ordem de serviço" class="inputs" type="text"
					id="os" name="os" /> 
				
				<input class="submit"
					type="submit" value="PESQUISAR" /> 
					<br /><br />
			</form>
		</div>
       <div style="text-align:center;">
        <table class="responsive-table" class="center">
        
        <tr>
        	<th>Nome Cliente</th> 
        	<th>Ordem de Serviço</th>
        	<th>Descrição Ferramenta</th>
        	<th>Status</th>
        	<th>Acão</th>
        	
        </tr>
        
        <c:forEach items="${equipamento}" var="user">
        <tr>

        	<td><c:out value="${user.nome}"></c:out></td>
        	<td><c:out value="${user.os}"></c:out></td>
        	<td><c:out value="${user.descricao}"></c:out></td>
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
