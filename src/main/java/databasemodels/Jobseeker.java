/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databasemodels;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SAEED
 */
@Entity
@Table(name = "jobseeker")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Jobseeker.findAll", query = "SELECT j FROM Jobseeker j"),
    @NamedQuery(name = "Jobseeker.findById", query = "SELECT j FROM Jobseeker j WHERE j.id = :id"),
    @NamedQuery(name = "Jobseeker.findBySex", query = "SELECT j FROM Jobseeker j WHERE j.sex = :sex"),
    @NamedQuery(name = "Jobseeker.findByName", query = "SELECT j FROM Jobseeker j WHERE j.name = :name"),
    @NamedQuery(name = "Jobseeker.findByPhone", query = "SELECT j FROM Jobseeker j WHERE j.phone = :phone"),
    @NamedQuery(name = "Jobseeker.findByEmail", query = "SELECT j FROM Jobseeker j WHERE j.email = :email"),
    @NamedQuery(name = "Jobseeker.findByBirthday", query = "SELECT j FROM Jobseeker j WHERE j.birthday = :birthday"),
    @NamedQuery(name = "Jobseeker.findByRegion", query = "SELECT j FROM Jobseeker j WHERE j.region = :region"),
    @NamedQuery(name = "Jobseeker.findByCity", query = "SELECT j FROM Jobseeker j WHERE j.city = :city"),
    @NamedQuery(name = "Jobseeker.findByRemainaddress", query = "SELECT j FROM Jobseeker j WHERE j.remainaddress = :remainaddress"),
    @NamedQuery(name = "Jobseeker.findByEducation", query = "SELECT j FROM Jobseeker j WHERE j.education = :education"),
    @NamedQuery(name = "Jobseeker.findBySummury", query = "SELECT j FROM Jobseeker j WHERE j.summury = :summury"),
    @NamedQuery(name = "Jobseeker.findByImageaddress", query = "SELECT j FROM Jobseeker j WHERE j.imageaddress = :imageaddress"),
    @NamedQuery(name = "Jobseeker.count", query = "SELECT COUNT(j.id) FROM Employer j"),
    @NamedQuery(name = "Jobseeker.findByShowprivacy", query = "SELECT j FROM Jobseeker j WHERE j.showprivacy = :showprivacy")})
public class Jobseeker implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 4)
    @Column(name = "sex")
    private String sex;
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
    @Column(name = "birthday")
    @Temporal(TemporalType.DATE)
    private Date birthday;
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
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "education")
    private String education;
    @Size(max = 200)
    @Column(name = "summury")
    private String summury;
    @Size(max = 50)
    @Column(name = "imageaddress")
    private String imageaddress;
    @Column(name = "showprivacy")
    private Integer showprivacy;
    @JoinColumn(name = "account", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Account account;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "jobseeker")
    private Collection<Jobseekerresume> jobseekerresumeCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "jobseeker")
    private Collection<Jobseekerskills> jobseekerskillsCollection;

    public Jobseeker() {
    }

    public Jobseeker(Integer id) {
        this.id = id;
    }

    public Jobseeker(Integer id, String sex, String name, String phone, String email, String region, String city, String education) {
        this.id = id;
        this.sex = sex;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.region = region;
        this.city = city;
        this.education = education;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
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

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
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

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
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

    public Integer getShowprivacy() {
        return showprivacy;
    }

    public void setShowprivacy(Integer showprivacy) {
        this.showprivacy = showprivacy;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    @XmlTransient
    public Collection<Jobseekerresume> getJobseekerresumeCollection() {
        return jobseekerresumeCollection;
    }

    public void setJobseekerresumeCollection(Collection<Jobseekerresume> jobseekerresumeCollection) {
        this.jobseekerresumeCollection = jobseekerresumeCollection;
    }

    @XmlTransient
    public Collection<Jobseekerskills> getJobseekerskillsCollection() {
        return jobseekerskillsCollection;
    }

    public void setJobseekerskillsCollection(Collection<Jobseekerskills> jobseekerskillsCollection) {
        this.jobseekerskillsCollection = jobseekerskillsCollection;
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
        if (!(object instanceof Jobseeker)) {
            return false;
        }
        Jobseeker other = (Jobseeker) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "databasemodels.Jobseeker[ id=" + id + " ]";
    }
    
}
