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
public class JobPK implements Serializable {
    @Basic(optional = false)
    @Column(name = "id")
    private int id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "employer")
    private int employer;

    public JobPK() {
    }

    public JobPK(int id, int employer) {
        this.id = id;
        this.employer = employer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEmployer() {
        return employer;
    }

    public void setEmployer(int employer) {
        this.employer = employer;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) id;
        hash += (int) employer;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof JobPK)) {
            return false;
        }
        JobPK other = (JobPK) object;
        if (this.id != other.id) {
            return false;
        }
        if (this.employer != other.employer) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "databasemodels.JobPK[ id=" + id + ", employer=" + employer + " ]";
    }
    
}
