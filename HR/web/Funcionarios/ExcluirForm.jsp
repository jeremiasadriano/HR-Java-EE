<%-- 
    Document   : ExcluirFuncionario
    Created on : 08 Apr,2023, 01:29:49
    Author     : mutizo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Funcionarios</title>
    </head>
    <body>
        <form action="RemoverFuncionario.jsp" method="post">
        <h2>Remover Funcionarios</h2>
        <label for="codigo">Codigo do Funcionario:</label>
        <input type="text" id="codigo" name="id" value="<%= request.getParameter("id") %>">
        <br><br>
        <label for="txtnome">Nome Completo:</label>
        <input type="text" name="nome" id="txtnome" value="<%= request.getParameter("nome") %>">
        <br><br>
        <label for="txtcargo">Cargo:</label>
        <input type="text" name="cargo" id="txtcargo" value="<%= request.getParameter("cargo") %>">
        <br><br>

        <button type="submit">Remover</button>
    </form>
    </body>
</html>
