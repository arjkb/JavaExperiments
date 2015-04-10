<%-- 
    Document   : adminsheet.jsp
    Created on : 5 Apr, 2015, 7:52:29 AM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage = "errorpage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin Page </title>
        <link href ="css/mystyle.css" rel = "stylesheet" type="text/stylesheet">
    </head>
    <body>
        <header> 
            <h1> Marks Management Suite </h1>
            <nav id = "navbar">
                <a class ="nav_element" href="entermarks.jsp" target = "_blank">
                                Enter Marks
                </a>
                &nbsp
                <a class ="nav_element" href="regstudent.jsp" target = "_blank">
                                Register New Student
                </a>
            </nav>
        </header>    
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
<!--            <ul>
                <li> <a href = "entermarks.jsp"> Enter marks </a> </li>
                <li> <a href = "regstudent.html"> Register new student </a> </li>
            </ul>-->
    <%
        } else  {
    %>
            <h2> Invalid username/password </h2>
    <%
            //response.setHeader("ReLogin", "5; url=index.html");
            response.sendRedirect("index.html");
        }        
    %>     
    <%@include file = "include/footer.html" %>

