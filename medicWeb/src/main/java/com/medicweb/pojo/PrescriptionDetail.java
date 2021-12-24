/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.pojo;

import java.io.Serializable;
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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author QUYENNGUYEN
 */
@Entity
@Table(name = "prescription_detail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PrescriptionDetail.findAll", query = "SELECT p FROM PrescriptionDetail p"),
    @NamedQuery(name = "PrescriptionDetail.findById", query = "SELECT p FROM PrescriptionDetail p WHERE p.id = :id"),
    @NamedQuery(name = "PrescriptionDetail.findByTimes", query = "SELECT p FROM PrescriptionDetail p WHERE p.times = :times"),
    @NamedQuery(name = "PrescriptionDetail.findByDescription", query = "SELECT p FROM PrescriptionDetail p WHERE p.description = :description")})
public class PrescriptionDetail implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "num")
    private String times;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "description")
    private String description;
    @JoinColumn(name = "medicine_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Medicines medicineId;
    @JoinColumn(name = "prescription_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Prescription prescriptionId;

    public PrescriptionDetail() {
    }

    public PrescriptionDetail(Integer id) {
        this.id = id;
    }

    public PrescriptionDetail(Integer id, String times, String description) {
        this.id = id;
        this.times = times;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTimes() {
        return times;
    }

    public void setTimes(String times) {
        this.times = times;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Medicines getMedicineId() {
        return medicineId;
    }

    public void setMedicineId(Medicines medicineId) {
        this.medicineId = medicineId;
    }

    public Prescription getPrescriptionId() {
        return prescriptionId;
    }

    public void setPrescriptionId(Prescription prescriptionId) {
        this.prescriptionId = prescriptionId;
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
        if (!(object instanceof PrescriptionDetail)) {
            return false;
        }
        PrescriptionDetail other = (PrescriptionDetail) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.medicweb.pojo.PrescriptionDetail[ id=" + id + " ]";
    }
    
}
