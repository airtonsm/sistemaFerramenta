<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Manutenção Ferramenta</title>
    <link rel="stylesheet" href="css/global.css" />
  </head>
  <body>
    <div class="background">
      <div class="container">
        <h1>Pesquisar Ferramenta</h1>
        <br/><br/>

        <form action="Manutencao" method="post">
          <input
            placeholder="Ordem de serviço"
            class="inputs"
            type="text"
            id="os"
            name="os"
          /><br /><br />                  
        </form>
        
        <table>
        
        <c:forEach items="${equipamento}" var="user">
        <tr>
        	<td><c:out value="${user.id_cliente}"></c:out></td>
        	<td><c:out value="${user.os}"></c:out></td>
        	<td><c:out value="${user.descricao}"></c:out></td>
        </tr>
        </c:forEach>
        
        </table>
        
        
        
      </div>
    </div>
  </body>
</html>
