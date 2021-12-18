/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Medicines;
import com.medicweb.repository.MedicineRepository;
import com.medicweb.service.MedicineService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class MedicineServiceIpml implements MedicineService{

    @Autowired
    private MedicineRepository medicineRepository;
    @Override
    public List<Medicines> getMedicines() {
    return this.medicineRepository.getMedicineses();
    }
    
}
