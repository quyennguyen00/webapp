/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Suppliers;
import com.medicweb.repository.SupplierRepository;
import com.medicweb.service.SupplierService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class SupplierServiceImpl implements SupplierService{

    @Autowired
    private SupplierRepository supplierRepository;
    
    @Override
    public List<Suppliers> getSuppliers() {
    return  this.supplierRepository.getSuppliers();
    }

    @Override
    public Suppliers getSupplierById(int Id) {
    return this.supplierRepository.getSupplierById(Id);
    }
    
}
