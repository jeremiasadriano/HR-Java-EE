<%-- 
    Document   : RemoverFuncionario
    Created on : 9 Apr 2023, 00:12:24
    Author     : Pedro Nhamirre
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
           objFuncionariosDAO.Remover(objFuncionariosDTO);
           
           RequestDispatcher rd = request.getRequestDispatcher("TelaFuncionario.jsp");
           rd.forward(request, response);
               } catch (Exception e) {
               }
            
         %>

        %>
    </body>
</html>
