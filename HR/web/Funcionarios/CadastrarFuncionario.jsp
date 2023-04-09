<%-- 
    Document   : CadastrarFuncionario
    Created on : 07 Apr,2023, 11:59:38
    Author     : mutizo
--%>

<%@page import="DAO.FuncionariosDAO"%>
<%@page import="DTO.FuncionariosDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Funcionario</title>
    </head>
    <body>
        
        <%
            try {
                FuncionariosDTO objFuncionariosDTO = new FuncionariosDTO();
                if (!(request.getParameter("nome") == null && request.getParameter("idade") == null
                        && request.getParameter("sexo") == null && request.getParameter("email") == null
                        && request.getParameter("cargo") == null && request.getParameter("terlefone") == null
                        && request.getParameter("departamento") == null)) {
                        
                    objFuncionariosDTO.setNome(request.getParameter("nome"));
                    objFuncionariosDTO.setIdade(Integer.parseInt(request.getParameter("idade")));
                    objFuncionariosDTO.setSexo(request.getParameter("sexo"));
                    objFuncionariosDTO.setEmail(request.getParameter("email"));
                    objFuncionariosDTO.setCargo(request.getParameter("cargo"));
                    objFuncionariosDTO.setTelefone(request.getParameter("telefone"));
                    objFuncionariosDTO.setDepartamento(request.getParameter("departamento"));

                    FuncionariosDAO objFuncionariosDAO = new FuncionariosDAO();
                    objFuncionariosDAO.Cadastrar(objFuncionariosDTO);

                }
            } catch (Exception e) {
                RequestDispatcher rd = request.getRequestDispatcher("Funcionarios.jsp");
            }

            response.sendRedirect("TelaFuncionarios.jsp");
        %>

    </body>
</html>
