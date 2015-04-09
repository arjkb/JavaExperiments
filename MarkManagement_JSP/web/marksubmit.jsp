<%-- 
    Document   : marksubmit
    Created on : 5 Apr, 2015, 9:48:55 AM
    Author     : arjun
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage = "errorpage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! int id;
            int m1;
            int m2;
            int m3;
            
            String insQuery;
            Connection con;
            PreparedStatement ps;
            int count;
        %>
        
        <%
            id = Integer.parseInt(request.getParameter("id"));
            m1 = Integer.parseInt(request.getParameter("mark1"));
            m2 = Integer.parseInt(request.getParameter("mark2"));
            m3 = Integer.parseInt(request.getParameter("mark3"));
            
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MarksDB", "myuser", "mypass");
            
            insQuery = "insert into MARKS(ROLL, SUB1, SUB2, SUB3) values(?, ?, ?, ?)";
            ps = con.prepareStatement(insQuery);
            ps.setInt(1, id);
            ps.setInt(2, m1);
            ps.setInt(3, m2);
            ps.setInt(4, m3);
            
            count = ps.executeUpdate();
        %>
        
        <p> ID = <%= id %> </p>
        <p> <%= count %> rows updated! </p>
    </body>
</html>
