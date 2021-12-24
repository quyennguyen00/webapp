/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Registration;
import com.medicweb.repository.RegistrationRipository;
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
public class RegistrationRepositoryImpl implements RegistrationRipository{
     @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Registration> geRegistrations() {
       Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Registration");
        return q.getResultList();
    }

    @Override
    public boolean addRegistration(Registration r) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
          try {
              session.save(r);
              return true;
          } catch (Exception ex) {
              System.err.println("=== ADD MEDICINES ERRER ===" + ex.getMessage());
              ex.printStackTrace();
          }
        return false; 
    }

    @Override
    public Registration getRegistrationById(int i) {
      Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Registration.class, i);
    }
    
}
