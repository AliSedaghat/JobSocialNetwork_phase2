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
public class PasswordChangeBean {
    private String currentPass;
    private String newPass;
    private String repeatedPass;
    
    public PasswordChangeBean() {}

    public String getCurrentPass() {
        return currentPass;
    }

    public void setCurrentPass(String currentPass) {
        this.currentPass = currentPass;
    }

    public String getNewPass() {
        return newPass;
    }

    public void setNewPass(String newPass) {
        this.newPass = newPass;
    }

    public String getRepeatedPass() {
        return repeatedPass;
    }

    public void setRepeatedPass(String repeatedPass) {
        this.repeatedPass = repeatedPass;
    }
    
    
}
