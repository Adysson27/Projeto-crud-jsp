<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Reservas</title>
<link rel="stylesheet" href="resources/css/estilo.css">
</head>
<body>
    <%@ page import="com.Projeto_CRUD.dao.UsuarioDao, com.Projeto_CRUD.bean.*, java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <h1>Cadastro de Reservas</h1>
    
    <%
    List<Usuario> list = UsuarioDao.getAllUsuarios();
    request.setAttribute("list", list);
    %>
    
    <table class="container">
    	<thead>
	        <tr>
	            <th>Identificador</th>
	            <th>Nome</th>
	            <th>Matricula</th>
	            <th>Email</th>
	            <th>Cargo</th>
	            <th>Tipo de Sala</th>
	            <th>Editar</th>
	            <th>Excluir</th>
	         </tr>
         </thead>
         <tbody>
	        <c:forEach items="${list}" var="usuario">
	           <tr>
	             <td>${usuario.getId()}</td>
	             <td>${usuario.getNome()}</td>
	             <td>${usuario.getMatricula()}</td>
	             <td>${usuario.getEmail()}</td>
	             <td>${usuario.getCargo()}</td>
	             <td>${usuario.getTipoSala()}</td>
	             <td><a href="editform.jsp?id=${usuario.getId()}" class="button">Editar</a></td>
	             <td><a href="deleteform.jsp?id=${usuario.getId()}" class="buttonRed">Excluir</a></td>
	           </tr>
	        </c:forEach>
        <tbody>
    </table>
    
    <br>
    <a href="addusuarioform.jsp" type="submit" class="button">Adicionar nova Reserva</a>

</body>
</html>