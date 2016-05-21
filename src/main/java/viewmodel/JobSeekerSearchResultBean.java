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
public class JobSeekerSearchResultBean {
    private String jobSeekerName;
    private String degree;
    private String[] skills;
    private String desc;
    private String senderId;
    

    public JobSeekerSearchResultBean() {
    }

    public String getSenderId() {
        return senderId;
    }

    public void setSenderId(String senderId) {
        this.senderId = senderId;
    }
    
    

    public String getJobSeekerName() {
        return jobSeekerName;
    }

    public void setJobSeekerName(String jobSeekerName) {
        this.jobSeekerName = jobSeekerName;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String[] getSkills() {
        return skills;
    }

    public void setSkills(String[] skills) {
        this.skills = skills;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    
}
