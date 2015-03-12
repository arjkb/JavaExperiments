/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mydbpgm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author arjun
 */
public class MyDbPgm {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("\n Hello World!");
        
        Connection con = null;
        Statement s = null;
        ResultSet rs = null;
            
        try {
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MyDemoDB", "vesper", "bond");
            s = con.createStatement();
            rs = s.executeQuery("select * from VESPER.STUDENT");
            
            while(rs.next())
                System.out.println("\n Result: " + rs.getString(2));
                 
            
        } catch(SQLException E) {
            System.out.println("SQL Exception!");
            E.printStackTrace();
        }
    }
    
}
