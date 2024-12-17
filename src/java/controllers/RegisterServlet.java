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
import java.sql.SQLException;
import java.sql.ResultSet;
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
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        Connection con = null;
        PreparedStatement cekAkun = null;
        PreparedStatement getLastID = null;
        PreparedStatement insertAkun = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitrent_db", "root", "");

            cekAkun = con.prepareStatement("SELECT email FROM user_account WHERE email=?");
            cekAkun.setString(1, email);
            rs = cekAkun.executeQuery();

            if (rs.next()) {
                response.sendRedirect("testFailed.jsp");
            } else {
                getLastID = con.prepareStatement("SELECT userID FROM user_account ORDER BY userID DESC LIMIT 1");
                ResultSet rsLastID = getLastID.executeQuery();

                String newUserID = "U001"; // Default userID if no rows exist
                if (rsLastID.next()) {
                    String lastUserID = rsLastID.getString("userID"); // Example: "U004"
                    int numericPart = Integer.parseInt(lastUserID.substring(1)); // Extract numeric part
                    numericPart++; // Increment the numeric part
                    newUserID = "U" + String.format("%03d", numericPart); // Format as "U005"
                }
                insertAkun = con.prepareStatement(
                    "INSERT INTO user_account (userID, email, password, name, balance) VALUES (?, ?, ?, ?, ?)"
                );
                
                insertAkun.setString(1, newUserID);
                insertAkun.setString(2, email);
                insertAkun.setString(3, pass);
                insertAkun.setString(4, name);
                insertAkun.setString(5, "0");


                int rowsInserted = insertAkun.executeUpdate();

                if (rowsInserted > 0) {
                    response.sendRedirect("userHome.jsp");
                } else {
                    response.sendRedirect("Gagal Insert.jsp");
                }
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, "Driver not found", ex);
            response.sendRedirect("Error Connection.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, "Database error", ex);
            response.sendRedirect("ErrorSQL.jsp");
        }
    }
}
