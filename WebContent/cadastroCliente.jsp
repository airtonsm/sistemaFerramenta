<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<h1 class="title">Cadastro de Cliente</h1> <br />
			<form action="Cliente" method="post" onsubmit="return ValidarCampos() ? true : false;">


				<input class="inputs" placeholder="Nome do Cliente" type="text"
					name="nome" id="nome" value="${user.nome}" /><br /> <br /> 
					
					<input
					class="inputs" placeholder="Contato" type="text" name="contato"
					id="contato" value="${user.contato}" /><br /> <br /> 
					
					<input
					class="inputs" placeholder="Enderecao" type="text" name="endereco"
					id="endereco" value="${user.endereco}" /><br /> <br /> 
					
					<input
					class="inputs" placeholder="cpf" type="text" name="cpf" id="cpf"
					value="${user.cpf}" /><br /> <br /> 
					
					<input class="submit"
					type="submit" value="CADASTRAR" /> <br /> <br /> 
					
					<a href="cadastroFerramenta.jsp">Cadastrar Ferramenta</a>
					<a	href="Manutencao?acao=listartodos">Manutencao Ferramenta</a>

			</form>
		</div>
	</div>
	
	<script type="text/javascript">
		function ValidarCampos(){
			if(document.getElementById("nome").value == ''){
				alert('Por favor, insira o nome do cliente');
				return false;
			}
			else
			if(document.getElementById("contato").value == ''){
				alert('Por favor, insira o contato do cliente');
				return false;
			}
			else
			if(document.getElementById("endereco").value == ''){
				alert('Por favor, insira o endereco do cliente');
				return false;
			}
			else
			if(document.getElementById("cpf").value == ''){
				alert('Por favor, insira o cpf do cliente');
				return false;
			}
			
			alert('Cliente cadastrado com sucesso');
			return true;			
		}
	</script>
</body>
</html>
