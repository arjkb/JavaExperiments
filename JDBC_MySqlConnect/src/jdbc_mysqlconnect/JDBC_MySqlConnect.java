/*
 * Program to demonstrate MySQL connectivity through JDBC
 */
package jdbc_mysqlconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Arjun Krishna Babu
 */
public class JDBC_MySqlConnect {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // TODO code application logic here
            
            String selQuery = "SELECT `SNO`,`NAME` FROM `MyTable`";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_db", "root", "password");
            PreparedStatement ps = con.prepareStatement(selQuery);
            ResultSet rs = ps.executeQuery();
            
            while( rs.next() )  {
                System.out.print("\n S.No: " + rs.getInt(1));
                System.out.print("\n Name: " + rs.getString(2));
                System.out.println();
            }
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(JDBC_MySqlConnect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(JDBC_MySqlConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
