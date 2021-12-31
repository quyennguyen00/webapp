/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service;

import com.medicweb.pojo.MedicineItems;
import java.util.Map;

/**
 *
 * @author QUYENNGUYEN
 */
public interface PrescriptionService {
    boolean addPres( Map<Integer, MedicineItems> pres);
}
