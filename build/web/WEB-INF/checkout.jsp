<%-- 
    Document   : checkout
    Created on : Oct 13, 2015, 4:24:36 PM
    Author     : Ervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout page</title>
    </head>
    <body>
        <h1> Checkout page </h1>
        Total value of products: <b> ${totalToPay}</b>
        <br>     
        Order will arrive on: <b>${deliveryDate}<b>
        <br>
        <h4> <b> ${thankYouMessage}
    </body>
    <br>
    <a href="logout">Log out</a>
</html>
