/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fitrent;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author abdie
 */
public class MenuFinance extends Menu {
    private List<String> historiTransaksi = new ArrayList<>();
    private double dana = 1000;

    public void cetakDana() {
        System.out.println("Total dana : Rp. %.2f\n" + dana);
    }

    public void cetakHistoriTransaksi() {
        System.out.println("Riwayat Transaksi:");
        for (String transaksi : historiTransaksi) {
            System.out.println("- " + transaksi);
        }
    }

    @Override
    public void cetakMenu() {
        System.out.println("Menu Finance");
        System.out.println("1. Lihat Dana");
        System.out.println("2. Lihat Histori Transaksi");
    }
}