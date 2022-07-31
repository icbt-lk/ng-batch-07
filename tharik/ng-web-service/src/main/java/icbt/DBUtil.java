/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package icbt;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author tharik
 */
public class DBUtil {
    static final String DB_URL = "jdbc:mysql://localhost:3306/icbt_ng?autoReconnect=true&useSSL=false";
    static final String USER = "icbt";
    static final String PASS = "icbt";
    
    public Student getStudent(int id) {
        Student st = new Student();
        
         try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            
            ResultSet resultSet = statement.executeQuery("SELECT * FROM students WHERE id=" + id);
           
            resultSet.next();
            st.setId(resultSet.getInt("id"));
            st.setName(resultSet.getString("name"));
            
        } catch(Exception e) {
            System.out.println(e);
        }
         
        return st;
    }
}
