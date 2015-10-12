<%-- 
    Document   : products.jsp
    Created on : Oct 10, 2015, 10:15:29 AM
    Author     : Ervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
 <%
    if(session.getAttribute("userName") == null || session.getAttribute("userPassword") == null){
        response.sendRedirect("login.jsp");  
   }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products Page</title>
    </head>
    <body>
       
        <h1>Products Page</h1>
        
        <form method="POST" action="products">
            
            Product name: <input type="text"/>
            <br>
            <br>
            Price: <input type="text"/>
            <br>
            <br>
            Quantity: <input type="text"/>
            <br>
            <br>
            <br>
            <input type="submit">
        </form>
    </body>
</html>
