<%-- 
    Document   : products.jsp
    Created on : Oct 10, 2015, 10:15:29 AM
    Author     : Ervin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="main.Product"%>
<jsp:useBean id="product" class="main.Product" scope="page"/>


<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products Page</title>
    </head>
    <body>
       
        <h1>Products Page</h1>
        
        <form method="POST" action="products">
            
            Product name: <input type="text" name="productName"/>
            <br>
            <br>
            Price: <input type="text" name="price"/>
            <br>
            <br>
            Quantity: <input type="text" name="quantity"/>
            <br>
            <br>
            <br>
            <input type="submit">
        </form>
       
        <hr>
        
        <h3> Your shopping cart </h3>
    
     <c:forEach items="${products}" var="item">
         <c:if test="${item.clientName == sessionScope.userName}">
            <p>Product Name <c:out value="${item.productName}"/> </p>
            <p>Price <c:out value="${item.price}"/> </p> 
            <p>Quantity <c:out value="${item.quantity}"/></p> 
            <hr>
         </c:if>
     </c:forEach>
             
         
         <br>
         <br>
         
          <a href="checkout">Go to checkout</a>
        
        
    </body>
</html>
