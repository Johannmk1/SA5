<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lista de clientes - Editar</title>
<link rel="stylesheet" href="style02.css">
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background-color: rgb(128, 128, 128);
	overflow: hidden;
	position: relative;
}

.matrix-animation {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	pointer-events: none;
	z-index: -1;
}

.matrix-animation canvas {
	display: block;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	color: #fff;
	text-align: center;
}

form {
	margin-bottom: 20px;
}

table {
	margin-bottom: 20px;
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 10px;
	border: 1px solid #fff;
}

th {
	background-color: #333;
}

input[type="text"] {
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	transition: border-color 0.3s;
}

input[type="text"]:focus {
	outline: none;
	border-color: #fff;
}

input[type="button"] {
	padding: 10px 20px;
	background-color: #333;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="button"]:hover {
	background-color: #555;
}

/* Estilo do botão "Cadastrar" */
.Botao1 {
	display: inline-block;
	margin-top: 10px;
}

/* Estilo das células da tabela */
table td {
	border-bottom: 1px solid #fff;
}

/* Estilo das células da última linha da tabela */
table tr:last-child td {
	border-bottom: none;
}

.botaoNovoCliente {
	text-decoration: none;
	background-color: rgb(0, 255, 0);
	padding: 5px 10px 5px 10px;
	color: #fff;
	font-size: 1.2em;
	font-weight: 700;
	border-radius: 5px;
	border: 0;
	cursor: pointer;
}

</style>
</head>
<body>
	<div class="container">
		<h1>Editar cliente</h1>
		<form name="frmClient" action="update">
			<table>
				<tr>
					<th class="th">Id</th>
					<td><input type="text" name="id" readonly class="Caixa1"
						value="<%out.print(request.getAttribute("id"));%>"></td>
				</tr>
				<tr>
					<th class="th">Nome</th>
					<td><input type="text" name="name" class="Caixa1"
						value="<%out.print(request.getAttribute("name"));%>"></td>
				</tr>
				<tr>
					<th>Tipo pessoa</th>
					<td><input type="text" name="personType" readonly
						class="Caixa1"
						value="<%out.print(request.getAttribute("personType"));%>"></td>
				</tr>
				<tr>
					<th>Endereço</th>
					<td><input type="text" name="address" class="Caixa1"
						value="<%out.print(request.getAttribute("address"));%>"></td>
				</tr>
				<tr>
					<th>Matricula</th>
					<td><input type="text" name="registration" readonly
						class="Caixa1"
						value="<%out.print(request.getAttribute("registration"));%>"></td>
				</tr>
				<tr>
					<th>Tipo da matricula</th>
					<td><input type="text" name="enrollmentModality"
						class="Caixa1"
						value="<%out.print(request.getAttribute("enrollmentModality"));%>"></td>
				</tr>
			</table>
			<input type="button" value="Salvar" class="botaoNovoCliente"
				onclick="validator()">
		</form>
	</div>
	<script src="scripts/validator.js"></script>
	<div class="matrix-animation"></div>
	</body>
</html>