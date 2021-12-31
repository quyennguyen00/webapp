/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.MedicineItems;
import com.medicweb.repository.PrescriptionRepository;
import com.medicweb.service.PrescriptionService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class PrescriptionServiceImpl implements PrescriptionService{

    @Autowired
    private PrescriptionRepository prescriptionRepository;
    
    @Override
    public boolean addPres(Map<Integer, MedicineItems> pres) {
        if(pres != null)
             return this.prescriptionRepository.addPres(pres);
        
        return false;
    }
    
}
