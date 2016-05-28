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
public class JobSeekerInformationBean {
    private String sex;
    private String degreeType;
    private String nameAndFamilyName;
    private String birthDate;
    private String phoneNum;
    private String email;
    private String state;
    private String city;
    private String remainAddr;
    private String imageUrl;
    private String otherDesc;
    private String showPrivacy;
    private List<String> skills;
    List<JobSeekerResumeBean> jobSeekerResumeBeans;
    
    public JobSeekerInformationBean() {}

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDegreeType() {
        return degreeType;
    }

    public void setDegreeType(String degreeType) {
        this.degreeType = degreeType;
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

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getOtherDesc() {
        return otherDesc;
    }

    public void setOtherDesc(String otherDesc) {
        this.otherDesc = otherDesc;
    }

    public String getShowPrivacy() {
        return showPrivacy;
    }

    public void setShowPrivacy(String showPrivacy) {
        this.showPrivacy = showPrivacy;
    }
    
    public List<String> getSkills() {
        return skills;
    }

    public void setSkills(List<String> skills) {
        this.skills = skills;
    }

    public List<JobSeekerResumeBean> getJobSeekerResumeBeans() {
        return jobSeekerResumeBeans;
    }

    public void setJobSeekerResumeBeans(List<JobSeekerResumeBean> jobSeekerResumeBeans) {
        this.jobSeekerResumeBeans = jobSeekerResumeBeans;
    }
    
    
    
}
