<%-- 
    Document   : additemhandler
    Created on : 29 Apr, 2015, 9:15:16 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item handler</title>
    </head>
    <body>
        <h1>Item Handler</h1>
        
        <%!
            String id;
            String model, manufacturer;
            String price;
            String category;
            int stock;
        %>
        
        
        <%
            id = request.getParameter("id");
            model = request.getParameter("model");
            manufacturer = request.getParameter("manufacturer");
            price = request.getParameter("price");
            category = request.getParameter("category");
            stock = Integer.parseInt(request.getParameter("stock"));
            
            out.println("<br /> ID: " + id);
            out.println("<br /> Model: " + model);
            out.println("<br /> Manufacturer: " + manufacturer);
            out.println("<br /> Price: " + price);
            out.println("<br /> Category: " + category);
            out.println("<br /> Stock: " + stock);
        %>
        
        
        
    </body>
</html>
