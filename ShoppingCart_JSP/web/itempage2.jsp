<%-- 
    Document   : itempage2
    Created on : 26 Apr, 2015, 8:21:34 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            String insQuery;
        %>
        <h1> Pen/Writing Instruments </h1>
        
        <%
            //retrieve JDBC objects from session variables
            con = (Connection) session.getAttribute("connection");
            ps = (PreparedStatement) session.getAttribute("statement");
            insQuery = (String) session.getAttribute("insertQuery");
            
            //get shopping data from prev page and store them into session variable
            ArrayList shopItems = (ArrayList) session.getAttribute("purchase");
            String watches[] = request.getParameterValues("watch");
            shopItems.addAll(Arrays.asList(watches));
            session.setAttribute("purchase", shopItems);
                      
            ps.setString(1, "pen");
            
            rs = ps.executeQuery();
        %>
        <form action = "itempage3.jsp"> 
            <table>
                <tr>
                    <th> Select </th>
                    <th> Model Name </th>
                    <th> Manufacturer </th>
                    <th> Price </th>
                    <th> Stock </th>
                </tr>
        <%
            //dynamically populate data from inventory
            while( rs.next() )  {
        %>
                <tr>
                    <td> 
                        <input type="checkbox" name ="pen" value= <%= rs.getString(1) %> />
                    </td>
                    <td> <%= rs.getString(2) %> </td>
                    <td> <%= rs.getString(3) %> </td>
                    <td> <%= rs.getString(4) %> </td>
                    <td> <%= rs.getString(5) %> </td>
                </tr>
        <%
            }
        %>
                <tr>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> 
                        <input type="submit" value = "Continue Shopping" />
                    </td>
                    <td> </td>
                </tr>
            </table>
        </form>

    </body>
</html>
