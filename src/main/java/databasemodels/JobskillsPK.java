/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databasemodels;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author SAEED
 */
@Embeddable
public class JobskillsPK implements Serializable {
    @Basic(optional = false)
    @Column(name = "id")
    private int id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "jobid")
    private int jobid;

    public JobskillsPK() {
    }

    public JobskillsPK(int id, int jobid) {
        this.id = id;
        this.jobid = jobid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getJobid() {
        return jobid;
    }

    public void setJobid(int jobid) {
        this.jobid = jobid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) id;
        hash += (int) jobid;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof JobskillsPK)) {
            return false;
        }
        JobskillsPK other = (JobskillsPK) object;
        if (this.id != other.id) {
            return false;
        }
        if (this.jobid != other.jobid) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "databasemodels.JobskillsPK[ id=" + id + ", jobid=" + jobid + " ]";
    }
    
}
