/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Manufactory;
import com.medicweb.repository.ManufactoryRepository;
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
public class ManufactoryRepositoryImpl implements ManufactoryRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Manufactory> getManufactorys() {
    Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Manufactory");
        return q.getResultList();  
    }

    @Override
    public Manufactory getManufactoryById(int Id) {
     Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Manufactory.class, Id);   
    }
    
}
