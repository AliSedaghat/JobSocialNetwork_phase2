/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databasemodels;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SAEED
 */
@Entity
@Table(name = "job")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Job.findAll", query = "SELECT j FROM Job j"),
    @NamedQuery(name = "Job.findById", query = "SELECT j FROM Job j WHERE j.jobPK.id = :id"),
    @NamedQuery(name = "Job.findByEmployer", query = "SELECT j FROM Job j WHERE j.jobPK.employer = :employer"),
    @NamedQuery(name = "Job.findByTitle", query = "SELECT j FROM Job j WHERE j.title = :title"),
    @NamedQuery(name = "Job.findByCapacity", query = "SELECT j FROM Job j WHERE j.capacity = :capacity"),
    @NamedQuery(name = "Job.findBySex", query = "SELECT j FROM Job j WHERE j.sex = :sex"),
    @NamedQuery(name = "Job.findByContributekind", query = "SELECT j FROM Job j WHERE j.contributekind = :contributekind"),
    @NamedQuery(name = "Job.findBySalary", query = "SELECT j FROM Job j WHERE j.salary = :salary"),
    @NamedQuery(name = "Job.findByOtherrequirment", query = "SELECT j FROM Job j WHERE j.otherrequirment = :otherrequirment")})
public class Job implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected JobPK jobPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "title")
    private String title;
    @Column(name = "capacity")
    private Integer capacity;
    @Size(max = 8)
    @Column(name = "sex")
    private String sex;
    @Size(max = 8)
    @Column(name = "contributekind")
    private String contributekind;
    @Column(name = "salary")
    private Integer salary;
    @Size(max = 100)
    @Column(name = "otherrequirment")
    private String otherrequirment;
    @OneToMany(mappedBy = "job")
    private Collection<Notification> notificationCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "job")
    private Collection<Jobskills> jobskillsCollection;
    @JoinColumn(name = "employer", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Employer employer1;

    public Job() {
    }

    public Job(JobPK jobPK) {
        this.jobPK = jobPK;
    }

    public Job(JobPK jobPK, String title) {
        this.jobPK = jobPK;
        this.title = title;
    }

    public Job(int id, int employer) {
        this.jobPK = new JobPK(id, employer);
    }

    public JobPK getJobPK() {
        return jobPK;
    }

    public void setJobPK(JobPK jobPK) {
        this.jobPK = jobPK;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getContributekind() {
        return contributekind;
    }

    public void setContributekind(String contributekind) {
        this.contributekind = contributekind;
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    public String getOtherrequirment() {
        return otherrequirment;
    }

    public void setOtherrequirment(String otherrequirment) {
        this.otherrequirment = otherrequirment;
    }

    @XmlTransient
    public Collection<Notification> getNotificationCollection() {
        return notificationCollection;
    }

    public void setNotificationCollection(Collection<Notification> notificationCollection) {
        this.notificationCollection = notificationCollection;
    }

    @XmlTransient
    public Collection<Jobskills> getJobskillsCollection() {
        return jobskillsCollection;
    }

    public void setJobskillsCollection(Collection<Jobskills> jobskillsCollection) {
        this.jobskillsCollection = jobskillsCollection;
    }

    public Employer getEmployer1() {
        return employer1;
    }

    public void setEmployer1(Employer employer1) {
        this.employer1 = employer1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (jobPK != null ? jobPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Job)) {
            return false;
        }
        Job other = (Job) object;
        if ((this.jobPK == null && other.jobPK != null) || (this.jobPK != null && !this.jobPK.equals(other.jobPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "databasemodels.Job[ jobPK=" + jobPK + " ]";
    }
    
}
