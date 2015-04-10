<%-- 
    Document   : entermarks
    Created on : 6 Apr, 2015, 5:20:34 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage = "errorpage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Student Marks Entry </title>
        <link href ="css/mystyle.css" rel = "stylesheet" type="text/stylesheet">
    </head>
    <body>
        <%
            String userid = (String)session.getAttribute("username");
            out.println("Hello " + userid);
        %>
                <header> 
            <h1> Marks Management Suite </h1>
            <nav id = "navbar">
                <a id = "navelem_current" href="entermarks.jsp" target = "_blank">
                                Enter Marks
                </a>
                &nbsp
                <a class ="nav_element" href="regstudent.jsp" target = "_blank">
                                Register New Student
                </a>
                &nbsp
                <a class ="nav_element" href="logout.jsp" target = "_self">
                                Logout
                </a>
            </nav>
        </header> 
        <h2> Enter Student Marks </h2>
        <form action = "marksubmit.jsp">
            <table id = "marksentry_table">
                <tr>
                    <td class = "marksentry_element"> ID </td>
                    <td class = "marksentry_element"> <input type ="text" name ="id" /> </td>
                </tr>                
                <tr>
                    <td class = "marksentry_element"> Marks 1 </td>
                    <td class = "marksentry_element"> <input type ="text" name ="mark1" /> </td>
                </tr>
                <tr>
                    <td class = "marksentry_element"> Marks 2 </td>
                    <td class = "marksentry_element"> <input type ="text" name ="mark2" /> </td>
                </tr>
                <tr>
                    <td class = "marksentry_element"> Marks 3 </td>
                    <td class = "marksentry_element"> <input type ="text" name ="mark3" /> </td>
                </tr>
                <tr>
                    <td class = "marksentry_element"> </td>
                    <td class = "marksentry_element"> <input type ="submit"/> </td>
                </tr>
            </table>
        </form>
    </body>
</html>
