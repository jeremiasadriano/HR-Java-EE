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
                        <p id="idFunc"><%=request.getAttribute("id")%></p>
                    </div>

                    <div>
                        <label for="txtnome">Nome Completo:</label>
                        <p id="txtnome"><%=request.getAttribute("nome")%></p>
                    </div>
                    <div>
                        <label for="txtidade">Idade:</label>
                        <p id="txtidade"><%=request.getAttribute("idade")%></p>
                    </div>

                    <div>
                        <label for="txtcargo">Cargo:</label>
                        <p id="txtcargo"><%=request.getAttribute("cargo")%></p>
                    </div>
                    
                    <div>
                        <label for="txttelefone">Telefone:</label>
                        <p id="txttelefone"><%=request.getAttribute("telefone")%></p>
                    </div>
                    <div>
                        <label for="txtsexo">Sexo:</label>
                        <p id="txtsexo"><%=request.getAttribute("sexo")%></p>
                    </div>
                    <div>
                        <label for="txtmail">E-mail:</label>
                        <p id="txtmail"><%=request.getAttribute("email")%></p>
                    </div>

                    <div>
                        <label for="txtcargo">Cargo:</label>
                        <p id="txtcargo"><%=request.getAttribute("cargo")%></p>
                    </div>
                    <div>
                        <label for="txttelefone">Telefone:</label>
                        <p id="txttelefone"><%=request.getAttribute("telefone")%></p>
                    </div>

                    <button>Remover</button>
                </form>

    </body>
</html>
