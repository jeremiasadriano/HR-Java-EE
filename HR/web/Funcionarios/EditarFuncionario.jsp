<%-- Document : EditarFuncionario Created on : 9 Apr 2023, 15:13:26 Author :
Pedro Nhamirre --%> 

<%@page import="DAO.FuncionariosDAO"%> 
<%@page import="DTO.FuncionariosDTO"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>JSP Page</title>
        </head>
        <body>
            <% FuncionariosDTO objFuncionariosDTO = new FuncionariosDTO();
                objFuncionariosDTO.setIdFuncionario(Integer.parseInt(request.getParameter("id")));
                objFuncionariosDTO.setNome(request.getParameter("nome"));
                objFuncionariosDTO.setIdade(Integer.parseInt(request.getParameter("idade")));
                objFuncionariosDTO.setSexo(request.getParameter("sexo"));
                objFuncionariosDTO.setEmail(request.getParameter("email"));
                objFuncionariosDTO.setCargo(request.getParameter("cargo"));
                objFuncionariosDTO.setTelefone(request.getParameter("telefone"));
                objFuncionariosDTO.setDepartamento(request.getParameter("departamento"));

                FuncionariosDAO objFuncionariosDAO = new FuncionariosDAO();
                objFuncionariosDAO.editarFuncionarios(objFuncionariosDTO);

                RequestDispatcher rd = request.getRequestDispatcher("TelaFuncionarios.jsp");
                rd.forward(request, response);%>
        </body>
    </html>
