/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fitrent;
/**
 *
 * @author abdie
 */

public abstract class Menu {
    private int userChoice;

    public void setUserChoice(int newChoice) {
        userChoice = newChoice;
    }

    public int getUserChoice() {
        return userChoice;
    }

    public abstract void cetakMenu();
}


