/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Suppliers;
import com.medicweb.pojo.Type;
import com.medicweb.repository.SupplierRepository;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;
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
public class SupplierRepositoryImpl implements SupplierRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Suppliers> getSuppliers() {
     Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Suppliers");
        return q.getResultList();}

    @Override
    public Suppliers getSupplierById(int Id) {
     Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Suppliers.class, Id);}
    
}
