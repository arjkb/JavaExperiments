<%-- 
    Document   : marksubmit
    Created on : 5 Apr, 2015, 9:48:55 AM
    Author     : arjun
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! int id;
            String m1;
            String m2;
            String m3;
            
            String insQuery;
            Connection con;
            PreparedStatement ps;
            int count;
        %>
        <%
            id = Integer.parseInt(request.getParameter("id"));
            m1 = request.getParameter("mark1");
            m2 = request.getParameter("mark2");
            m3 = request.getParameter("mark3");
            
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MarksDB", "myuser", "mypass");
            
            insQuery = "insert into MARKS(ROLL, SUB1, SUB2, SUB3) values(?, ?, ?, ?)";
            ps = con.prepareStatement("insert into MARKS(ROLL, SUB1, SUB2, SUB3) values(111, 20, 30, 40)");
        %>
        
        <p> ID = <%= id %> </p>
    </body>
</html>
