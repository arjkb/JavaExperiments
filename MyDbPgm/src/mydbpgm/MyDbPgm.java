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
 * @author Arjun Krishna Babu
 */
public class MyDbPgm {

    /**
     * @param args the command line arguments
     */
    
    
    static void insertRecord(String id, String name) {
            //parameters for connection to database
        Connection con = null;
        Statement s = null;
        ResultSet rs = null;
        
        PreparedStatement insStmt = null;
       
        String insString = "insert into VESPER.STUDENT(ID, NAME) values(?, ?)";
       
        try {
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MyDemoDB", "vesper", "bond");
            insStmt = con.prepareStatement(insString);
            insStmt.setString(1, id); //add parameter to query
            insStmt.setString(2, name); //add parameter to query
            
            insStmt.executeUpdate();
            
        } catch(SQLException E) {
            System.out.println("SQL Exception!");
            E.printStackTrace();
        } catch(Exception E)    {
            System.out.println("\n Oops! Something went wrong!");
            E.printStackTrace();
        }
    }
    
    
    static void searchRecord(String id) {
        //parameters for connection to database
        Connection con = null;
        Statement s = null;
        ResultSet rs = null;
        
        PreparedStatement searchStmt = null;
       
        String searchString = "select * from VESPER.STUDENT where ID like ?";
       
        try {
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/MyDemoDB", "vesper", "bond");
            searchStmt = con.prepareStatement(searchString);
            searchStmt.setString(1, id); //add parameter to query
                        
            rs = searchStmt.executeQuery();
            
            if(rs.next())   {
                System.out.println("\n Name: " + rs.getString(2));
            }
        } catch(SQLException E) {
            System.out.println("SQL Exception!");
            E.printStackTrace();
        } catch(Exception E)    {
            System.out.println("\n Oops! Something went wrong!");
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
                case 1: System.out.print("\n Enter ID to insert: ");
                        id = text.nextLine();
                        System.out.print("\n Enter ID to insert: ");
                        name = text.nextLine();
                        insertRecord(id, name);
                        break;
                case 2: System.out.print("\n Enter ID to search: ");
                        id = text.nextLine();
                        searchRecord(id);
                        break;
                case 0: System.out.println("\n Thank you for running this program!");
                        break;
                default: System.out.println("\n ERROR: Invalid Choice!");
            }
            
            System.out.print("\n Do you wish to run this program again? (Y/N): ");
            rch = text.nextLine();
        } while (rch.equals("y") || rch.equals("Y"));

    } //end of main
}
