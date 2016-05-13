/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package viewmodel;

/**
 *
 * @author ali
 */
public class RegisterBean {
    private String kindOfUser;
    private String userName;
    private String password;
    private String repeatedPassword;
    
    public RegisterBean() {}

    public String getKindOfUser() {
        return kindOfUser;
    }

    public void setKindOfUser(String kindOfUser) {
        this.kindOfUser = kindOfUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepeatedPassword() {
        return repeatedPassword;
    }

    public void setRepeatedPassword(String repeatedPassword) {
        this.repeatedPassword = repeatedPassword;
    }
    
    
}
