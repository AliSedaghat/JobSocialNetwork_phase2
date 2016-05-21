/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databasemodels;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SAEED
 */
@Entity
@Table(name = "jobskills")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Jobskills.findAll", query = "SELECT j FROM Jobskills j"),
    @NamedQuery(name = "Jobskills.findById", query = "SELECT j FROM Jobskills j WHERE j.jobskillsPK.id = :id"),
    @NamedQuery(name = "Jobskills.findByJobid", query = "SELECT j FROM Jobskills j WHERE j.jobskillsPK.jobid = :jobid"),
    @NamedQuery(name = "Jobskills.findByTitle", query = "SELECT j FROM Jobskills j WHERE j.title = :title")})
public class Jobskills implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected JobskillsPK jobskillsPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "title")
    private String title;
    @JoinColumn(name = "jobid", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Job job;

    public Jobskills() {
    }

    public Jobskills(JobskillsPK jobskillsPK) {
        this.jobskillsPK = jobskillsPK;
    }

    public Jobskills(JobskillsPK jobskillsPK, String title) {
        this.jobskillsPK = jobskillsPK;
        this.title = title;
    }

    public Jobskills(int id, int jobid) {
        this.jobskillsPK = new JobskillsPK(id, jobid);
    }

    public JobskillsPK getJobskillsPK() {
        return jobskillsPK;
    }

    public void setJobskillsPK(JobskillsPK jobskillsPK) {
        this.jobskillsPK = jobskillsPK;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (jobskillsPK != null ? jobskillsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Jobskills)) {
            return false;
        }
        Jobskills other = (Jobskills) object;
        if ((this.jobskillsPK == null && other.jobskillsPK != null) || (this.jobskillsPK != null && !this.jobskillsPK.equals(other.jobskillsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "databasemodels.Jobskills[ jobskillsPK=" + jobskillsPK + " ]";
    }
    
}
