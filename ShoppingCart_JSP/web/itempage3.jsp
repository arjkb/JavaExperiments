<%-- 
    Document   : itempage3
    Created on : 26 Apr, 2015, 8:53:25 PM
    Author     : arjun
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection con;
            PreparedStatement ps;
            String insQuery;
            
            ResultSet rs;
        %>
        <h1> Phone </h1>
        <%
            con = (Connection) session.getAttribute("connection");
            ps = (PreparedStatement) session.getAttribute("statement");
            insQuery = (String) session.getAttribute("insertQuery");
                    
            
            ArrayList shopItems = (ArrayList) session.getAttribute("purchase");
            String pens[] = request.getParameterValues("pen");
            shopItems.addAll(Arrays.asList(pens));
            session.setAttribute("purchase", shopItems);
            
            ps.setString(1, "phone");
            
            rs = ps.executeQuery();            
        %>    
        
        
        <form action="checkout.jsp"> 
            <table>
                <tr>
                    <th> Select </th>
                    <th> Model Name </th>
                    <th> Manufacturer </th>
                    <th> Price </th>
                    <th> Stock </th>
                </tr>
        <%
            while( rs.next() )  {
        %>
                <tr>
                    <td> 
                        <input type="checkbox" name ="phone" value= <%= rs.getString(1) %> />
                    </td>
                    <td> <%= rs.getString(2) %> </td>
                    <td> <%= rs.getString(3) %> </td>
                    <td> <%= rs.getString(4) %> </td>
                    <td> <%= rs.getString(5) %> </td>
                </tr>
        <%
            }
        %>


<!--                <tr>
                    <td> 
                        <input type="checkbox" name ="phone" value="i6_apple"/>
                    </td>
                    <td> iPhone 6 </td>
                    <td> Apple </td>
                    <td> 60,240 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="phone" value="n4_google"/>
                    </td>
                    <td> Nexus 4 </td>
                    <td> LG/Google </td>
                    <td> 11,549 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="phone" value="xz2_sony"/>
                    </td>
                    <td> Xperia Z2 </td>
                    <td> Sony </td>
                    <td> 30,993 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="phone" value="l930_ms"/>
                    </td>
                    <td> Lumia 930 </td>
                    <td> Microsoft </td>
                    <td> 23,544 </td>
                    <td> 12 </td>
                </tr>-->
                <tr>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> 
                        <input type="submit" value = "Continue Shopping" />
                    </td>
                    <td> </td>
                </tr>                
            </table>
        </form>
    </body>
</html>
