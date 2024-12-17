/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
            
        if ("admin@fitrent.com".equals(email) && "admin123".equals(pass)) {
            response.sendRedirect("admin.jsp");
        } else if ("finance@fitrent.com".equals(email) && "finance123".equals(pass)) {
            response.sendRedirect("financePage.jsp");
        } else {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitrent_db","root","");
            
                PreparedStatement ps = con.prepareStatement("select email from user_account where email=? and password=?");
                ps.setString(1, email);
                ps.setString(2, pass);
                     
                ResultSet rs=ps.executeQuery();
                    
                if (rs.next()) {
                    response.sendRedirect("userHome.jsp");
                } else {
                    response.sendRedirect("testFailed.jsp");
                }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                response.sendRedirect("testFailed.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                response.sendRedirect("testFailed.jsp");
            } 
        }
    }
}
