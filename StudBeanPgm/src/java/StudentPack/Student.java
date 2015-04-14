/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StudentPack;

import java.sql.*;

/**
 *
 * @author arjun
 */


public class Student {
    private String name;
    private int marks;
    
    private Connection con;
    private PreparedStatement ps;
    
    
    public Student()   {
        name = null;
        marks = 0;
    }
    
    public void setName(String name)    {
        this.name = name;
    }
    
    public void setMarks(int marks) {
        this.marks = marks;
    }
    
    public String getName() {
        return name;
    }
    
    public int getMarks()   {
        return marks;
    }
    
    public void setupDB()   {
        
        
    }
    
    public int foo()   {
        return (marks + 20);
    }
}
