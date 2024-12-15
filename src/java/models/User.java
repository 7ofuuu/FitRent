/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author ilham
 */
public class User extends Account {
    private String userID;
    private int balance;
    //priavate Sewa[] daftarSewa;

    public User(String userID, String username, String password) {
        super(username, password, "user");
        this.userID = userID;
        this.balance = 0;
    }

    public String getUserID() {
        return userID;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    @Override
    public String Authentication(String username, String password) {
        if (username.equals(super.getUsername()) && password.equals(super.getPassword())) {
            return this.getUserID();
        }
        return null;
    }
    
    public void transaction(String action, int amount){
        if (action.equals("terima")){
            this.setBalance(this.getBalance() + amount);
        } else if (action.equals("kirim")) {
            this.setBalance(this.getBalance() - amount);
        }
    }
    
    //jika data penyewaan pengguna disimpan di class dan bukan di database, maka buat method tambahSewa, hapusSewa, liatSewa.
}

