<%-- 
    Document   : ListarFuncionarios
    Created on : 9 Apr 2023, 18:01:55
    Author     : Pedro Nhamirre
--%>


<%@page import="java.util.*"%>
<%@page import="DTO.FuncionariosDTO"%>
<%@page import="DAO.FuncionariosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Funcionarios</title>
        <link rel="stylesheet" href="../css/ListarFuncionarios.css"/>

        
        <script src="https://kit.fontawesome.com/7a342b9685.js" crossorigin="anonymous"></script>
        
    </head>

    
     <div class="master-card">
    <div class="voltar-cl">
        <form action="TelaFuncionarios.jsp">
            <button>VOLTAR</button>
        </form>
    </div>

    <%
        FuncionariosDAO dao = new FuncionariosDAO();
        List<FuncionariosDTO> listaFuncionarios = new ArrayList<>();
        String valor = request.getParameter("pesquisa");
        listaFuncionarios = dao.pesquisarFuncionarios(valor);

        
        if(listaFuncionarios != null){
        
            for (FuncionariosDTO f : listaFuncionarios) {
    %> 
    <div class="card-container">
        <div class="card-image">
            <img src="../img/profilee.png" alt="" />
            <div>
                <form action="EditarForm.jsp">
                    <input type="hidden" name="id" value="<%= f.getIdFuncionario()%>" />
                    <input type="hidden" name="nome" value="<%=f.getNome()%>" />
                    <input type="hidden" name="idade" value="<%=f.getIdade()%>" />
                    <input type="hidden" name="sexo" value="<%=f.getSexo()%>" />
                    <input type="hidden" name="email" value="<%=f.getEmail()%>" />
                    <input type="hidden" name="cargo" value="<%=f.getCargo()%>" />
                    <input type="hidden" name="telefone" value="<%=f.getTelefone()%>" />
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
                    <button class="remover-btn"><i class="fa-solid fa-trash"></i></button>
                </form>
            </div>
        </div>
        <div class="card-name"><%= f.getNome()%></div>
        <div class="card-cargo"><p><%= f.getCargo()%></p></div>
        <div class="card-telefone"><%= f.getTelefone()%></div>
        <div class="card-email"><%= f.getEmail()%></div>
    </div>


    <%      }
       }else{ %>
             <span>não existe nenhum funcionário</span>
    <% } %>
    </div>

</html>
