<%-- 
    Document   : studsheet
    Created on : 5 Apr, 2015, 7:41:14 AM
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
    
    <%@include file = "include/header.html" %>
    <%!     int id;
            int m1;
            int m2;
            int m3;
            
            String pass;
            String getPassQuery;
            String insQuery;
            
            Connection con;
            PreparedStatement ps;
            PreparedStatement S;
            ResultSet passResult;
            String checkPass;
            int count;
        %>
        <%
            id = Integer.parseInt(request.getParameter("id"));
            pass = request.getParameter("userpass");
            
   /*         m1 = Integer.parseInt(request.getParameter("mark1"));
            m2 = Integer.parseInt(request.getParameter("mark2"));
            m3 = Integer.parseInt(request.getParameter("mark3")); */
            
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MarksDB", "myuser", "mypass");
            
            getPassQuery = "select pass from USERDATA where roll = ?";
            
            S = con.prepareStatement(getPassQuery);
            S.setInt(1, id);
            
            passResult = S.executeQuery();           
            passResult.next();
            
            checkPass = passResult.getString(1);
            
            if( pass.equals(checkPass) )    {
                %> 
                <p> Valid user! </p>
                <%
            } else  {
                %> 
                <p> Invalid user! </p>
                <%
            }
                        
            
  /*          
            insQuery = "insert into MARKS(ROLL, SUB1, SUB2, SUB3) values(?, ?, ?, ?)";
            
            
            ps = con.prepareStatement(insQuery);
            ps.setInt(1, id);
            ps.setInt(2, m1);
            ps.setInt(3, m2);
            ps.setInt(4, m3);
            
            count = ps.executeUpdate();
*/
        %>
    
        <h1>Hello World!</h1>
    
    <%@include file = "include/footer.html" %>
