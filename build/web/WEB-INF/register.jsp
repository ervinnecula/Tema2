<%-- 
    Document   : register.jsp
    Created on : Oct 10, 2015, 1:41:49 PM
    Author     : Ervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Register Form</h1>
        <form action="register" method="POST">
            <label>Name: </label> <input type="text" name="userName"/>
            <br>
            <br>
            <label>Password: </label> <input type="password" name="userPassword"/>
            <br>
            <br>
            <%
                 ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LdNhw4TAAAAAHVcKiJXGtJ9jeasMaJkJt1stzk4", "6LdNhw4TAAAAAAxU3g3zykq3iwUND0AIJfTUvsyW", false);
                 out.print(c.createRecaptchaHtml(null, null));
            %>
            <input type="submit">
        </form>  
            <br>
            <br>
            Go to 
            <a href="login">Login</a>
    </body>
</html>