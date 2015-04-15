/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StudentPack;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author arjun
 */


public class Student {
    
    private int roll;
    private String name;
    private int marks;
    
    private Connection con;
    private PreparedStatement ps;
    
    private int updateCount;
    private String insQuery;
    private String topperQuery;
    
    
    public Student()   {
        name = null;
        marks = 0;
    }
    
    public void setRoll(int roll)   {
        this.roll = roll;
    }
    
    public void setName(String name)    {
        this.name = name;
    }
    
    public void setMarks(int marks) {
        this.marks = marks;
    }
    
    public int getRoll()   {
        return roll;
    }
    
    public String getName() {
        return name;
    }
    
    public int getMarks()   {
        return marks;
    }
    
    public int getUpdateCount() {
        return updateCount;
    }
    
    public void writeToDB()   {
        insQuery = "insert into markstable(roll, name, marks) values(?, ?, ?)";
        
        try {
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/StudBeanDB", "teacher", "password");
            ps = con.prepareStatement(insQuery);
            
            ps.setInt(1, roll);
            ps.setString(2, name);
            ps.setInt(3, marks);

            
            updateCount = ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("\n Oops! Something went wrong!");
            ex.printStackTrace();
        }
    }

    public int foo()   {
        return (marks + 20);
    }
}
