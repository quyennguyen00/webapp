/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.cloudinary.utils.ObjectUtils;
import com.medicweb.pojo.Medicines;
import com.medicweb.repository.MedicineRepository;
import com.medicweb.service.MedicineService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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

    @Override
    public boolean addMedicine(Medicines medicines) {
            return this.medicineRepository.addMedicine(medicines);
    }


    @Override
    public Medicines getMedicine(int i) {
       return this.medicineRepository.getMedicine(i);
    }

    @Override
    public boolean deleteMedicine(int i) {
       return this.medicineRepository.deleteMedicine(i);
    }

    @Override
    public boolean upDateMedicine(Medicines mdcns) {
        return this.medicineRepository.upDateMedicine(mdcns);
    }
    
}
