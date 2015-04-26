<%-- 
    Document   : itempage2
    Created on : 26 Apr, 2015, 8:21:34 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Pen/Writing Instruments </h1>
        
        <form action = "itempage3.jsp"> 
            <table>
                <tr>
                    <th> Select </th>
                    <th> Model Name </th>
                    <th> Manufacturer </th>
                    <th> Price </th>
                    <th> Stock </th>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="watch" value="pp_cello"/>
                    </td>
                    <td> PinPoint </td>
                    <td> Cello </td>
                    <td> 10 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="watch" value="tt_cello"/>
                    </td>
                    <td> TechnoTip </td>
                    <td> Cello </td>
                    <td> 10 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="watch" value="g_mb"/>
                    </td>
                    <td> Gandhi </td>
                    <td> Mont Blanc </td>
                    <td> 14,00,000 </td>
                    <td> 12 </td>
                </tr>
                <tr>
                    <td> 
                        <input type="checkbox" name ="watch" value="3302_cross"/>
                    </td>
                    <td> 3302 Classic </td>
                    <td> Cross </td>
                    <td> 2,545 </td>
                    <td> 12 </td>
                </tr>
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
