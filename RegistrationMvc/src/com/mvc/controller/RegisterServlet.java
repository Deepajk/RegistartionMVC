package com.mvc.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;
 

@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet {
       public RegisterServlet() {
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
         String firstName = request.getParameter("firstname");
         String lastName = request.getParameter("lastname");
         String addressOne = request.getParameter("addressone");
         String addressTwo = request.getParameter("addresstwo");
         String city = request.getParameter("city");
         String state = request.getParameter("state");
         String zipCode = request.getParameter("zipcode");
         String country = request.getParameter("country");
          
         
         
         RegisterBean registerBean = new RegisterBean();
        //Using Java Beans - An easiest way to play with group of related data
         registerBean.setFirstName(firstName);
         registerBean.setLastName(lastName);
         registerBean.setAddressOne(addressOne);
         registerBean.setAddressTwo(addressTwo); 
         registerBean.setCity(city); 
         registerBean.setState(state);
         registerBean.setZipCode(zipCode); 
         registerBean.setCountry(country); 
                  
         
         
         
         RegisterDao registerDao = new RegisterDao();
          
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String userRegistered = registerDao.registerUser(registerBean);
          
         if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
         {
            request.getRequestDispatcher("/Home.jsp").forward(request, response);
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Register.jsp").forward(request, response);
         }
     }
}