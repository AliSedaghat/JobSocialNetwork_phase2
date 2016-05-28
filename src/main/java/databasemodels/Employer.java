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
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "employer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Employer.findAll", query = "SELECT e FROM Employer e"),
    @NamedQuery(name = "Employer.findById", query = "SELECT e FROM Employer e WHERE e.id = :id"),
    @NamedQuery(name = "Employer.findByName", query = "SELECT e FROM Employer e WHERE e.name = :name"),
    @NamedQuery(name = "Employer.findByPhone", query = "SELECT e FROM Employer e WHERE e.phone = :phone"),
    @NamedQuery(name = "Employer.findByEmail", query = "SELECT e FROM Employer e WHERE e.email = :email"),
    @NamedQuery(name = "Employer.findByRegion", query = "SELECT e FROM Employer e WHERE e.region = :region"),
    @NamedQuery(name = "Employer.findByCity", query = "SELECT e FROM Employer e WHERE e.city = :city"),
    @NamedQuery(name = "Employer.findByRemainaddress", query = "SELECT e FROM Employer e WHERE e.remainaddress = :remainaddress"),
    @NamedQuery(name = "Employer.findBySummury", query = "SELECT e FROM Employer e WHERE e.summury = :summury"),
    @NamedQuery(name = "Employer.count", query = "SELECT COUNT(e.id) FROM Employer e"),
    @NamedQuery(name = "Employer.findByAccountId", query = "SELECT e FROM Employer e WHERE e.account = :accountId"),
    @NamedQuery(name = "Employer.findByImageaddress", query = "SELECT e FROM Employer e WHERE e.imageaddress = :imageaddress")})
public class Employer implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "name")
    private String name;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "phone")
    private String phone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "region")
    private String region;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "city")
    private String city;
    @Size(max = 100)
    @Column(name = "remainaddress")
    private String remainaddress;
    @Size(max = 200)
    @Column(name = "summury")
    private String summury;
    @Size(max = 50)
    @Column(name = "imageaddress")
    private String imageaddress;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "employer", fetch = FetchType.EAGER)
    private Collection<Employerjobfield> employerjobfieldCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "employer", fetch = FetchType.EAGER)
    private Collection<Employerresume> employerresumeCollection;
    @JoinColumn(name = "account", referencedColumnName = "id")
    @ManyToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER)
    private Account account;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "employer", fetch = FetchType.EAGER)
    private Collection<Job> jobCollection;

    public Employer() {
    }

    public Employer(Integer id) {
        this.id = id;
    }

    public Employer(Integer id, String name, String phone, String email, String region, String city) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.region = region;
        this.city = city;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getRemainaddress() {
        return remainaddress;
    }

    public void setRemainaddress(String remainaddress) {
        this.remainaddress = remainaddress;
    }

    public String getSummury() {
        return summury;
    }

    public void setSummury(String summury) {
        this.summury = summury;
    }

    public String getImageaddress() {
        return imageaddress;
    }

    public void setImageaddress(String imageaddress) {
        this.imageaddress = imageaddress;
    }

    @XmlTransient
    public Collection<Employerjobfield> getEmployerjobfieldCollection() {
        return employerjobfieldCollection;
    }

    public void setEmployerjobfieldCollection(Collection<Employerjobfield> employerjobfieldCollection) {
        this.employerjobfieldCollection = employerjobfieldCollection;
    }

    @XmlTransient
    public Collection<Employerresume> getEmployerresumeCollection() {
        return employerresumeCollection;
    }

    public void setEmployerresumeCollection(Collection<Employerresume> employerresumeCollection) {
        this.employerresumeCollection = employerresumeCollection;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    @XmlTransient
    public Collection<Job> getJobCollection() {
        return jobCollection;
    }

    public void setJobCollection(Collection<Job> jobCollection) {
        this.jobCollection = jobCollection;
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
        if (!(object instanceof Employer)) {
            return false;
        }
        Employer other = (Employer) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "databasemodels.Employer[ id=" + id + " ]";
    }
    
}
