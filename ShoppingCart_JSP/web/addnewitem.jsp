<%-- 
    Document   : addnewitem
    Created on : 29 Apr, 2015, 8:58:22 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String username = (String) session.getAttribute("user");
        
        out.println("<h1> Welcome back, " + username + "! </h2>");
    %>
    <body>
        <h2> Add Item to Inventory! </h2>
        <div>
            <form>
                <table>
                    <tr>
                        <td> New Item ID </td>
                        <td>
                            <input type ="text" name ="id" />
                        </td>
                    </tr>
                    <tr>
                        <td> Category </td>
                        <td>
                            <select>
                                <option value ="pen"> Pen </option>
                                <option value ="phone"> Phone </option>
                                <option value ="watch"> Watch </option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Model </td>
                        <td>
                            <input type ="text" name ="id" />
                        </td>
                    </tr>
                    <tr>
                        <td> Manufacturer </td>
                        <td>
                            <input type ="text" name ="id" />
                        </td>
                    </tr>
                    <tr>
                        <td> Price </td>
                        <td>
                            <input type ="text" name ="id" />
                        </td>
                    </tr>
                    <tr>
                        <td> Available Stock </td>
                        <td>
                            <input type ="text" name ="id" />
                        </td>
                    </tr>
                    <tr>
                        <td> </td>
                        <td>
                            <input type ="submit" value ="Add to inventory!" />
                        </td>
                    </tr>
                </table>
            </form>    
        </div>
    </body>
</html>
