/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author User
 */
public class User {
    private int user_id;
    private String username;
    private String password;
    private String email;
     private String phone;
     private String address;
   

    public User() {
    }

    public User(int user_id, String username, String password, String email, String phone,String address) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
         this.address = address;
    }
}
