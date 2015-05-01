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
        %>
        <h1>Checkout Page</h1>
        
        <%
            ArrayList shopItems = (ArrayList) session.getAttribute("purchase");
            String phone[] = request.getParameterValues("phone");
            
            if( phone != null ) {
                shopItems.addAll(Arrays.asList(phone));                
            }
            
            session.setAttribute("purchase", shopItems);
            
            con = (Connection) session.getAttribute("connection");
            ps = (PreparedStatement) session.getAttribute("statement");
                        
        %>
        
        <%
            shopItems = (ArrayList) session.getAttribute("purchase");
            
            for(int i = 0; i < shopItems.size(); i++)   {
                out.println("<br /> " + shopItems.get(i));
            }
        %>
    </body>
</html>
