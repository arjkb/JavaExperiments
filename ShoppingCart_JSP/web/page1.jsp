<%-- 
    Document   : page1.jsp
    Created on : 26 Apr, 2015, 2:07:36 PM
    Author     : arjun
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Shopping Page 1 </title>
    </head>
    <body>
        <%! 
            ArrayList A;
        %>
        
        <h1> Shopping Page 1 </h1>
        
        <%
            A = new ArrayList();
            session.setAttribute("stuff", A);
            out.println("<h1> Hello! </h1>");
        %>
        <form action ="page2.jsp">
            <input type="checkbox" name ="watch" value ="casio" /> Casio <br />
            <input type="checkbox" name ="watch" value ="longines" /> Longines <br />
            <input type="checkbox" name ="watch" value ="titan" /> Titan <br />
<!--            <input type="checkbox" name ="casio" /> Casio <br />
            <input type="checkbox" name ="longines" /> Longines <br />
            <input type="checkbox" name ="titan" /> Titan <br />-->

            <input type ="submit" />
        </form>
    </body>
</html>
