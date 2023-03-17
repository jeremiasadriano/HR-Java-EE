<%-- 
    Document   : login
    Created on : Mar 17, 2023, 11:00:37 AM
    Author     : badfox16
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="loginServlet" method="post">
            <input type="text" name="txtUsername" placeholder="Enter your username" id="usrN">
            <input type="password" name="txtPassword" placeholder="Enter your password" id="pswrd">
            <input type="submit" value="Login">
            <input type="reset">
        </form>
    </body>
</html>
