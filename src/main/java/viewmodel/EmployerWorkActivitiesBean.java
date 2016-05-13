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
public class EmployerWorkActivitiesBean {
    private String jobFields;
    private String projectTitle;
    private String projectDesc;
    private String fromDate;
    private String tillDate;
    private String aboutEmployer;
    
    public EmployerWorkActivitiesBean() {}

    public String getJobFields() {
        return jobFields;
    }

    public void setJobFields(String jobFields) {
        this.jobFields = jobFields;
    }

    public String getProjectTitle() {
        return projectTitle;
    }

    public void setProjectTitle(String projectTitle) {
        this.projectTitle = projectTitle;
    }

    public String getProjectDesc() {
        return projectDesc;
    }

    public void setProjectDesc(String projectDesc) {
        this.projectDesc = projectDesc;
    }

    public String getFromDate() {
        return fromDate;
    }

    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public String getTillDate() {
        return tillDate;
    }

    public void setTillDate(String tillDate) {
        this.tillDate = tillDate;
    }

    public String getAboutEmployer() {
        return aboutEmployer;
    }

    public void setAboutEmployer(String aboutEmployer) {
        this.aboutEmployer = aboutEmployer;
    }
    
    
}
