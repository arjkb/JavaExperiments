<%-- 
    Document   : checkout
    Created on : 26 Apr, 2015, 9:14:06 PM
    Author     : arjun
--%>

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
        <h1>Checkout Page</h1>
        <%
            ArrayList shopItems = (ArrayList) session.getAttribute("purchase");
            String phone[] = request.getParameterValues("phone");
            shopItems.addAll(Arrays.asList(phone));
            session.setAttribute("purchase", shopItems);
        %>
        
        <%
            shopItems = (ArrayList) session.getAttribute("purchase");
            
            for(int i = 0; i < shopItems.size(); i++)   {
                out.println("<br /> " + shopItems.get(i));
            }
        %>
    </body>
</html>
