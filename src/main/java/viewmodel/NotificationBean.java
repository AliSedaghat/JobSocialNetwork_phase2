/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package viewmodel;

import java.util.List;

/**
 *
 * @author SAEED
 */
public class NotificationBean {
    private List<EmployerNotificationBean> employerNotificationBeans;
    private List<JobSeekerNotificationBean> jobSeekerNotificationBeans;
    private List<TeamNotificationBean> teamNotificationBeans;

    public List<EmployerNotificationBean> getEmployerNotificationBeans() {
        return employerNotificationBeans;
    }

    public void setEmployerNotificationBeans(List<EmployerNotificationBean> employerNotificationBeans) {
        this.employerNotificationBeans = employerNotificationBeans;
    }

    public List<JobSeekerNotificationBean> getJobSeekerNotificationBeans() {
        return jobSeekerNotificationBeans;
    }

    public void setJobSeekerNotificationBeans(List<JobSeekerNotificationBean> jobSeekerNotificationBeans) {
        this.jobSeekerNotificationBeans = jobSeekerNotificationBeans;
    }

    public List<TeamNotificationBean> getTeamNotificationBeans() {
        return teamNotificationBeans;
    }

    public void setTeamNotificationBeans(List<TeamNotificationBean> teamNotificationBeans) {
        this.teamNotificationBeans = teamNotificationBeans;
    }
    
    
}
