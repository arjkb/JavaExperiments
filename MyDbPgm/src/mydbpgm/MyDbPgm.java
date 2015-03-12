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
        Scanner text = new Scanner(System.in);
        
        int choice;
        String rch;
        String id, name; 
                       
        do {
            rch = null;
            
            System.out.print("\n 1: Insert student record");
            System.out.print("\n 2: Search student record");
            System.out.print("\n 0: QUIT");
            System.out.print("\n Enter Your Choice: ");
            choice = num.nextInt();
            switch(choice)  {
                case 2: System.out.print("\n Enter ID to search: ");
                        id = text.nextLine();
                        searchRecord(id);
                        break;
                default: System.out.println("\n ERROR: Invalid Choice!");
            }
            
            System.out.print("\n Do you wish to run this program again? (Y/N): ");
            rch = text.nextLine();
        } while (rch.equals("y") || rch.equals("Y"));
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
