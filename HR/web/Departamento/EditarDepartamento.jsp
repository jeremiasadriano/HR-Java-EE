<%@ page import="DAO.DepartamentoDAO" %>
<%@ page import="DTO.DepartamentoDTO" %><%--
  Created by IntelliJ IDEA.
  User: godal
  Date: 4/10/23
  Time: 12:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Departamento</title>
</head>
<body>
<%
        DepartamentoDTO f = new DepartamentoDTO();
        DepartamentoDAO dao = new DepartamentoDAO();
        f.setDepartamento(request.getParameter("departamento"));
        dao.editarSelecionar(f);
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
%>

</body>
</html>
