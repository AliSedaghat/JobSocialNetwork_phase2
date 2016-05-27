/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databasemodels;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
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
@Table(name = "teamresume")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Teamresume.findAll", query = "SELECT t FROM Teamresume t"),
    @NamedQuery(name = "Teamresume.findById", query = "SELECT t FROM Teamresume t WHERE t.id = :id"),
    @NamedQuery(name = "Teamresume.findByTitle", query = "SELECT t FROM Teamresume t WHERE t.title = :title"),
    @NamedQuery(name = "Teamresume.findByEmployername", query = "SELECT t FROM Teamresume t WHERE t.employername = :employername"),
    @NamedQuery(name = "Teamresume.findByStartdate", query = "SELECT t FROM Teamresume t WHERE t.startdate = :startdate"),
    @NamedQuery(name = "Teamresume.findByEndadate", query = "SELECT t FROM Teamresume t WHERE t.endadate = :endadate")})
public class Teamresume implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "title")
    private String title;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "employername")
    private String employername;
    @Basic(optional = false)
    @NotNull
    @Column(name = "startdate")
    @Temporal(TemporalType.DATE)
    private Date startdate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "endadate")
    @Temporal(TemporalType.DATE)
    private Date endadate;
    @JoinColumn(name = "team", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Team team;

    public Teamresume() {
    }

    public Teamresume(Integer id) {
        this.id = id;
    }

    public Teamresume(Integer id, String title, String employername, Date startdate, Date endadate) {
        this.id = id;
        this.title = title;
        this.employername = employername;
        this.startdate = startdate;
        this.endadate = endadate;
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

    public String getEmployername() {
        return employername;
    }

    public void setEmployername(String employername) {
        this.employername = employername;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEndadate() {
        return endadate;
    }

    public void setEndadate(Date endadate) {
        this.endadate = endadate;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
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
        if (!(object instanceof Teamresume)) {
            return false;
        }
        Teamresume other = (Teamresume) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "databasemodels.Teamresume[ id=" + id + " ]";
    }
    
}
