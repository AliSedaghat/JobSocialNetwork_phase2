/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package viewmodel;

import java.util.List;

/**
 *
 * @author ali
 */
public class EmployerInformationBean {
    private String employerName;
    private String phoneNum;
    private String email;
    private String state;
    private String city;
    private String remainAddr;
    private String imageUrl;
    private String summury;
    private List<EmployerSearchResultBean> employerSearchResultBeans;
    private List<String> skills;
    private List<EmployerResumeBean> employerResumeBeans;
    
    public EmployerInformationBean() {}

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    
    public String getEmployerName() {
        return employerName;
    }

    public void setEmployerName(String employerName) {
        this.employerName = employerName;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public List<EmployerSearchResultBean> getEmployerSearchResultBeans() {
        return employerSearchResultBeans;
    }

    public void setEmployerSearchResultBeans(List<EmployerSearchResultBean> employerSearchResultBeans) {
        this.employerSearchResultBeans = employerSearchResultBeans;
    }

    public List<String> getSkills() {
        return skills;
    }

    public void setSkills(List<String> skills) {
        this.skills = skills;
    }

    public List<EmployerResumeBean> getEmployerResumeBeans() {
        return employerResumeBeans;
    }

    public void setEmployerResumeBeans(List<EmployerResumeBean> employerResumeBeans) {
        this.employerResumeBeans = employerResumeBeans;
    }

    public String getSummury() {
        return summury;
    }

    public void setSummury(String summury) {
        this.summury = summury;
    }
    
}
