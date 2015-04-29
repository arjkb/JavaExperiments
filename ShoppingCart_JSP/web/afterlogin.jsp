<%-- 
    Document   : afterlogin
    Created on : 29 Apr, 2015, 7:19:19 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username = request.getParameter("myuser");
            String userpass = request.getParameter("mypass");
            
            if( username.equals("admin") && userpass.equals("adpass") ) {
                out.println("<h2> Welcome back, " + username + "! </h2>");
                session.setAttribute("user", username);
                
                %>
                
                <br /> <a href="addnewitem.jsp"> Add new item </a>
                
                <%               
            } else  {
                out.println("<h2> You seem to be an invalid user! </h2>");
            }
        %>
        
    </body>
</html>
