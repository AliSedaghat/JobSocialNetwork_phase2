/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.databasemodels;

import java.io.Serializable;
import javax.persistence.Basic;
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
@Table(catalog = "jobsocialnetworkdb", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Employerjobfield.findAll", query = "SELECT e FROM Employerjobfield e"),
    @NamedQuery(name = "Employerjobfield.findById", query = "SELECT e FROM Employerjobfield e WHERE e.employerjobfieldPK.id = :id"),
    @NamedQuery(name = "Employerjobfield.findByEmployer", query = "SELECT e FROM Employerjobfield e WHERE e.employerjobfieldPK.employer = :employer"),
    @NamedQuery(name = "Employerjobfield.findByTitle", query = "SELECT e FROM Employerjobfield e WHERE e.title = :title")})
public class Employerjobfield implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EmployerjobfieldPK employerjobfieldPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String title;
    @JoinColumn(name = "employer", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Employer employer1;

    public Employerjobfield() {
    }

    public Employerjobfield(EmployerjobfieldPK employerjobfieldPK) {
        this.employerjobfieldPK = employerjobfieldPK;
    }

    public Employerjobfield(EmployerjobfieldPK employerjobfieldPK, String title) {
        this.employerjobfieldPK = employerjobfieldPK;
        this.title = title;
    }

    public Employerjobfield(int id, int employer) {
        this.employerjobfieldPK = new EmployerjobfieldPK(id, employer);
    }

    public EmployerjobfieldPK getEmployerjobfieldPK() {
        return employerjobfieldPK;
    }

    public void setEmployerjobfieldPK(EmployerjobfieldPK employerjobfieldPK) {
        this.employerjobfieldPK = employerjobfieldPK;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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
        hash += (employerjobfieldPK != null ? employerjobfieldPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Employerjobfield)) {
            return false;
        }
        Employerjobfield other = (Employerjobfield) object;
        if ((this.employerjobfieldPK == null && other.employerjobfieldPK != null) || (this.employerjobfieldPK != null && !this.employerjobfieldPK.equals(other.employerjobfieldPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dao.databasemodels.Employerjobfield[ employerjobfieldPK=" + employerjobfieldPK + " ]";
    }
    
}
