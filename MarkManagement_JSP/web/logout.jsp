<%-- 
    Document   : logout
    Created on : 10 Apr, 2015, 8:23:44 AM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Logout </title>
        <link href ="css/mystyle.css" rel = "stylesheet" type="text/stylesheet">
    </head>
    <body>
        <%
            session.invalidate();
        %>
            
        <h2> You have successfully logged out! </h2>
    </body>
    <%@ include file = "include/footer.html" %>