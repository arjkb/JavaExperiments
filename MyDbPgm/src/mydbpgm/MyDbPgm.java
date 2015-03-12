/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mydbpgm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

/**
 *
 * @author arjun
 */
public class MyDbPgm {

    /**
     * @param args the command line arguments
     */
    
    /*
    static void insRecord() {
        Connection con = null;
        Statement s = null;
        ResultSet rs = null;
        
        try {
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MyDemoDB", "vesper", "bond");
            s = con.createStatement();
            //rs = s.executeQuery("select * from VESPER.STUDENT");
            
            while(rs.next())
                System.out.println("\n Result: " + rs.getString(2));
                 
            
        } catch(SQLException E) {
            System.out.println("SQL Exception!");
            E.printStackTrace();
        }
    }
    */
    
    static void searchRecord(String id) {
        Connection con = null;
        Statement s = null;
        ResultSet rs = null;
        
        PreparedStatement searchStmt = null;
        
//        String searchString = "select * from VESPER.STUDENT where ID like \'" + id +"\'";
        
        String searchString = "select * from VESPER.STUDENT where ID like ?";
       
        try {
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MyDemoDB", "vesper", "bond");
            searchStmt = con.prepareStatement(searchString);
            searchStmt.setString(1, id);
            //rs = s.executeQuery("select * from VESPER.STUDENT");
            
            rs = searchStmt.executeQuery();
            if(rs.next())   {
                System.out.println("\n Name: " + rs.getString(2));
            }
       
            
        } catch(SQLException E) {
            System.out.println("SQL Exception!");
            E.printStackTrace();
        }
    }
    
    
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner num = new Scanner(System.in);
        
        int choice;
        System.out.println("\n Hello World!");
        
        Connection con = null;
        Statement s = null;
        ResultSet rs = null;
        
        
        do {
            System.out.println("\n 1: Insert student record");
            System.out.println("\n 2: Search student record");
            System.out.println("\n 0: QUIT");
            System.out.println("\n Enter Your Choice: ");
            choice = num.nextInt();
            switch(choice)  {
                case 2: searchRecord("101");
                        break;
                default: System.out.println("\n ERROR: Invalid Choice!");
            }
            
        } while (choice != 0);
/*        
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
*/       
    }
    
}
