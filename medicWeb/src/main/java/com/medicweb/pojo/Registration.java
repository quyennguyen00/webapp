/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author QUYENNGUYEN
 */
@Entity
@Table(name = "`registration`")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Registration.findAll", query = "SELECT r FROM Registration r"),
    @NamedQuery(name = "Registration.findById", query = "SELECT r FROM Registration r WHERE r.id = :id"),
    @NamedQuery(name = "Registration.findByEmail", query = "SELECT r FROM Registration r WHERE r.email = :email"),
    @NamedQuery(name = "Registration.findByDate", query = "SELECT r FROM Registration r WHERE r.date = :date"),
    @NamedQuery(name = "Registration.findByActive", query = "SELECT r FROM Registration r WHERE r.active = :active"),
    @NamedQuery(name = "Registration.findByDescription", query = "SELECT r FROM Registration r WHERE r.description = :description")})
public class Registration implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "`id`")
    private Integer id;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45,message = "{regit.NotNullErr}")
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;
    @Basic(optional = false)
    @Column(name = "active")
    private boolean active;
    @Column(name = "pay")
    private Boolean check;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 225,message = "{regit.NotNullErr}")
    @Column(name = "description")
    private String description;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "registrationId")
    private Collection<ExaminationCard> examinationCardCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "registration")
    private Collection<Prescription> prescriptionCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "registrationId")
    private Collection<Bill> billCollection;
    @JoinColumn(name = "`user_id`", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userId;

    public Registration() {
    }

    public Registration(Integer id) {
        this.id = id;
    }

    public Registration(Integer id, String phone, Date date, boolean active, String description) {
        this.id = id;
        this.email = phone;
        this.date = date;
        this.active = active;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean getActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
     public Boolean getCheck() {
        return check;
    }

    public void setCheck(Boolean check) {
        this.check = check;
    }
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
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
        if (!(object instanceof Registration)) {
            return false;
        }
        Registration other = (Registration) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.medicweb.pojo.Registration[ id=" + id + " ]";
    }

    /**
     * @return the examinationCardCollection
     */
    public Collection<ExaminationCard> getExaminationCardCollection() {
        return examinationCardCollection;
    }

    /**
     * @param examinationCardCollection the examinationCardCollection to set
     */
    public void setExaminationCardCollection(Collection<ExaminationCard> examinationCardCollection) {
        this.examinationCardCollection = examinationCardCollection;
    }

    /**
     * @return the prescriptionCollection
     */
    public Collection<Prescription> getPrescriptionCollection() {
        return prescriptionCollection;
    }

    /**
     * @param prescriptionCollection the prescriptionCollection to set
     */
    public void setPrescriptionCollection(Collection<Prescription> prescriptionCollection) {
        this.prescriptionCollection = prescriptionCollection;
    }
    
}
