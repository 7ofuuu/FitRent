/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fitrent;

/**
 *
 * @author abdie
 */
import java.util.ArrayList;
import java.util.Date;

public class Transaction {
    private static ArrayList<Transaction> transactions = new ArrayList<>();
    private String transactionID;
    private String user;
    private String facility;
    private int hour;
    private int price;
    private Date date;

    public Transaction(String transactionID, String user, String facility, int hour, int price, Date date) {
        this.transactionID = transactionID;
        this.user = user;
        this.facility = facility;
        this.hour = hour;
        this.price = price;
        this.date = date;
    }

    public static void addTransaction(Transaction transaction) {
        transactions.add(transaction);
    }
    
    public String getTransactionID() {
        return transactionID;
    }

    public static boolean editTransaction(String transactionID, Transaction updatedTransaction) {
        for (int i = 0; i < transactions.size(); i++) {
            if (transactions.get(i).getTransactionID().equals(transactionID)) {
                transactions.set(i, updatedTransaction);
                return true;
            }
        }
        return false;
    }

    public static boolean deleteTransaction(String transactionID) {
        for (int i = 0; i < transactions.size(); i++) {
            if (transactions.get(i).getTransactionID().equals(transactionID)) {
                transactions.remove(i);
                return true;
            }
        }
        return false;
    }

    public static ArrayList<Transaction> getTransactions() {
        return transactions;
    }
}
