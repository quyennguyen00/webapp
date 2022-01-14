/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Bill;
import com.medicweb.repository.BillRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author QUYENNGUYEN
 */
@Repository
@Transactional
public class BillRepositoryImpl implements BillRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addBill(Bill b) {
      Session session = this.sessionFactory.getObject().getCurrentSession();
            try {
                session.save(b);
                return true;
            } catch (Exception ex) {
                System.err.println("=== ADD BIIL ERRER ===" + ex.getMessage());
                ex.printStackTrace();
            }
        return false;    
    }
}
