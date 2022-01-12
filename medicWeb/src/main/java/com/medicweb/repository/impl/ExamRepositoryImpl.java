/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.ExaminationCard;
import com.medicweb.pojo.Services;
import com.medicweb.pojo.Registration;
import com.medicweb.repository.ExamRepository;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author QUYENNGUYEN
 */
@Repository
@Transactional
public class ExamRepositoryImpl implements ExamRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<ExaminationCard> getlist() {
     Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From ExaminationCard");
        return q.getResultList();  
    }
    

    @Override
    public boolean addExam(ExaminationCard e) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
            try {
                session.save(e);
                return true;
            } catch (Exception ex) {
                System.err.println("=== ADD MEDICINES ERRER ===" + ex.getMessage());
                ex.printStackTrace();
            }
        return false;    
    }

    @Override
    public ExaminationCard getExam(int id) {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(ExaminationCard.class, id);   
    }

    @Override
    public List<Object[]> getListByRegister(int r) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);

        Root rootR = query.from(Registration.class);
        Root rootE = query.from(ExaminationCard.class);
        
        
        List<Predicate> predicates = new ArrayList<>();
        predicates.add(builder.equal(rootR.get("id"), rootE.get("registrationId")));
        predicates.add(builder.equal(rootR.get("id"),r));
        query.multiselect(rootR.get("id"), rootE.get("serviceId"), rootR.get("userId"));
        query.where(predicates.toArray(new Predicate[]{}));

        Query q = session.createQuery(query);

        return q.getResultList();
    }
    
}
