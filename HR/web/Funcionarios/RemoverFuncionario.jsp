<%-- 
    Document   : RemoverFuncionario
    Created on : 9 Apr 2023, 00:12:24
    Author     : Pedro Nhamirre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("nome");
            int idade = Integer.parseInt(request.getParameter("idade"));
            String sexo = request.getParameter("sexo");
            String email = request.getParameter("email");
            String cargo = request.getParameter("cargo");
            String telefone = request.getParameter("telefone");
            
    
            // Processa os dados
            // ...

            // Redireciona o fluxo de controle de volta para a página JSP, passando as variáveis ou objetos que você processou
            request.setAttribute("id", id);
            request.setAttribute("nome", nome);
            request.setAttribute("sexo", sexo);
            request.setAttribute("email", email);
            request.setAttribute("cargo", cargo);
            request.setAttribute("telefone", telefone);
            
            request.getRequestDispatcher("TelaFuncionarios.jsp").forward(request, response);

        %>
    </body>
</html>
