/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.pojo;

import java.io.Serializable;

/**
 *
 * @author QUYENNGUYEN
 */
public class MedicineItems implements Serializable{
    
    private int medicineId;
    private String name;
    private String description;
    private int count;
    
    private String type;
    

    /**
     * @return the medicineId
     */
    public int getMedicineId() {
        return medicineId;
    }

    /**
     * @param medicineId the medicineId to set
     */
    public void setMedicineId(int medicineId) {
        this.medicineId = medicineId;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the count
     */
    public int getCount() {
        return count;
    }

    /**
     * @param count the count to set
     */
    public void setCount(int count) {
        this.count = count;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    public String get(String description) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
