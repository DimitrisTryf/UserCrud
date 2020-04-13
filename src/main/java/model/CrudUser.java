/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author dimit
 */
public class CrudUser {

    private int id;
    private String realName;
    private String username;
    private String password;

    public CrudUser(int id, String realName, String username, String password) {
        this.id = id;
        this.realName = realName;
        this.username = username;
        this.password = password;
    }

    public CrudUser() {
    }

    public CrudUser(String realName, String username, String password) {
        this.realName = realName;
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
