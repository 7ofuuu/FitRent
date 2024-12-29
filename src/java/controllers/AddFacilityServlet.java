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
@WebServlet(name = "AddFacilityServlet", urlPatterns = {"/AddFacilityServlet"})
public class AddFacilityServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitrent_db","root","");
            
            String fieldName = request.getParameter("fieldName");
            String fieldType = request.getParameter("fieldType");
            String fieldWidth = request.getParameter("fieldWidth");
            // DI JSP Tidak ada fieldLength atau Panjang Lapangan
            
            String fieldAddress = request.getParameter("fieldAddress");
            String description = request.getParameter("description");
            String fieldPrice = request.getParameter("fieldPrice");
            
            String newfacilityID;
            
            
            PreparedStatement getLastID = con.prepareStatement("SELECT facilityID FROM fasilitas ORDER BY facilityID DESC LIMIT 1");
            ResultSet rs = getLastID.executeQuery();
            if (rs.next()) {
                String lastID = rs.getString("facilityID");
                int numericPart = Integer.parseInt(lastID.substring(1)); 
                newfacilityID = "F" + String.format("%03d", numericPart + 1); 
            } else {
                // If no ID exists, start with F001
                newfacilityID = "F001";
            }
            
            PreparedStatement insertFasilitas = con.prepareStatement(
                "INSERT INTO user_account (facilityID, nama, deskripsi, harga, tipe, alamat) VALUES (?, ?, ?, ?, ?, ?)"
            );
            insertFasilitas.setString(1, newfacilityID);
            insertFasilitas.setString(2, fieldName);
            insertFasilitas.setString(3, description);
            insertFasilitas.setString(4, fieldPrice);
            insertFasilitas.setString(5, fieldAddress);

            
            
            PreparedStatement insertFasilitasTurunan = null;
            if (Integer.parseInt(fieldType) == 1) { //Lapangan Futsal
                insertFasilitasTurunan = con.prepareStatement(
                "INSERT INTO fasilitas_lapangan_bola (facilityID, lebar_lapangan) VALUES (?, ?)"
                );
                insertFasilitasTurunan.setString(1, newfacilityID);
                insertFasilitasTurunan.setString(2, fieldWidth);
//                insertFasilitasTurunan.setString(3, "0"); // fieldLength
                
            } else if (Integer.parseInt(fieldType) == 2) { //Lapangan Basket
                String basketballHeight = request.getParameter("basketballHeight");
                
                insertFasilitasTurunan = con.prepareStatement(
                "INSERT INTO fasilitas_lapangan_basket (facilityID, lebar_lapangan, tingi_kerangjang) VALUES (?, ?, ?)"
                );
                insertFasilitasTurunan.setString(1, newfacilityID);
                insertFasilitasTurunan.setString(2, fieldWidth);
//                insertFasilitasTurunan.setString(3, "0"); // fieldLength
                insertFasilitasTurunan.setString(3, basketballHeight);
                
            } else if (Integer.parseInt(fieldType) == 3) { //Lapangan Bulu tangkis
                String batmintonHeight = request.getParameter("batmintonHeight");
                
                insertFasilitasTurunan = con.prepareStatement(
                "INSERT INTO fasilitas_lapangan_bulu_tangkis (facilityID, lebar_lapangan, tinggi_net_bulu_tangkis) VALUES (?, ?, ?)"
                );
                insertFasilitasTurunan.setString(1, newfacilityID);
                insertFasilitasTurunan.setString(2, fieldWidth);
//                insertFasilitasTurunan.setString(3, "0"); // fieldLength
                insertFasilitasTurunan.setString(3, batmintonHeight);
                
            } else if (Integer.parseInt(fieldType) == 4) { //Lapangan Voli
                String volleyballHeight = request.getParameter("volleyballHeight");
                
                insertFasilitasTurunan = con.prepareStatement(
                "INSERT INTO fasilitas_lapangan_voli (facilityID, lebar_lapangan, tinggi_net_voli) VALUES (?, ?, ?)"
                );
                insertFasilitasTurunan.setString(1, newfacilityID);
                insertFasilitasTurunan.setString(2, fieldWidth);
//                insertFasilitasTurunan.setString(3, "0"); // fieldLength
                insertFasilitasTurunan.setString(3, volleyballHeight);
                
            } else if (Integer.parseInt(fieldType) == 5) { //Lapangan Lari
                insertFasilitasTurunan = con.prepareStatement(
                "INSERT INTO fasilitas_lapangan_lari (facilityID, lebar_lapangan) VALUES (?, ?)"
                );
                insertFasilitasTurunan.setString(1, newfacilityID);
                insertFasilitasTurunan.setString(2, fieldWidth);
//                insertFasilitasTurunan.setString(3, "0"); // fieldLength
                
            } else if (Integer.parseInt(fieldType) == 6) { //Lapangan Renang
                String swimmingPoolHeight = request.getParameter("swimmingPoolHeight");
                
                insertFasilitasTurunan = con.prepareStatement(
                "INSERT INTO fasilitas_kolam_renang (facilityID, lebar_lapangan, kedalaman_kolam) VALUES (?, ?, ?)"
                );
                insertFasilitasTurunan.setString(1, newfacilityID);
                insertFasilitasTurunan.setString(2, fieldWidth);
//                insertFasilitasTurunan.setString(3, "0"); // fieldLength
                insertFasilitasTurunan.setString(3, swimmingPoolHeight);
            } else {
                
            }
            
            // 
            int rowsInserted = insertFasilitas .executeUpdate();
            int rowsInserted2 = insertFasilitasTurunan .executeUpdate();
            if (rowsInserted > 0 && rowsInserted2 > 0) {
                response.sendRedirect("admin.jsp");
            } else {
                response.sendRedirect("Gagal Insert fasilitas.jsp");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    // Cetak Primary Key dan Foregin Key 
    // SELECT fasilitas.facilityID, fasilitas.nama, fasilitas.deskripsi, fasilitas.harga, fasilitas_lapangan_futsal.panjang_lapangan, fasilitas_lapangan_futsal.lebar_lapangan FROM fasilitas INNER JOIN fasilitas_lapangan_futsal ON fasilitas.facilityID = fasilitas_lapangan_futsal.facilityID WHERE fasilitas.tipe = "lapangan_futsal";
}
