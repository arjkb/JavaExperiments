<%-- 
    Document   : itempage2
    Created on : 26 Apr, 2015, 8:21:34 PM
    Author     : arjun
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
        <h1> Pen/Writing Instruments </h1>
        
        <%
            con = (Connection) session.getAttribute("connection");
            ps = (PreparedStatement) session.getAttribute("statement");
            insQuery = (String) session.getAttribute("insertQuery");
        
//        try {        
            ArrayList shopItems = (ArrayList) session.getAttribute("purchase");
            String watches[] = request.getParameterValues("watch");
            shopItems.addAll(Arrays.asList(watches));
            session.setAttribute("purchase", shopItems);
            
            ps.setString(1, "pen");
            
            rs = ps.executeQuery();
        %>
        <form action = "checkout.jsp"> 
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
                        <input type="checkbox" name ="watch" value= <%= rs.getString(1) %> />
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
                        <input type="checkbox" name ="pen" value="pp_cello"/>
                    </td>
                    <td> PinPoint </td>
                    <td> Cello </td>
                    <td> 10 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="pen" value="tt_cello"/>
                    </td>
                    <td> TechnoTip </td>
                    <td> Cello </td>
                    <td> 10 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="pen" value="g_mb"/>
                    </td>
                    <td> Gandhi </td>
                    <td> Mont Blanc </td>
                    <td> 14,00,000 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="pen" value="3302_cross"/>
                    </td>
                    <td> 3302 Classic </td>
                    <td> Cross </td>
                    <td> 2,545 </td>
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
        
        <%
//            } catch(Exception E)    {
//                E.printStackTrace();                
//            }  
        %>

    </body>
</html>
