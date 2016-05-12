/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databasemodels;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SAEED
 */
@Entity
@Table(catalog = "jobsocialnetworkdb", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Jobseekerresume.findAll", query = "SELECT j FROM Jobseekerresume j"),
    @NamedQuery(name = "Jobseekerresume.findById", query = "SELECT j FROM Jobseekerresume j WHERE j.id = :id"),
    @NamedQuery(name = "Jobseekerresume.findByTitle", query = "SELECT j FROM Jobseekerresume j WHERE j.title = :title"),
    @NamedQuery(name = "Jobseekerresume.findByResponsibility", query = "SELECT j FROM Jobseekerresume j WHERE j.responsibility = :responsibility"),
    @NamedQuery(name = "Jobseekerresume.findByStartdate", query = "SELECT j FROM Jobseekerresume j WHERE j.startdate = :startdate"),
    @NamedQuery(name = "Jobseekerresume.findByEnddate", query = "SELECT j FROM Jobseekerresume j WHERE j.enddate = :enddate")})
public class Jobseekerresume implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String title;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String responsibility;
    @Basic(optional = false)
    @NotNull
    @Temporal(TemporalType.DATE)
    private Date startdate;
    @Basic(optional = false)
    @NotNull
    @Temporal(TemporalType.DATE)
    private Date enddate;
    @JoinColumn(name = "jobseeker", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Jobseeker jobseeker;

    public Jobseekerresume() {
    }

    public Jobseekerresume(Integer id) {
        this.id = id;
    }

    public Jobseekerresume(Integer id, String title, String responsibility, Date startdate, Date enddate) {
        this.id = id;
        this.title = title;
        this.responsibility = responsibility;
        this.startdate = startdate;
        this.enddate = enddate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getResponsibility() {
        return responsibility;
    }

    public void setResponsibility(String responsibility) {
        this.responsibility = responsibility;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Jobseeker getJobseeker() {
        return jobseeker;
    }

    public void setJobseeker(Jobseeker jobseeker) {
        this.jobseeker = jobseeker;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Jobseekerresume)) {
            return false;
        }
        Jobseekerresume other = (Jobseekerresume) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dao.databasemodels.Jobseekerresume[ id=" + id + " ]";
    }
    
}
