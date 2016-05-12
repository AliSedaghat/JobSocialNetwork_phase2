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
    @NamedQuery(name = "Employerresume.findAll", query = "SELECT e FROM Employerresume e"),
    @NamedQuery(name = "Employerresume.findById", query = "SELECT e FROM Employerresume e WHERE e.id = :id"),
    @NamedQuery(name = "Employerresume.findByTitle", query = "SELECT e FROM Employerresume e WHERE e.title = :title"),
    @NamedQuery(name = "Employerresume.findByDescription", query = "SELECT e FROM Employerresume e WHERE e.description = :description"),
    @NamedQuery(name = "Employerresume.findByStartdate", query = "SELECT e FROM Employerresume e WHERE e.startdate = :startdate"),
    @NamedQuery(name = "Employerresume.findByEnddate", query = "SELECT e FROM Employerresume e WHERE e.enddate = :enddate")})
public class Employerresume implements Serializable {
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
    @Size(min = 1, max = 200)
    private String description;
    @Basic(optional = false)
    @NotNull
    @Temporal(TemporalType.DATE)
    private Date startdate;
    @Basic(optional = false)
    @NotNull
    @Temporal(TemporalType.DATE)
    private Date enddate;
    @JoinColumn(name = "employer", referencedColumnName = "id")
    @ManyToOne
    private Employer employer;

    public Employerresume() {
    }

    public Employerresume(Integer id) {
        this.id = id;
    }

    public Employerresume(Integer id, String title, String description, Date startdate, Date enddate) {
        this.id = id;
        this.title = title;
        this.description = description;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public Employer getEmployer() {
        return employer;
    }

    public void setEmployer(Employer employer) {
        this.employer = employer;
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
        if (!(object instanceof Employerresume)) {
            return false;
        }
        Employerresume other = (Employerresume) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dao.databasemodels.Employerresume[ id=" + id + " ]";
    }
    
}
