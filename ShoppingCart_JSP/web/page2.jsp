<%-- 
    Document   : page2.jsp
    Created on : 26 Apr, 2015, 2:18:22 PM
    Author     : arjun
--%>

<%@page import="java.util.Arrays"%>
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
           
        %>
        <h1> Shopping Page 1 </h1>
        
        <%
            ArrayList A = (ArrayList) session.getAttribute("stuff");
            
            String []w = request.getParameterValues("watch");
            
            for(int i = 0; i < w.length ; i++)    {
                out.println("A " + w[i]);
            }
            
            A.addAll(Arrays.asList(w));
            session.setAttribute("stuff", A);
        %>
        
        <form action="page3.jsp">
            <h2> Pens </h2>
            <input type ="checkbox" name ="pen" value ="cross" /> Cross
            <input type ="checkbox" name ="pen" value ="parker" /> Parker
            <input type ="checkbox" name ="pen" value ="technotip" /> TechnoTip
            <input type ="submit" />
        </form>
<!--        Click <a href ="page3.jsp" target ="_blank"> here </a> to go to page 3-->
        
    </body>
</html>
