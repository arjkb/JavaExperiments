<%-- 
    Document   : toppersheet
    Created on : 15 Apr, 2015, 9:57:05 AM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Student Topper Information </title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div>
            <jsp:useBean id = "Student_Bean" class = "StudentPack.Student"></jsp:useBean>
            <%
                Student_Bean.getTopper(); //method to find out who's the topper
            %>
            <br /> Topper Roll : <jsp:getProperty name="Student_Bean" property="roll" />
            <br /> Topper Name : <jsp:getProperty name="Student_Bean" property="name" />
            <br /> Topper Marks : <jsp:getProperty name="Student_Bean" property="marks" />                
        </div>
    </body>
</html>
