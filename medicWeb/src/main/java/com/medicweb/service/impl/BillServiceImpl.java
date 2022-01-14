/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Bill;
import com.medicweb.repository.BillRepository;
import com.medicweb.service.BillService;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class BillServiceImpl implements BillService{
    @Autowired
    private BillRepository billRepository;

    @Override
    public boolean addBill(Bill b) {
        b.setCreateDate(new Date());
       return this.billRepository.addBill(b);
    }
    
}
