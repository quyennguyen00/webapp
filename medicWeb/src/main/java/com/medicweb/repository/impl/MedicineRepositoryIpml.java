/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Medicines;
import com.medicweb.repository.MedicineRepository;
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
public class MedicineRepositoryIpml implements MedicineRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Medicines> getMedicineses() {
     Session session = this.sessionFactory.getObject().getCurrentSession();
         Query q = session.createQuery("From Medicines");
        return q.getResultList();  
    }

    @Override
    public boolean addMedicine(Medicines medicines) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
            try {
                session.save(medicines);
                return true;
            } catch (Exception ex) {
                System.err.println("=== ADD MEDICINES ERRER ===" + ex.getMessage());
                ex.printStackTrace();
            }
        return false;    
    }

      @Override
    public boolean upDateMedicine(Medicines medicines) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
            try {
                session.update(medicines);
                return true;
            } catch (Exception ex) {
                System.err.println("=== ADD MEDICINES ERRER ===" + ex.getMessage());
                ex.printStackTrace();
            }
        return false;    
    }


    @Override
    public Medicines getMedicine(int id) {
          Session session = this.sessionFactory.getObject().getCurrentSession();
          return session.get(Medicines.class, id);
    }

    @Override
    public boolean deleteMedicine(int i) {
      Session session = this.sessionFactory.getObject().getCurrentSession();
            try {
                Medicines m = this.getMedicine(i);
                session.delete(m);
                return true;
            } catch (Exception ex) {
                System.err.println("=== ADD MEDICINES ERRER ===" + ex.getMessage());
                ex.printStackTrace();
            }
        return false;  
    }
    
}
