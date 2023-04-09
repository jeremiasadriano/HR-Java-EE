<%-- 
    Document   : AlterarForm
    Created on : 09 Apr,2023, 17:20:38
    Author     : mutizo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="AlterarFuncionario.jsp" method="post">
        <h2>Alterar dados de Funcionarios</h2>
        <label for="codigo">Codigo do Funcionario:</label>
        <input type="text" id="codigo" name="id" value="<%= request.getParameter("id") %>">
        <br><br>
        <label for="txtnome">Nome Completo:</label>
        <input type="text" name="nome" id="txtnome" value="<%= request.getParameter("nome") %>">
        <br><br>
        <label for="txtidade">Idade:</label>
        <input type="text" name="idade" id="txtidade" value="<%= request.getParameter("idade") %>">
        <br><br>
        <label for="txtsexo">Sexo:</label>
        <input type="text" name="sexo" id="txtsexo" value="<%= request.getParameter("sexo") %>">
        <br><br>
        <label for="txtmail">E-mail:</label>
        <input type="email" name="email" id="txtmail" value="<%= request.getParameter("email") %>">
        <br><br>
        <label for="txtcargo">Cargo:</label>
        <input type="text" name="cargo" id="txtcargo" value="<%= request.getParameter("cargo") %>">
        <br><br>
        <label for="txtdepartamento">Departamento:</label>
        <input type="text" name="departamento" id="txtdepartamento" value="<%= request.getParameter("departamento") %>">
        <br><br>
        <label for="txttelefone">Telefone:</label>
        <input type="text" name="telefone" id="txttelefone" value="<%= request.getParameter("telefone") %>">
        <br><br>
        <button type="submit">Alterar</button>
    </form>
    </body>
</html>
