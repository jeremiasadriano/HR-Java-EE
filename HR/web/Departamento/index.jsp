<%@page import="DAO.FuncionariosDAO"%>
<%@page import="DTO.FuncionariosDTO"%>
<%@page import="java.util.List"%>
<%@page import="DTO.DepartamentoDTO2"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="DAO.DepartamentoDAO" %>
<%@page import="DTO.DepartamentoDTO" %>
<%@page import="java.util.ArrayList" %>
<%
    DepartamentoDAO dao = new DepartamentoDAO();
    List<DepartamentoDTO2> listar = (List<DepartamentoDTO2>) dao.listarDepartamentoNome();

    ArrayList<DepartamentoDTO> quant = (ArrayList<DepartamentoDTO>) dao.quantidadeDep();
    ArrayList<DepartamentoDTO> user = (ArrayList<DepartamentoDTO>) dao.user();

%>

<!DOCTYPE html>
<html lang="pt-Pt">
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
                                <%                            try {
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
                            <li>
                                <a href="../Login/home.jsp"><i class="fa-solid fa-compass"></i>Home</a>
                            </li>
                            <li>
                                <a href="../Noticia/Eventos.htm"><i class="fa-solid fa-people-group"></i>Departamentos</a>
                            </li>
                            <li><i class="fa-solid fa-newspaper"></i>Noticia</li>
                            <li>
                                <a href="../index.htm"><i class="fa-solid fa-right-from-bracket"></i>Logout</a>
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
                            <tr>
                                <th>Departamento</th>
                                 
                                                <th>Funcionario</th>
                                                <th>Cargo</th>
                                                <th>Sexo</th>
                                            
                            </tr>

                            <% for (DepartamentoDTO2 listado : listar) {%>
                            <tr>
                                <td>
                                    <div class="butao">
                                        <button
                                            id="butao"
                                            onclick="
                                                document.getElementById('Departamento').style.display = 'block';
                                            "
                                            ondblclick="
                                                document.getElementById('Departamento').style.display = 'none';
                                            "
                                            style="
                                            border: none;
                                            background-color: transparent;
                                            cursor: pointer;
                                            font-weight: 800;
                                            font-size: medium;"
                                            >


                                            <%= listado.getNome_Departamento()%>
                                        </button>
                                    </div>
                                </td>
           
                                           
                                            <%
                                                

                                                FuncionariosDAO daoF = new FuncionariosDAO();
                                                List<FuncionariosDTO> listaFuncionarios = daoF.listarFuncionariosDepartamento( listado.getNome_Departamento() );

                                                if (listaFuncionarios.isEmpty()) {
                                                    out.println("Não há funcionários neste departamento.");
                                                } else {
                                                    for (FuncionariosDTO dados : listaFuncionarios) {
                                            %>
                                            <tr style="text-transform: capitalize">
                                                <td></td>
                                                <td> <%= dados.getNome()%></td>
                                                <td> <%= dados.getCargo()%></td>
                                                <td> <%= dados.getSexo()%></td>
                                            </tr>                                  
                                            <%
                                                    }
                                                }
                                            %>
                                            
                                    
                            </tr>
                            <% }%>
                        </table>
                    </div>
                </div>
            </section>
        </main>
        <script src="../JS/Departamento.js"></script>
    </body>
</html>