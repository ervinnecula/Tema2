<%-- 
    Document   : login
    Created on : Oct 8, 2015, 9:31:36 PM
    Author     : Ervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="main.Database" %>
<!DOCTYPE html>

<%


Cookie[] cookies=request.getCookies();
String name="",pass="";
boolean foundUser = false,foundPass = false;
if (cookies != null) {
     for (Cookie cookie1 : cookies) {
       if(cookie1.getName().equals("cookieLoginUser") )
       {
           foundUser = true;
       }
       
       for(Cookie cookie2 : cookies){
           if(cookie2.getName().equals("cookieLoginPassword")){
               foundPass = true;
           }
       }
       
       if(foundUser && foundPass){
            pageContext.forward("products.jsp");
       }
               
    }
}
%>

<html>
    <head>
        <title>Login</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Login Form</h1>
        <form action="login" method="POST">
            <label>Name: </label> <input type="text" name="userName"/>
            <br>
            <br>
            <label>Password: </label> <input type="password" name="userPassword"/>
            <br>
            <br>
            <input type="checkbox" name="rememberMe">
            <label for="checkbox">Keep me logged in</label>
            <br>
            <br>
            <input type="submit">
        <form>
            
    </body>
</html>
