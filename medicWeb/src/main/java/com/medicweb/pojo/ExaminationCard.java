/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author QUYENNGUYEN
 */
@Entity
@Table(name = "examination_card")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ExaminationCard.findAll", query = "SELECT e FROM ExaminationCard e"),
    @NamedQuery(name = "ExaminationCard.findById", query = "SELECT e FROM ExaminationCard e WHERE e.id = :id"),
    @NamedQuery(name = "ExaminationCard.findByCreatedDate", query = "SELECT e FROM ExaminationCard e WHERE e.createdDate = :createdDate"),
    @NamedQuery(name = "ExaminationCard.findByPrice", query = "SELECT e FROM ExaminationCard e WHERE e.price = :price")})
public class ExaminationCard implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "price")
    private Long price;
    @JoinColumn(name = "registration_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    @OneToOne(mappedBy = "prescription")
    private Prescription prescription;    
    private Registration registrationId;
    @JoinColumn(name = "service_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Services serviceId;

    public ExaminationCard() {
    }

    public ExaminationCard(Integer id) {
        this.id = id;
    }

    public ExaminationCard(Integer id, Date createdDate,Long price) {
        this.id = id;
        this.createdDate = createdDate;
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }


    public Registration getRegistrationId() {
        return registrationId;
    }

    public void setRegistrationId(Registration registratioonId) {
        this.registrationId = registratioonId;
    }

    public Services getServiceId() {
        return serviceId;
    }

    public void setServiceId(Services serviceId) {
        this.serviceId = serviceId;
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
        if (!(object instanceof ExaminationCard)) {
            return false;
        }
        ExaminationCard other = (ExaminationCard) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.medicweb.pojo.ExaminationCard[ id=" + id + " ]";
    }

    
    
}
