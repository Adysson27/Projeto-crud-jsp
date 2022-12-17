<%@page import="com.Projeto_CRUD.dao.UsuarioDao" %>
<jsp:useBean id="u" class="com.Projeto_CRUD.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<% 
	int i = UsuarioDao.salvarUsuario(u); 

	if(i > 0){
		response.sendRedirect("viewusuarios.jsp");
	}
	
%>