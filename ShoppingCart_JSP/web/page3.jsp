<%-- 
    Document   : page3
    Created on : 26 Apr, 2015, 2:33:53 PM
    Author     : arjun
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Shopping Page 3 </title>
    </head>
    <body>
        <h1> Shopping Page 3 </h1>
        <%
            ArrayList A = (ArrayList) session.getAttribute("stuff");
            
            for(int i = 0; i < A.size(); i++)   {
                out.println("Item: " + A.get(i) + " ");
            } 
            
            String pen[] = request.getParameterValues("pen");
            
            A.addAll(Arrays.asList(pen));
            session.setAttribute("stuff", A);
            
            
        %>
        
        <a href="chk.jsp"> Checkout! </a>
    </body>
</html>
