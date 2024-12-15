/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author Lenovo
 */
public class Finance extends Account{
    private String FinanceID;
    private int balance;

    public Finance(String username, String password, String FinanceID) {
        super(username, password, "finance");
        this.FinanceID = FinanceID;
        this.balance = 0;
    }

    public String getFinanceID() {
        return FinanceID;
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
            return this.getFinanceID();
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
    
}
