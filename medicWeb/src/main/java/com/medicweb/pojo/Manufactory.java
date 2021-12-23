/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
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
 * @author QUYENNGUYEN
 */
@Entity
@Table(name = "manufactory")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Manufactory.findAll", query = "SELECT m FROM Manufactory m"),
    @NamedQuery(name = "Manufactory.findById", query = "SELECT m FROM Manufactory m WHERE m.id = :id"),
    @NamedQuery(name = "Manufactory.findByFactory", query = "SELECT m FROM Manufactory m WHERE m.factory = :factory"),
    @NamedQuery(name = "Manufactory.findByCountry", query = "SELECT m FROM Manufactory m WHERE m.country = :country")})
public class Manufactory implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "factory")
    private String factory;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "country")
    private String country;
    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "manufactoryId")
    private Collection<Medicines> medicinesCollection;

    public Manufactory() {
    }

    public Manufactory(Integer id) {
        this.id = id;
    }

    public Manufactory(Integer id, String factory, String country) {
        this.id = id;
        this.factory = factory;
        this.country = country;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFactory() {
        return factory;
    }

    public void setFactory(String factory) {
        this.factory = factory;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @XmlTransient
    public Collection<Medicines> getMedicinesCollection() {
        return medicinesCollection;
    }

    public void setMedicinesCollection(Collection<Medicines> medicinesCollection) {
        this.medicinesCollection = medicinesCollection;
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
        if (!(object instanceof Manufactory)) {
            return false;
        }
        Manufactory other = (Manufactory) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.medicweb.pojo.Manufactory[ id=" + id + " ]";
    }
    
}
