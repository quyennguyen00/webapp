/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Bill;
import com.medicweb.pojo.Registration;
import com.medicweb.repository.StatsRepository;
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
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author QUYENNGUYEN
 */
@Repository
@Transactional
public class StatsRepositoryImlp implements StatsRepository{
     @Autowired
    private LocalSessionFactoryBean sessionFactory;
     
    @Override
    public List<Object[]> monthStats() {
        
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root rootB = q.from(Bill.class);

        q.multiselect(b.function("MONTH", Integer.class, rootB.get("createDate")),
                b.function("YEAR", Integer.class, rootB.get("createDate")),
                b.sum(rootB.get("total")));

        q.groupBy(b.function("MONTH", Integer.class, rootB.get("createDate")),
                b.function("YEAR", Integer.class, rootB.get("createDate")));// gom nhóm

        Query query = session.createQuery(q);

        return query.getResultList();
    }

    @Override
    public List<Object[]> yearStats() {
     Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root rootB = q.from(Bill.class);

        q.multiselect(b.function("YEAR", Integer.class, rootB.get("createDate")),
                b.sum(rootB.get("total")));

        q.groupBy(b.function("YEAR", Integer.class, rootB.get("createDate")));// gom nhóm

        Query query = session.createQuery(q);

        return query.getResultList();
    }

    @Override
    public List<Object[]> yearPatient() {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root root = q.from(Bill.class);

        q.multiselect(b.function("YEAR", Integer.class, root.get("createDate")),
                b.count(root.get("registrationId")));

        q.groupBy(b.function("YEAR", Integer.class, root.get("createDate")));

        Query query = session.createQuery(q);

        return query.getResultList();
    }
    @Override
    public List<Object[]> monthPatient() {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root root = q.from(Bill.class);

         q.multiselect(b.function("MONTH", Integer.class, root.get("createDate")),
                b.function("YEAR", Integer.class, root.get("createDate")),
                b.count(root.get("registrationId")));

        q.groupBy(b.function("MONTH", Integer.class, root.get("createDate")),
                b.function("YEAR", Integer.class, root.get("createDate")));

        Query query = session.createQuery(q);

        return query.getResultList();
    }
    
}
