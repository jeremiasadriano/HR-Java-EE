<%-- 
    Document   : ListarFuncionarios
    Created on : 08 Apr,2023, 00:25:37
    Author     : mutizo
--%>

<%@page import="DTO.FuncionariosDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FuncionariosDAO"%>
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
                FuncionariosDAO objFuncionariosDAO = new FuncionariosDAO();
                ArrayList<FuncionariosDTO> lista = objFuncionariosDAO.PesquisarLivro();
                
                for (int i = 0; i < lista.size(); i++) {
                        out.print("Codido: " + lista.get(i).getIdFuncionario() + "<br>");
                        out.print("Nome: " + lista.get(i).getNome() + "<br>");
                        out.print("Idade: " + lista.get(i).getIdade() + "<br>");
                        out.print("Sexo: " + lista.get(i).getSexo() + "<br>");
                        out.print("E-mail: " + lista.get(i).getEmail() + "<br>");
                        out.print("Cargo: " + lista.get(i).getCargo() + "<br>");
                        out.print("Telefone: " + lista.get(i).getTelefone() + "<br>");
                        
                        out.print("<a href='ExcluirForm.jsp?id=" +
                        lista.get(i).getIdFuncionario() + "&nome=" +
                        lista.get(i).getNome() + "&cargo=" +
                        lista.get(i).getCargo() + "'> Remover </a>");

                     %><br><br><%   
                    }
                
            } catch (Exception e) {
            }


        %>
    </body>
</html>
