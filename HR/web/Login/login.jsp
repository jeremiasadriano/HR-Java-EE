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
        <link rel="stylesheet" href="../css/login.css">
	<link rel="icon" href="./img/favicon.png">
        <title>Recursos Humanos</title>
    </head>
    <body>
            <div class="login-box">
			<h2>Login</h2>
                        <form action="usrlogin.jsp" method="Post">
			  <div class="user-box">
				<input type="text" name="username" required="">
				<label>Nome de utilizador</label>
			  </div>
			  <div class="user-box">
				<input type="password" name="senha" required="">
				<label>Senha</label>
			  </div>
			  <!-- <a href="#">
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				Entrar
			  </a> -->
                <div class="entrar">
					<input type="submit" value="Entrar" id="btn" style="background: linear-gradient(180deg, transparent);position: relative;
					display: inline-block;
					padding: 10px 20px;
					color: #39335C;
					font-size: 16px;
					font-weight: bold;
					text-decoration: none;
					text-transform: uppercase;
					overflow: hidden;
					margin-top: 40px;
					letter-spacing: 1px;
					border-radius: 20px;
    border-style: none;
"/>
				</div>
			</form>
		  </div>
    </body>
</html>