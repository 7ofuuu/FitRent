/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fitrent;

import java.util.List;
import java.util.Scanner;

/**
 *
 * @author abdie
 */
public class MenuUser extends Menu {
    private List<String> fasilitas = List.of("Gym", "Kolam Renang", "Lapangan Badminton"); 

    public void cetakFasilitas() {
        System.out.println("Daftar Fasilitas:");
        for (String fasilitas : fasilitas) {
            System.out.println("- " + fasilitas);
        }
    }

    public void cariFasilitas() {
       Scanner scanner = new Scanner(System.in);
        System.out.println("Masukkan nama fasilitas yang ingin dicari: ");
        String fasilitasDicari = scanner.nextLine();
        
        boolean found = true;
        for(String fasilitas : fasilitas) {
            if(fasilitas.equalsIgnoreCase(fasilitasDicari)) {
                System.out.println("Fasilitas ditemukan: " + fasilitas);
                found = true;
                break;
            }
        }
        if (!found) {
            System.out.println("Fasilitas tidak ditemukan");
        }
    }

    public void sewaFasilitas() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Masunkkan nama fgqasilitas yang ingin disewa: ");
        String fasilitasDisewa = scanner.nextLine();
        
        if (fasilitas.contains(fasilitasDisewa)) {
            System.out.println("FGasilitas " + fasilitasDisewa + "berhasil disewa");
        } else {
            System.out.println("Fasilitas tidakn tersedia");
        }
    }

    @Override
    public void cetakMenu() {
        System.out.println("Menu User");
        System.out.println("1. Lihat Semua Fasilitas");
        System.out.println("2. Cari Fasilitas");
        System.out.println("3. Sewa Fasilitas");
    }
}
