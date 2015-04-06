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
            %>
            <h2> Hello <%= userid %> </h2>
            <ul>
                <li> <a href = ""> Enter marks </a> </li>
                <li> <a href = ""> Register new student </a> </li>
            </ul>
    <%
        } else  {
    %>
            <h2> Invalid username/password </h2>
    <%
        }
        
    %>
    
        <h1>Admin Sheet</h1>
        
        <form action = "marksubmit.jsp">
            <table>
                <tr>
                    <td> ID </td>
                    <td> <input type ="text" name ="id" /> </td>
                </tr>                
                <tr>
                    <td> Marks 1 </td>
                    <td> <input type ="text" name ="mark1" /> </td>
                </tr>
                <tr>
                    <td> Marks 2 </td>
                    <td> <input type ="text" name ="mark2" /> </td>
                </tr>
                <tr>
                    <td> Marks 3 </td>
                    <td> <input type ="text" name ="mark3" /> </td>
                </tr>
                <tr>
                    <td> </td>
                    <td> <input type ="submit"/> </td>
                </tr>
            </table>
        </form>
    <%@include file = "include/footer.html" %>

