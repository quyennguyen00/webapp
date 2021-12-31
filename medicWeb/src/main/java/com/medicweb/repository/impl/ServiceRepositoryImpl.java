/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Services;
import com.medicweb.repository.ServiceRepository;
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
public class ServiceRepositoryImpl implements ServiceRepository{
     @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Services> getService() {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Services");
        return q.getResultList();
    }

    @Override
    public Services getServiceById(int id) {
       Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Services.class, id);
    }
    
}
