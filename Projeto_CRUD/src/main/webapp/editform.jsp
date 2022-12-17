<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Reserva</title>
</head>
<body>
	
<%@page import="com.Projeto_CRUD.bean.Usuario, com.Projeto_CRUD.dao.UsuarioDao" %>

<%
	String id = request.getParameter("id");
	Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));
%>

<h1>Editar Reserva</h1>

<form action="editusuario.jsp" method="post">
	<input type="hidden" name="id" value="<%=usuario.getId()%>"/>
		<table>
		<tr>
			<td>Nome: </td>
			<td><input type="text" name="nome" value="<%=usuario.getNome()%>"></td>
		</tr>
		<tr>
			<td>Matricula: </td>
			<td><input type="text" name="matricula" value="<%=usuario.getMatricula()%>"></td>
		</tr>
		<tr>
			<td>Email: </td>
			<td><input type="text" name="email" value="<%=usuario.getEmail()%>"></td>
		</tr>
		<tr>
			<td>Cargo: </td>
			<td><input type="text" name="cargo" value="<%=usuario.getCargo()%>"></td>
		</tr>
		<tr>
			<td>Tipo de Sala: </td>
			<td><input type="text" name="tipoSala" value="<%=usuario.getTipoSala()%>"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Editar Reserva"></td>
		</tr>		
		</table>
</form>

</body>
</html>