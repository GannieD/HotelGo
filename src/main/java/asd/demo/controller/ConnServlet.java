package asd.demo.controller;

import asd.demo.model.dao.MongoDBConnector;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import asd.demo.model.*;
import java.io.PrintWriter;
/**
 *
 * @author George
 */
public class ConnServlet extends HttpServlet {
    private MongoDBConnector connector;  
     
    @Override 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String logicType = request.getParameter("forwardType");
        System.out.println(logicType);
        if (logicType.equals("register"))
        {
            String newUsername = request.getParameter("newUsername");
            String newPassword = request.getParameter("newPassword");

            connector = new MongoDBConnector("Christian", "Abclzm123"); 
            //User newUser = new User("Christian", newUsername, newPassword, 1234567);
            //connector.add(newUser);
            response.setContentType("text/html;charset=UTF-8");  
            HttpSession session = request.getSession();              
            String status = (connector != null) ? "Connected to MongoDB" : "Disconnected from MongoDB";        

            session.setAttribute("status", status); 
            //session.setAttribute("adminemail", adminemail);
            //session.setAttribute("adminpassword", adminpass);
            System.out.println("MongoDB Atlas status");
            System.out.println(status);
            connector.addUser(newUsername, newPassword);
            connector.showTable();


            RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            rs.forward(request, response);
        }
        if (logicType.equals("login"))
        {
            boolean correctInfo = false;
            User user;
            connector = new MongoDBConnector("Christian", "Abclzm123"); 
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            System.out.print(username);
            System.out.print(password);
            response.setContentType("text/html;charset=UTF-8");  
            HttpSession session = request.getSession(); 
            
            user = connector.checkUser(username, password);
            System.out.print(user);
            String status = (user != null) ? "Login successfully" : "Wrong username or password"; 
            session.setAttribute("status", status); 
            if (user != null)
            {
                correctInfo = true;
                PrintWriter out = response.getWriter();
                out.write(String.valueOf(correctInfo));
                out.close();
            }
            else
            {
                PrintWriter out = response.getWriter();
                out.write(String.valueOf(correctInfo));
                out.close();
            }
            System.out.println("correctInfo: " + correctInfo);
            
        }
    }    
  
}
