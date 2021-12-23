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
public class PrescriptionTemp implements Serializable{
    
    private int medicineId;
    private String name;
    private Long price;
    private int count;

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
     * @return the price
     */
    public Long getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(Long price) {
        this.price = price;
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
}
