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
            <h2>REMOVER FUNCIONÁRIO</h2>
            <div>
                <label for="idFunc">ID: </label>
                <input type="text" id="idFunc" name="id" value="<%=request.getParameter("id")%>" readonly>
            </div>

            <div>
                <label for="txtnome">Nome Completo:</label>
                <p id="txtnome" name="nome"><%=request.getParameter("nome")%></p>
            </div>
            <div>
                <label for="txtidade">Idade:</label>
                <p id="txtidade" name="idade"><%=request.getParameter("idade")%></p>
            </div>

            <div>
                <label for="txtsexo">Sexo:</label>
                <p id="txtsexo" name="sexo"><%=request.getParameter("sexo")%></p>
            </div>
            <div>
                <label for="txtmail">E-mail:</label>
                <p id="txtmail" name="email"><%=request.getParameter("email")%></p>
            </div>

            <div>
                <label for="txtcargo">Cargo:</label>
                <p id="txtcargo" name="cargo"><%=request.getParameter("cargo")%></p>
            </div>

            <div>
                <label for="txttelefone">Telefone:</label>
                <p id="txttelefone" name="telefone"><%=request.getParameter("telefone")%></p>
            </div>
            <div>
                <label for="txtdepartamento">Departamento:</label>
                <input type="text" name="departamento" id="txttelefone" value="<%= request.getParameter("departamento")%>" required/>
            </div>
            <button>Remover</button>
        </form>
        <form action="TelaFuncionarios.jsp">
            <button class="voltar">voltar</button>
        </form>

    </body>
</html>
