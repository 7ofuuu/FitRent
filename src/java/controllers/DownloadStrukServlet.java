/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

/**
 *
 * @author damai
 */
@WebServlet("/DownloadStrukServlet")
public class DownloadStrukServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=struk.pdf");

        try (OutputStream out = response.getOutputStream()) {
            // Buat dokumen PDF
            Document document = new Document();
            PdfWriter.getInstance(document, out);
            document.open();
            
            

            // Tambahkan logo
            String logoPath = getServletContext().getRealPath("/assets/logo.png"); // Path gambar logo
            try {
                Image logo = Image.getInstance(logoPath);
                logo.scaleToFit(100, 100); // Sesuaikan ukuran
                logo.setAlignment(Image.ALIGN_LEFT);
                document.add(logo);
            } catch (Exception e) {
                document.add(new Paragraph("Logo not found."));
            }

            // Tambahkan judul
            Font titleFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD, 18, BaseColor.BLACK);
            Paragraph title = new Paragraph("Struk Pembayaran", titleFont);
            title.setAlignment(Element.ALIGN_CENTER);
            title.setSpacingAfter(20);
            document.add(title);

            // Tambahkan tabel
            PdfPTable table = new PdfPTable(2); // 2 kolom
            table.setWidthPercentage(100);
            table.setSpacingBefore(10f);
            table.setSpacingAfter(10f);

            // Header tabel
            PdfPCell cell1 = new PdfPCell(new Phrase("Deskripsi"));
            cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
            cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell1);

            PdfPCell cell2 = new PdfPCell(new Phrase("Detail"));
            cell2.setBackgroundColor(BaseColor.LIGHT_GRAY);
            cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell2);

            // Konten tabel
            table.addCell("Nama Fasilitas:");
            table.addCell("GOR AHMAD");
            table.addCell("Jumlah Bayar:");
            table.addCell("Rp 100.000");
            table.addCell("Hari & Waktu:");
            table.addCell("January 22, 2024, 10:30 AM");
            table.addCell("Lama Sewa:");
            table.addCell("10:30 AM - 13: 00 PM");
            table.addCell("Transaction ID:");
            table.addCell("ABC123XYZ");

            document.add(table);

            // Tambahkan ucapan terima kasih
            Font thankYouFont = FontFactory.getFont(FontFactory.HELVETICA, 14, BaseColor.DARK_GRAY);
            Paragraph thankYou = new Paragraph("Terimakasih, Sampai Berjumpa Lagi!", thankYouFont);
            thankYou.setAlignment(Element.ALIGN_CENTER);
            thankYou.setSpacingBefore(20);
            document.add(thankYou);

            document.close();
        } catch (DocumentException e) {
            throw new IOException("Error generating PDF", e);
        }
    }
}