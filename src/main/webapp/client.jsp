<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.JavaBeans"%>
<%
@SuppressWarnings("unchecked")
ArrayList<JavaBeans> list = (ArrayList<JavaBeans>) request.getAttribute("Clients");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Clientes</title>
<link rel="stylesheet" href="style02.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
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

.botaoNovoCliente {
	text-decoration: none;
	background-color: rgb(192, 192, 192);
	padding: 5px 10px 5px 10px;
	color: #fff;
	font-size: 1.2em;
	font-weight: 700;
	border-radius: 5px;
	border: 0;
	cursor: pointer;
}
.botaoNovoCliente:hover {
    background-color: rgb(192, 192, 192);
  }

.divButton {
	margin-top: 1rem;
	height: 3rem;
	margin-left: 71rem;
}

.divButton{
	margin-top: 1rem;
	height: 3rem;
	margin-left:71rem;
}
.botao2 {
	text-decoration: none;
	background-color: #d51213;
	padding: 5px 10px 5px 10px;
	color: #fff;
	font-size: 1.2em;
	font-weight: 700;
	border-radius: 5px;
}

.botao1 {
	text-decoration: none;
	background-color: #66bbff;
	padding: 5px 10px 5px 10px;
	color: #fff;
	font-size: 1.2em;
	font-weight: 700;
	border-radius: 5px;
	border: 0;
	cursor: pointer;
}

.title {
	margin-right: 71rem;
	font-size: 32px;
	margin-bottom: 20px;
	color: #fff;
}
</style>
</head>
<body>
	<div class="container">
		<h1 class="title">Clientes</h1>
		<div class="divButton">
			<a href="new.html" class="botaoNovoCliente">Novo cliente</a>
		</div>
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Nome</th>
					<th scope="col">Tipo pessoa</th>
					<th scope="col">Endereço</th>
					<th scope="col">Matricula</th>
					<th scope="col">Tipo da matricula</th>
					<th scope="col">Opções</th>
				</tr>
			</thead>
			<tbody>
				<%
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td><%=list.get(i).getId()%></td>
					<td><%=list.get(i).getName()%></td>
					<td><%=list.get(i).getPersonType()%></td>
					<td><%=list.get(i).getAddress()%></td>
					<td><%=list.get(i).getRegistration()%></td>
					<td><%=list.get(i).getEnrollmentModality()%></td>
					<td><a href="select?id=<%=list.get(i).getId()%>"
						class="botao1">Editar</a> <a
						href="javascript: confimation(<%=list.get(i).getId()%>)"
						class="botao2">Excluir</a></td>
				</tr>
				<%
				}

				}
				%>
			</tbody>
		</table>
	</div>
	<div class="matrix-animation"></div>
	<script src="scripts/confirmation.js"></script>

</body>
</html>