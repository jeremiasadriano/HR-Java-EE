<%--
  Created by IntelliJ IDEA.
  User: godal
  Date: 4/9/23
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Model.DTO.JavaBeans" %>
<%@ page import="Model.DAO.modelo" %>
<%@ page import="java.util.ArrayList" %>
<%
    JavaBeans f = new JavaBeans();
    modelo dao = new modelo();
    ArrayList<JavaBeans> quant = (ArrayList<JavaBeans>) dao.quantidadeDep();
    ArrayList<JavaBeans> user = (ArrayList<JavaBeans>) dao.user();
//        Atualizar
    f.setIdade(Integer.parseInt(request.getParameter("idade")));
    f.setNome(request.getParameter("nome"));
    f.setDepartamento(request.getParameter("departamento"));
    f.setCargo(request.getParameter("cargo"));
    f.setEmail(request.getParameter("email"));
    f.setSexo(request.getParameter("sexo"));
    dao.selecionar(f);

    request.setAttribute("departamento", f.getDepartamento());
    request.setAttribute("nome", f.getNome());
    request.setAttribute("sexo", f.getSexo());
    request.setAttribute("email", f.getEmail());
    request.setAttribute("idade", f.getIdade());
    request.setAttribute("cargo", f.getCargo());
    request.setAttribute("telefone", f.getTelefone());

    dao.editarSelecionar(f);
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="../Style/style.css"/>
    <link rel="stylesheet" href="../Style/style.css">
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
            <img src="../Img/man.png" alt="Imagem Masculina"/>
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
                    <form action="Alterar.jsp">
                        <tr>
                            <td>Nome: <%=request.getAttribute("nome")%>
                            </td>
                        </tr>
                        <tr>
                            <td>Idade: <%=request.getAttribute("idade")%>
                            </td>
                        </tr>
                        <tr>
                            <td>Sexo: <%=request.getAttribute("sexo")%>
                            </td>
                        </tr>
                            <td>Email: <%=request.getAttribute("email")%>
                            </td>
                        </tr>
                        <tr>
                            <td>Cargo: <%=request.getAttribute("cargo")%>
                            </td>
                        </tr>
                        <tr>
                            <td>Telefone: <%request.getAttribute("telefon");%></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" name="departamento" placeholder="<%request.getAttribute("telefon");%>">
                            </td>
                        <tr>
                            <td>
                                <button type="submit" name="dep">Atualizar</button>
                            </td>
                        </tr>

                    </form>

                </table>
            </div>
        </div>
    </section>
</main>
<script src="../Js/index.js"></script>
</body>
</html>
