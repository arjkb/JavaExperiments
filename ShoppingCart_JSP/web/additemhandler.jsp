<%-- 
    Document   : additemhandler
    Created on : 29 Apr, 2015, 9:15:16 PM
    Author     : arjun
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
            int price;
            String category;
            int stock;
            
            Connection con;
            PreparedStatement ps;
            String insertQuery;
            int updateCount;
            //insert into inventory(id, model, manufacturer, price, stock, category) values('pp_grip', 'Gripper', 'Cello', '10', 12, 'watch');
        %>
        
        <%
            id = request.getParameter("id");
            model = request.getParameter("model");
            manufacturer = request.getParameter("manufacturer");
            price = Integer.parseInt(request.getParameter("price"));
            category = request.getParameter("category");
            stock = Integer.parseInt(request.getParameter("stock"));
            
            insertQuery = "insert into inventory(id, model, manufacturer, price, stock, category) values(?, ?, ?, ?, ?, ?)";
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/ShoppingCart", "keeper", "key");
            ps = con.prepareStatement(insertQuery);
            
            ps.setString(1, id);
            ps.setString(2, model);
            ps.setString(3, manufacturer);
            ps.setInt(4, price);
            ps.setInt(5, stock);
            ps.setString(6, category);
            
            updateCount = ps.executeUpdate();
            
            out.println("<br /> " + updateCount + " rows updated! ");
//            out.println("<br /> ID: " + id);
//            out.println("<br /> Model: " + model);
//            out.println("<br /> Manufacturer: " + manufacturer);
//            out.println("<br /> Price: " + price);
//            out.println("<br /> Category: " + category);
//            out.println("<br /> Stock: " + stock);
        %>
        
        
        
    </body>
</html>
