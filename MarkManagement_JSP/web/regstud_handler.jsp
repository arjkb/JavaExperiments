<%-- 
    Document   : regstud_handler
    Created on : 7 Apr, 2015, 6:05:39 PM
    Author     : arjun
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage = "errorpage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page </title>
    </head>
    <body>
        <%!
            int studentID;
            String studentName;
            String studentPassWord;  
            
            Connection con;
            PreparedStatement PS;
            String insQuery;
            int updateCount;
            
            
        %>
        
        <%
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MarksDB", "myuser", "mypass");
                     
            insQuery = new String("insert into USERDATA(ROLL, NAME, PASS) values(?, ?, ?)");
            
            PS = con.prepareStatement(insQuery);
                       
            studentID = Integer.parseInt(request.getParameter("id"));
            studentName = request.getParameter("studName");            
            studentPassWord = request.getParameter("pass1");
            
            out.println("\n ID = " + studentID);
            out.println("\n Name = " + studentName);
            out.println("\n PassWord =  " + studentPassWord);
            
            
            PS.setInt(1, studentID);
            PS.setString(2, studentName);
            PS.setString(3, studentPassWord);
            
            updateCount = PS.executeUpdate();
            
            out.println("\n " + updateCount + " rows updated ");
        %>
    </body>
</html>
