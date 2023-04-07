<%-- 
    Document   : index
    Created on : 05 Apr,2023, 19:42:57
    Author     : mutizo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/login.css">
	<link rel="icon" href="./img/favicon.png">
        <title>Recursos Humanos</title>
    </head>
    <body>
            <div class="login-box">
			<h2>Login</h2>
                        <form action="LoginS" method="Post">
			  <div class="user-box">
				<input type="text" name="username" required="">
				<label>Nome de utilizador</label>
			  </div>
			  <div class="user-box">
				<input type="password" name="password" required="">
				<label>Senha</label>
			  </div>
			  <a href="LoginS">
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				Entrar
			  </a>
                            <input type="submit" value="Entrar" id="inpEntrar"/>
			</form>
		  </div>
    </body>
</html>