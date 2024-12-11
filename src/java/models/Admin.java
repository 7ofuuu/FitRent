/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author Lenovo
 */
public class Admin extends Account {
    private String adminID;

    public Admin(String username, String password, String adminID) {
        super(username, password);
        this.adminID = adminID;
    }

    public String getAdminID() {
        return adminID;
    }
 
    @Override
    public String Authentication(String username, String password){
        if (username.equals(super.getUsername()) && password.equals(super.getPassword())) {
            return this.getAdminID();
        }
        return null;
    }
       
}
