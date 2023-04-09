<%-- 
    Document   : EditarForm
    Created on : 9 Apr 2023, 15:02:28
    Author     : Pedro Nhamirre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/ExcluirForm.css"/>
    </head>
    <body>
           <form action="EditarFuncionario.jsp" method="post" accept-charset="UTF-8">
      <h2>Editar Funcinários</h2>
      <div>
        <label for="idFunc">ID:</label>
        <input type="text" name="id" id="idFunc" value="<%= request.getParameter("id")%>" readonly/>
      </div>
      <div>
        <label for="txtnome">Nome Completo:</label>
        <input type="text" name="nome" id="txtnome" required value="<%= request.getParameter("nome")%>"/>
      </div>
      <div>
        <label for="txtidade">Idade:</label>
        <input type="number" min="18" max="100" value="18" name="idade" id="txtidade" value="<%= request.getParameter("idade")%>" required />
      </div>
    
      <div>
        <label for="txtsexo">Sexo:</label>
        <select id="txtsexo" name="sexo">
            <option class="menu-select" value="masculino" <% if(request.getParameter("sexo").equalsIgnoreCase("Masculindo")){ 
                    out.println("selected");
                }%> >Masculino</option>
          <option class="menu-select" value="feminino" <% if(request.getParameter("sexo").equalsIgnoreCase("feminino")){ 
                    out.println("selected");
                }%>>Feminino</option>
        </select>
      </div>
      <div>
        <label for="txtmail">E-mail:</label>
        <input type="email" name="email" id="txtmail" value="<%= request.getParameter("email")%>" required/>
      </div>
    
      <div>
        <label for="txtcargo">Cargo:</label>
        <input type="text" name="cargo" id="txtcargo" value="<%= request.getParameter("cargo")%>" required/>
      </div>
      <div>
        <label for="txttelefone">Telefone:</label>
        <input type="text" name="telefone" id="txttelefone" value="<%= request.getParameter("telefone")%>" required/>
      </div>
      
      <div>
        <label for="txtdepartamento">Departamento:</label>
        <input type="text" name="departamento" id="txttelefone" value="<%= request.getParameter("departamento")%>" required/>
      </div>
      <button>Submeter</button>
    </form>
    <form action="TelaFuncionarios.jsp">
      <button class="voltar">voltar</button>
    </form>
    </body>
</html>
