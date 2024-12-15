/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fitrent;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



/**
 *
 * @author abdie
 */
public class MenuAdmin extends Menu {
    private List<String> fasilitas = new ArrayList<>();

    public void ubahDataFasilitas() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Masukkan nama fasilitas baru: ");
        String fasilitasBaru = scanner.nextLine();
        fasilitas.add(fasilitasBaru);
        System.out.println("Fasilitas berhasil ditambahkan.");
    }

    @Override
    public void cetakMenu() {
        System.out.println("Menu Admin");
        System.out.println("1. Ubah Data Fasilitas");
    }
}
   