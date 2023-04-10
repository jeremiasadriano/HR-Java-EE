<%-- Document : Funcionarios Created on : 8 Apr 2023, 14:31:08 Author : Pedro
Nhamirre --%> 
<%@page import="java.util.List"%>
<%@page import="DTO.DepartamentoDTO2"%>
<%@page import="DAO.DepartamentoDAO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Cadastro de Funcionários</title>
        <link rel="stylesheet" href="../css/Funcionarios.css" />
    </head>
    <body>
        <div class="wrapper">
            <form
                action="CadastrarFuncionario.jsp"
                method="post"
                accept-charset="UTF-8"
                >
                <h2>Cadastro de Funcionarios</h2>
                <div>
                    <label for="txtnome">Nome Completo:</label>
                    <input type="text" name="nome" id="txtnome" required />
                </div>
                <div>
                    <label for="txtidade">Idade:</label>
                    <input
                        type="number"
                        min="18"
                        max="60"
                        value="18"
                        name="idade"
                        id="txtidade"
                        required
                        />
                </div>

                <div>
                    <label for="txtsexo">Sexo:</label>
                    <select id="txtsexo" name="sexo">
                        <option class="menu-select" value="masculino" selected>
                            Masculino
                        </option>
                        <option class="menu-select" value="feminino">Feminino</option>
                    </select>
                </div>
                <div>
                    <label for="txtmail">E-mail:</label>
                    <input type="email" name="email" id="txtmail" required />
                </div>

                <div>
                    <label for="txtcargo">Cargo:</label>
                    <input type="text" name="cargo" id="txtcargo" required />
                </div>
                <div>
                    <label for="txttelefone">Telefone:</label>
                    <input type="text" name="telefone" id="txttelefone" required />
                </div>
                <div>
                    <label for="txtdepartamento">Departamento:</label>
                    <select id="txtdepartamento" name="departamento">
                        
                        <%
                            DepartamentoDAO dao = new DepartamentoDAO();
                            List<DepartamentoDTO2> lista = dao.listarDepartamentoNome();
                            for (DepartamentoDTO2 l: lista) { %>
                            
                            <option value="<%= l.getNome_Departamento()%>"><%= l.getNome_Departamento() %></option>
                                
                        <%    }
                        %>
                    </select>
                </div>
                <button>Cadastrar</button>
            </form>
            <form action="TelaFuncionarios.jsp">
                <button>voltar</button>
            </form>
        </div>
    </body>
</html>
