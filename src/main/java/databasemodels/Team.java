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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SAEED
 */
@Entity
@Table(name = "team")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Team.findAll", query = "SELECT t FROM Team t"),
    @NamedQuery(name = "Team.findById", query = "SELECT t FROM Team t WHERE t.id = :id"),
    @NamedQuery(name = "Team.findByImageaddress", query = "SELECT t FROM Team t WHERE t.imageaddress = :imageaddress"),
    @NamedQuery(name = "Team.findByName", query = "SELECT t FROM Team t WHERE t.name = :name"),
    @NamedQuery(name = "Team.findByPhone", query = "SELECT t FROM Team t WHERE t.phone = :phone"),
    @NamedQuery(name = "Team.findByEmail", query = "SELECT t FROM Team t WHERE t.email = :email"),
    @NamedQuery(name = "Team.findByRegion", query = "SELECT t FROM Team t WHERE t.region = :region"),
    @NamedQuery(name = "Team.findByCity", query = "SELECT t FROM Team t WHERE t.city = :city"),
    @NamedQuery(name = "Team.findByRemialaddress", query = "SELECT t FROM Team t WHERE t.remialaddress = :remialaddress"),
    @NamedQuery(name = "Team.count", query = "SELECT COUNT(t.id) FROM Team t"),
    @NamedQuery(name = "Team.findByAccountId", query = "SELECT t FROM Team t WHERE t.account = :accountId"),
    @NamedQuery(name = "Team.findBySummury", query = "SELECT t FROM Team t WHERE t.summury = :summury")})
public class Team implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 50)
    @Column(name = "imageaddress")
    private String imageaddress;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 20)
    @Column(name = "phone")
    private String phone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 80)
    @Column(name = "email")
    private String email;
    @Size(max = 45)
    @Column(name = "region")
    private String region;
    @Size(max = 45)
    @Column(name = "city")
    private String city;
    @Size(max = 45)
    @Column(name = "remialaddress")
    private String remialaddress;
    @Size(max = 200)
    @Column(name = "summury")
    private String summury;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "team")
    private Collection<Teamresume> teamresumeCollection;
    @JoinColumn(name = "account", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Account account;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "team")
    private Collection<Teamskills> teamskillsCollection;

    public Team() {
    }

    public Team(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImageaddress() {
        return imageaddress;
    }

    public void setImageaddress(String imageaddress) {
        this.imageaddress = imageaddress;
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

    public String getRemialaddress() {
        return remialaddress;
    }

    public void setRemialaddress(String remialaddress) {
        this.remialaddress = remialaddress;
    }

    public String getSummury() {
        return summury;
    }

    public void setSummury(String summury) {
        this.summury = summury;
    }

    @XmlTransient
    public Collection<Teamresume> getTeamresumeCollection() {
        return teamresumeCollection;
    }

    public void setTeamresumeCollection(Collection<Teamresume> teamresumeCollection) {
        this.teamresumeCollection = teamresumeCollection;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    @XmlTransient
    public Collection<Teamskills> getTeamskillsCollection() {
        return teamskillsCollection;
    }

    public void setTeamskillsCollection(Collection<Teamskills> teamskillsCollection) {
        this.teamskillsCollection = teamskillsCollection;
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
        if (!(object instanceof Team)) {
            return false;
        }
        Team other = (Team) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "databasemodels.Team[ id=" + id + " ]";
    }
    
}
