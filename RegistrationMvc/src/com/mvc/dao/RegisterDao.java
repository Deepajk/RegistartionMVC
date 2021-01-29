package com.mvc.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;
 
public class RegisterDao { 
     public String registerUser(RegisterBean registerBean)
     {
         String firstName = registerBean.getFirstName();
         String lastName = registerBean.getLastName();
         String addressOne = registerBean.getAddressOne();
         String addressTwo = registerBean.getAddressTwo();
         String  city = registerBean.getCity();
         String  state= registerBean.getState();
         String country = registerBean.getCountry();
         String  zipCode = registerBean.getZipCode();
        
             
         Connection con = null;
         PreparedStatement preparedStatement = null;         
         try
         {
             con = DBConnection.createConnection();
             String query = "insert into users(firstName,lastName,addressOne,addressTwo,city,state,country,zipCode) values (?,?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
             preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
             preparedStatement.setString(1, firstName);
             preparedStatement.setString(2, lastName);
             preparedStatement.setString(3, addressOne);
             preparedStatement.setString(4, addressTwo);
             preparedStatement.setString(5, city);
             preparedStatement.setString(6, state);
             preparedStatement.setString(7, country);
             preparedStatement.setString(8, zipCode);
                                        
             int i= preparedStatement.executeUpdate();
              
             if (i!=0)  //Just to ensure data has been inserted into the database
             return "SUCCESS"; 
         }
         catch(SQLException e)
         {
            e.printStackTrace();
         }       
         return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
     }
}