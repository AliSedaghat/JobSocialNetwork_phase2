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
public class JobSeekerInformationBean {
    private String sex;
    private String nameAndFamilyName;
    private String birthDate;
    private String phoneNum;
    private String state;
    private String city;
    private String remainAddr;
    
    public JobSeekerInformationBean() {}

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNameAndFamilyName() {
        return nameAndFamilyName;
    }

    public void setNameAndFamilyName(String nameAndFamilyName) {
        this.nameAndFamilyName = nameAndFamilyName;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getRemainAddr() {
        return remainAddr;
    }

    public void setRemainAddr(String remainAddr) {
        this.remainAddr = remainAddr;
    }
    
    
}
