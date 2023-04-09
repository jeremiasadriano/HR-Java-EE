<%-- 
    Document   : AlterarFuncionario
    Created on : 09 Apr,2023, 17:26:50
    Author     : mutizo
--%>

<%@page import="DAO.FuncionariosDAO"%>
<%@page import="DTO.FuncionariosDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
           try {
           FuncionariosDTO objFuncionariosDTO = new FuncionariosDTO();
           objFuncionariosDTO.setIdFuncionario(Integer.parseInt(request.getParameter("id")));

           
           FuncionariosDAO objFuncionariosDAO = new FuncionariosDAO();
           objFuncionariosDAO.Alterar(objFuncionariosDTO);
           
           RequestDispatcher rd = request.getRequestDispatcher("ListarFuncionario.jsp");
           rd.forward(request, response);
               } catch (Exception e) {
               }
            
         %>
    </body>
</html>
