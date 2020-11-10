<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Manuten��o Ferramenta</title>
    <link rel="stylesheet" href="css/manutencao.css" />
  </head>
  <body>
    <div class="background">
      <div class="container">
        <h1>Pesquisar Ferramenta</h1>
        <br /><br />

        <form action="Manutencao" method="post">
          <input
            placeholder="Ordem de servi�o"
            class="inputs"
            type="text"
            id="os"
            name="os"
          /><br /><br />
        </form>

        <div style="text-align: center">
          <table class="responsive-table" class="center">
            <tr>
              <th>Nome Cliente</th>
              <th>Ordem de Servi�o</th>
              <th>Descri��o Ferramenta</th>
            </tr>

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
