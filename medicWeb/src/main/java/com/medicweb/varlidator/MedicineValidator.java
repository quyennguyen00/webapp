/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.varlidator;

import com.medicweb.pojo.Medicines;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author QUYENNGUYEN
 */
public class MedicineValidator implements Validator{

    @Override
    public boolean supports(Class<?> type) {
    return Medicines.class.isAssignableFrom(type);    
    }

    @Override
    public void validate(Object o, Errors errors) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
