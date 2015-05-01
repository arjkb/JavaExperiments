<%-- 
    Document   : checkout
    Created on : 26 Apr, 2015, 9:14:06 PM
    Author     : arjun
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout Page</title>
    </head>
    <body>
        <%!
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            
            String selQuery;
            
            int totalPrice; //variable to store the total price of all the items
        %>
        <h1>Checkout Page</h1>
        
        <%
            totalPrice = 0;
            
            ArrayList shopItems = (ArrayList) session.getAttribute("purchase");
            String phone[] = request.getParameterValues("phone");
            
            if( phone != null ) {
                shopItems.addAll(Arrays.asList(phone));                
            }
            
            session.setAttribute("purchase", shopItems);
            
            selQuery = "select id, model, manufacturer, price from inventory where ID like ?";
            con = (Connection) session.getAttribute("connection");
            ps = con.prepareStatement(selQuery);
            shopItems = (ArrayList) session.getAttribute("purchase");            
        %>
        
        <%
//            shopItems = (ArrayList) session.getAttribute("purchase");
//            
//            for(int i = 0; i < shopItems.size(); i++)   {
//                out.println("<br /> " + shopItems.get(i));
//            }
        %>
        
        <br />
        <table>
            <tr>
                <th> ID </th>
                <th> Model </th>
                <th> Manufacturer </th>
                <th> Price </th>
            </tr>
            
            <%
            for(int i = 0; i < shopItems.size(); i++)   {
                ps.setString(1, (String) shopItems.get(i));
                rs = ps.executeQuery();
                if( rs.next() ) {
                    totalPrice += rs.getInt(4);
                    %>
                    <tr>
                        <td> <%= rs.getString(1) %> </td>
                        <td> <%= rs.getString(2) %> </td>
                        <td> <%= rs.getString(3) %> </td>
                        <td> <%= rs.getInt(4) %> </td>
                    </tr>                    
                    <%                    
                }
            }

            %>
            
        </table>
        <p> Total Price: <%= totalPrice %> </p>
    </body>
</html>
