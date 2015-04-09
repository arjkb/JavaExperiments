<%-- 
    Document   : studsheet
    Created on : 5 Apr, 2015, 7:41:14 AM
    Author     : arjun
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage = "errorpage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Marks Report </title>
        <link href="css/mystyle.css" rel ="stylesheet">
    </head>
    
    <%@include file = "include/header.html" %>
    <%!    
            int NO_OF_SUB;// = 3;
           
            int id;
               
            int []subAvg;
            
            String pass;
            String username;
            String getPassQuery;
            String getMarksQuery;
            String insQuery;
            String subject;
            
            Connection con;
            PreparedStatement ps;
            PreparedStatement S;
            Statement stmt;
            ResultSet passResult;
            ResultSet marksResult;
            ResultSet tempResult;
            
            //String countQuery = "select count(roll) from marks";
            String subAvgQuery; 
            String checkPass;
            int count;
        %>
        
        <%
            NO_OF_SUB = 3;
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MarksDB", "myuser", "mypass");
            subAvg = new int[NO_OF_SUB];
            
            stmt = con.createStatement();
            
            id = Integer.parseInt(request.getParameter("userid"));
            pass = request.getParameter("userpass"); 
            
            getPassQuery = "select pass, name from USERDATA where roll = ?";
            
            S = con.prepareStatement(getPassQuery);
            S.setInt(1, id);
            
            passResult = S.executeQuery();           

            passResult.next();
            
            checkPass = passResult.getString(1);
            username = passResult.getString(2);
            
            if( pass.equals(checkPass) )    {
                %> 
                <p id = "greeting"> Welcome, <%= username %>!  </p>
                <%
                
                for(int i = 0; i < NO_OF_SUB; i++)  {
                    //populate the average marks for all subjects
                    subject = "sub"+(i+1);
                    
                    subAvgQuery = "select sum(" + subject + ")/count(roll) from marks";
                    tempResult = stmt.executeQuery(subAvgQuery);
                    tempResult.next();
                    
                    subAvg[i] = tempResult.getInt(1);
                }
                
                getMarksQuery = "select sub1, sub2, sub3 from marks where roll = ?";
                ps = con.prepareStatement(getMarksQuery);
                ps.setInt(1, id);                
                marksResult = ps.executeQuery();              

                if( marksResult.next() )    {
                    %>
                    <table id = "marks_table"> 
                        <tr>
                            <th class = "marks_cell"> Subject </th>
                            <th class = "marks_cell"> Your Marks </th>
                            <th class = "marks_cell"> Class Average </th>
                        </tr>
                    <%     
                    for(int i = 1; i <= NO_OF_SUB; i++) {
                        %>
                        <tr>
                            <td class = "marks_cell"> Subject <%= i %> </td>
                            <td class = "marks_cell"> <%= marksResult.getInt(i) %> </td>
                            <td class = "marks_cell"> <%= subAvg[i - 1] %> </td>
                        </tr>
                        
                        <br />

                        <%
                    }
                    %>
                    </table>
                    <%     
                } else  {
                    out.println("\n Oops! We haven't computed your marks yet!");
                }

            } else  {
                %> 
                <p> Invalid user! </p>
                <%
            }
        %>
      <br />
      <br />
    <%@include file = "include/footer.html" %>
