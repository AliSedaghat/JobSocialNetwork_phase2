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
public class EmployerSearchBean {
    private String EmployerName;
    private String sex;
    private String minWage;
    private String skills;
    
    public EmployerSearchBean() {}

    public String getEmployerName() {
        return EmployerName;
    }

    public void setEmployerName(String EmployerName) {
        this.EmployerName = EmployerName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getMinWage() {
        return minWage;
    }

    public void setMinWage(String minWage) {
        this.minWage = minWage;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }
    
    
}
