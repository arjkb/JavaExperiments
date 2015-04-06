<%-- 
    Document   : adminsheet.jsp
    Created on : 5 Apr, 2015, 7:52:29 AM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin Page </title>
    </head>
    <%@include file = "include/header.html" %>
    <%!
        String userid;
        String userpass;
    %>
    <%
        userid = request.getParameter("userid");
        userpass = request.getParameter("userpass");
    
        if(userid.equals("admin") && userpass.equals("adpass"))  {
            session.setAttribute("username", userid);
            %>
            <h2> Hello <%= userid %> </h2>
            <ul>
                <li> <a href = "entermarks.jsp"> Enter marks </a> </li>
                <li> <a href = "regstudent.jsp"> Register new student </a> </li>
            </ul>
    <%
        } else  {
    %>
            <h2> Invalid username/password </h2>
    <%
        }        
    %>     
    <%@include file = "include/footer.html" %>

