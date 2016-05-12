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
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(catalog = "jobsocialnetworkdb", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Account.findAll", query = "SELECT a FROM Account a"),
    @NamedQuery(name = "Account.findById", query = "SELECT a FROM Account a WHERE a.id = :id"),
    @NamedQuery(name = "Account.findByUsername", query = "SELECT a FROM Account a WHERE a.username = :username"),
    @NamedQuery(name = "Account.findByPassword", query = "SELECT a FROM Account a WHERE a.password = :password"),
    @NamedQuery(name = "Account.findByUsernameAndPassword", query = "SELECT a FROM Account a WHERE a.username = :username and a.password = :password"),
    @NamedQuery(name = "Account.findByKind", query = "SELECT a FROM Account a WHERE a.kind = :kind")})
public class Account implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    private String password;
    @Basic(optional = false)
    @NotNull
    private int kind;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "account")
    private Collection<Team> teamCollection;
    @OneToMany(mappedBy = "receiver")
    private Collection<Notification> notificationCollection;
    @OneToMany(mappedBy = "sender")
    private Collection<Notification> notificationCollection1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "account")
    private Collection<Jobseeker> jobseekerCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "account")
    private Collection<Employer> employerCollection;

    public Account() {
    }

    public Account(Integer id) {
        this.id = id;
    }

    public Account(Integer id, String username, String password, int kind) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.kind = kind;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getKind() {
        return kind;
    }

    public void setKind(int kind) {
        this.kind = kind;
    }

    @XmlTransient
    public Collection<Team> getTeamCollection() {
        return teamCollection;
    }

    public void setTeamCollection(Collection<Team> teamCollection) {
        this.teamCollection = teamCollection;
    }

    @XmlTransient
    public Collection<Notification> getNotificationCollection() {
        return notificationCollection;
    }

    public void setNotificationCollection(Collection<Notification> notificationCollection) {
        this.notificationCollection = notificationCollection;
    }

    @XmlTransient
    public Collection<Notification> getNotificationCollection1() {
        return notificationCollection1;
    }

    public void setNotificationCollection1(Collection<Notification> notificationCollection1) {
        this.notificationCollection1 = notificationCollection1;
    }

    @XmlTransient
    public Collection<Jobseeker> getJobseekerCollection() {
        return jobseekerCollection;
    }

    public void setJobseekerCollection(Collection<Jobseeker> jobseekerCollection) {
        this.jobseekerCollection = jobseekerCollection;
    }

    @XmlTransient
    public Collection<Employer> getEmployerCollection() {
        return employerCollection;
    }

    public void setEmployerCollection(Collection<Employer> employerCollection) {
        this.employerCollection = employerCollection;
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
        if (!(object instanceof Account)) {
            return false;
        }
        Account other = (Account) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dao.databasemodels.Account[ id=" + id + " ]";
    }
    
}
