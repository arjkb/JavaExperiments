<%-- 
    Document   : submarks
    Created on : 14 Apr, 2015, 7:06:12 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "StudentPack.Student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Submit Marks </title>
    </head>
    <body>
        <%!
            String name;
            int marks;
        %>
        <h1>Hello World!</h1>
        <%
            name = request.getParameter("name");
            marks = Integer.parseInt(request.getParameter("marks"));
            
//            out.println("\n Name: " + name);
//            out.println("\n Marks: " + marks);
        %>
        
        <jsp:useBean id = "Student_Bean" class = "StudentPack.Student"></jsp:useBean>
        <jsp:setProperty name = "Student_Bean" property="*" />
        
        Name of student: <jsp:getProperty name="Student_Bean" property = "name" />
       
        <%
//            out.println("\n Return" + Student_Bean.foo());
        %>
    </body>
</html>
