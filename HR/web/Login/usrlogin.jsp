<%-- 
    Document   : usrlogin
    Created on : 07 Apr,2023, 17:02:46
    Author     : mutizo
--%>

<%@page import="DAO.UsuariosDAO"%>
<%@page import="DTO.UsuariosDTO"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login do Usuario</title>
    </head>
    <body>
        <%
            UsuariosDTO objUsuariosDTO = new UsuariosDTO();
            objUsuariosDTO.setUsername(request.getParameter("username"));
            objUsuariosDTO.setSenha(request.getParameter("senha"));
            
            UsuariosDAO objUsuariosDAO = new UsuariosDAO();
            ResultSet rSetUSR = objUsuariosDAO.LoginUsr(objUsuariosDTO);
            
            if (rSetUSR.next()) {
                    RequestDispatcher rd = request.getRequestDispatcher("Home.html");
                    rd.forward(request, response);
                } else {
                }
        
        %>
    </body>
</html>
