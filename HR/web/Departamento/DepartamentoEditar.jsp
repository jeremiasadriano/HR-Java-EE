<%--
  Created by IntelliJ IDEA.
  User: godal
  Date: 4/9/23
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="DAO.DepartamentoDAO" %>
<%@ page import="DTO.DepartamentoDTO" %>
<%@ page import="java.util.ArrayList" %>
<%
    DepartamentoDTO f = new DepartamentoDTO();
    DepartamentoDAO dao = new DepartamentoDAO();
    ArrayList<DepartamentoDTO> quant = (ArrayList<DepartamentoDTO>) dao.quantidadeDep();
    ArrayList<DepartamentoDTO> user = (ArrayList<DepartamentoDTO>) dao.user();
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="../css/Departamento.css"/>
    <script src="https://kit.fontawesome.com/1f168297b1.js"
            crossorigin="anonymous"
    ></script>

    <title>Departamento</title>
</head>
<body>
<header class="header">
    <div class="nav-bar-top">
        <nav>
            <ul>
                <div class="ul-left">
                    <li>Hello &nbsp;<i class="fa-solid fa-hand"></i>
                        &nbsp;
                        <%
                            try {
                                for (int i = 0; i < user.size(); i++) {
                        %>
                        <%=user.get(i).getUsername()%>
                        </tr>
                        <%
                                }
                            } catch (Exception e) {
                                System.out.println("Erro: " + e.getMessage());
                            }
                        %>
                    </li>
                    <li><i class="fa-regular fa-bell"></i></li>
                </div>
                <div class="ul-right">
                    <li>
                        <a href=""><i class="fa-solid fa-house"></i></a>
                    </li>
                </div>
            </ul>
        </nav>
    </div>
    <div class="nav-bar-bottom">
        <nav>
            <ul>
                <div class="titulo-dep">
                    <h3>RH Departamento</h3>
                    <p>Aqui você encontra os Departamento, Funcionários</p>
                </div>
                <div class="datas">
                    <h3 id="data">Data:<span class="time"> </span></h3>
                    <h3 id="hora">Hora: <span class="time"> </span></h3>
                </div>
            </ul>
        </nav>
    </div>
</header>
<main>
    <section class="left-side">
        <div class="name">
            <img src="../img/man.png" alt="Imagem Masculina"/>
            <h2>
                <%
                    try {
                        for (int i = 0; i < user.size(); i++) {
                %>
                <%=user.get(i).getUsername()%>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        System.out.println("Erro: " + e.getMessage());
                    }
                %>
            </h2>
            <hr/>
        </div>
        <div class="search">
            <h4>Departamento/Funcionario</h4>
            <form action="Departamento" method="get">
                <input
                        type="search"
                        name="pesquisaDeDados"
                        id="pesquisa"
                        placeholder="Search"
                />
            </form>
            <span class="icon-search"
            ><i class="fa-solid fa-magnifying-glass"></i
            ></span>
            <hr/>
        </div>

        <div class="container">
            <nav>
                <ul>
                    <li><i class="fa-solid fa-compass"></i>Home</li>
                    <li>
                        <i class="fa-solid fa-people-group"></i>Departamentos
                    </li>
                    <li><i class="fa-solid fa-newspaper"></i>Noticia</li>
                    <li>
                        <i class="fa-solid fa-right-from-bracket"></i>Logout
                    </li>
                </ul>
            </nav>
        </div>
    </section>
    <section class="right-side">
        <div class="infoGeral">
            <div class="blocksInfo">
                <h3>Pagamentos</h3>
                <p>Dia 28 de todos os meses</p>
            </div>
            <div class="blocksInfo">
                <h3>Quantidade de Departamentos</h3>
                <%
                    try {
                        for (int i = 0; i < quant.size(); i++) {
                %>
                <p><%=quant.get(i).getQuantidade()%>
                </p>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        System.out.println("Erro: " + e.getMessage());
                    }
                %>
            </div>
            <div class="blocksInfo">
                <h3>Quantidade de Funcionários por Departamentos</h3>
                <p>ddw</p>
            </div>
        </div>

        <div class="departamentosInfo">
            <div class="titlesInfo">
                <h3>Departamentos</h3>

                <div class="subtitlesInfo">
                    <form>
                        <label for="atualizar">
                            <i
                                    class="fa-solid fa-arrows-rotate"
                                    style="color: #6c7293"
                            ></i>
                        </label>
                        <input type="submit" value="Atualizar" id="atualizar"/>
                    </form>
                    <div class="controleTable">
                        <label for="ocultar">
                            <i id="eyes" class="fa-solid fa-eye-slash"></i>
                        </label>
                        <input
                                onclick="show_hide()"
                                type="button"
                                name=""
                                value="Ocultar"
                                id="ocultar"
                        />
                    </div>
                </div>
            </div>

            <div id="tableMain">
                <table>
                    <form action="./EditarDepartamento.jsp" method="post">
                        <tr>
                            <td>Nome:
                            </td>
                        </tr>
                        <tr>
                            <td>Idade:
                            </td>
                        </tr>
                        <tr>
                            <td>Sexo:
                            </td>
                        </tr>
                        <td>Email:
                        </td>
                        </tr>
                        <tr>
                            <td>Cargo:
                            </td>
                        </tr>
                        <tr>
                            <td>Telefone:</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="departamento"/>
                            </td>
                        <tr>
                            <td>
                                <button type="submit">Atualizar</button>
                            </td>
                        </tr>

                    </form>

                </table>
            </div>
        </div>
    </section>
</main>
<script src="../JS/Departamento.js"></script>
</body>
</html>
