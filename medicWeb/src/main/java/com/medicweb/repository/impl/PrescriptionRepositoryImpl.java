/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.MedicineItems;
import com.medicweb.pojo.Prescription;
import com.medicweb.pojo.PrescriptionDetail;
import com.medicweb.repository.ExamRepository;
import com.medicweb.repository.MedicineRepository;
import com.medicweb.repository.PrescriptionRepository;
import java.util.Date;
import java.util.Map;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author QUYENNGUYEN
 */
@Repository
public class PrescriptionRepositoryImpl implements PrescriptionRepository{

     @Autowired
    private LocalSessionFactoryBean sessionFactory;
     @Autowired
     private ExamRepository examRepository;
     @Autowired
     private MedicineRepository medicineRepository;
     
    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public boolean addPres(Map<Integer, MedicineItems> pres) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Prescription p = new Prescription();
            p.setDate(new Date());
            p.setResult("111");
//            p.setAmount(pres.size());
            session.save(p);
            for (MedicineItems m : pres.values()) {
                PrescriptionDetail d = new PrescriptionDetail();
                d.setPrescriptionId(p);
                d.setMedicineId(this.medicineRepository.getMedicine(m.getMedicineId()));
                d.setNum(m.getCount());
                d.setDescription(m.getDescription());

                session.save(d);
            }
            return true;

        } catch (HibernateException ex) {
            ex.getStackTrace();
        }

        return false;
    }
    
}
