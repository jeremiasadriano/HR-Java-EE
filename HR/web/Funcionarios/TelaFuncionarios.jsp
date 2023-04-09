<%-- 
    Document   : TelaFuncionarios
    Created on : 8 Apr 2023, 14:32:39
    Author     : Pedro Nhamirre
--%>


<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.*"%>
<%@page import="java.util.*"%>
<%@page import="DAO.FuncionariosDAO"%>
<%@page import="DTO.FuncionariosDTO"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Funcionários</title>
        <link rel="stylesheet" href="../css/FuncionariosTela.css" />
        <link rel="stylesheet" href="../css/FuncionariosTela2.css"/>


        <script src="https://kit.fontawesome.com/7a342b9685.js" crossorigin="anonymous"></script>
    </head>

    <body>    
        <div class="main">
            <div class="container">
                <div class="top-menu">
                    <h2>FUNCIONÁRIOS</h2>
                    <ul>
                        <li>
                            <form action="../Login/home.jsp">
                                <button> <i class="fa-sharp fa-solid fa-house"></i>Home</button>
                            </form>
                        </li>
                        <li>
                            <form action="">
                                <button><i class="fa-solid fa-right-from-bracket"></i>logout</button>
                            </form>
                        </li>
                    </ul>
                </div>
                <div class="second-menu">
                    <div class="search-area">
                        <form action="ListarFuncionarios.jsp" class="search-form" method="POST">
                            <input type="text" class="search-bar" name="pesquisa" placeholder="Digite o nome/ID/Sexo do funcionários"/>
                            <button class="search-submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>
                    </div>
                    <div class="list-buttons-second-menu">
                        <ul>
                            <li>
                                <form action="">
                                    <button  id="data-hora-atual"></button>
                                </form>
                            </li>
                            <li>
                                <form action="Funcionarios.jsp">
                                    <button>Adicionar novo funcionário</button>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
                <h2 class="listaFunc">Lista de Funcionários</h2>
                <div class="master-card">
                    <%
                        FuncionariosDAO dao = new FuncionariosDAO();
                        List<FuncionariosDTO> listaFuncionarios = new ArrayList<>();
                        listaFuncionarios = dao.listarFuncionarios();
                        for (FuncionariosDTO f : listaFuncionarios) {
                    %>
                    <div class="card-container">
                        <div class="card-image">
                            <img src="../img/profilee.png" alt="" />
                            <div>
                                <form action="EditarForm.jsp" method="POST">
                                    <input type="hidden" name="id" value="<%= f.getIdFuncionario()%>" />
                                    <input type="hidden" name="nome" value="<%=f.getNome()%>" />
                                    <input type="hidden" name="idade" value="<%=f.getIdade()%>" />
                                    <input type="hidden" name="sexo" value="<%=f.getSexo()%>" />
                                    <input type="hidden" name="email" value="<%=f.getEmail()%>" />
                                    <input type="hidden" name="cargo" value="<%=f.getCargo()%>" />
                                    <input type="hidden" name="telefone" value="<%=f.getTelefone()%>" />
                                    <input type="hidden" name="departamento" value="<%=f.getDepartamento()%>" />
                                    <button class="editar-btn"><i class="fa-solid fa-pen-to-square"></i></button>
                                </form>
                                <form action="ExcluirForm.jsp" method="POST">
                                    <input type="hidden" name="id" value="<%= f.getIdFuncionario()%>" />
                                    <input type="hidden" name="nome" value="<%=f.getNome()%>" />
                                    <input type="hidden" name="idade" value="<%=f.getIdade()%>" />
                                    <input type="hidden" name="sexo" value="<%=f.getSexo()%>" />
                                    <input type="hidden" name="email" value="<%=f.getEmail()%>" />
                                    <input type="hidden" name="cargo" value="<%=f.getCargo()%>" />
                                    <input type="hidden" name="telefone" value="<%=f.getTelefone()%>" />
                                    <input type="hidden" name="departamento" value="<%=f.getDepartamento()%>" />
                                    <button class="remover-btn"><i class="fa-solid fa-trash"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="card-name"><%= f.getNome()%></div>
                        <div class="card-cargo"><p><%= f.getCargo()%></p></div>
                        <div class="card-telefone"><%= f.getTelefone()%></div>
                        <div class="card-email"><%= f.getEmail()%></div>
                    </div>
                    <% }%>
                </div>
            </div>
        </div>
            
             <script>
      function atualizaDataHora() {
        var agora = new Date();
        var dataHoraAtual = agora.toLocaleString();
        document.getElementById("data-hora-atual").innerHTML = dataHoraAtual;
      }

      atualizaDataHora();

      setInterval(function() {
        atualizaDataHora();
      }, 1000);
    </script>
    </body>
</html>
