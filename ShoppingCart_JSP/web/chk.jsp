<%-- 
    Document   : chk
    Created on : 26 Apr, 2015, 3:03:56 PM
    Author     : arjun
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Shopped Items: </h1>
        <%
            ArrayList A = (ArrayList) session.getAttribute("stuff");
            %>  
            <ul>
                <%
            for(int i = 0; i < A.size(); i++)   {
                %>
                <li> <%= A.get(i) %>
                <%
            }
                %>
            </ul>
        
    </body>
</html>
