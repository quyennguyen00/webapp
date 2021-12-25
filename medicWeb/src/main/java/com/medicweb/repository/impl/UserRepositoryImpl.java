/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Medicines;
import com.medicweb.pojo.Registration;
import com.medicweb.pojo.Role;
import com.medicweb.pojo.User;
import com.medicweb.repository.UserRepository;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author NGUYEN_NGUYEN
 */

@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public boolean addUser(User user) {
            Session s = this.sessionFactory.getObject().getCurrentSession();
        try {
            s.save(user);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
      return false;
    }
    @Override
    public User getUserById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(User.class, id);
    }
    @Override
    public boolean updateUser(User user) {
       Session s = this.sessionFactory.getObject().getCurrentSession();
        try {
            s.update(user);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        return false;
    }
    @Override
    public List<User> getUsers(String email) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);
        
        if (!email.isEmpty()) {
            Predicate p = builder.equal(root.get("email").as(String.class), email.trim());
            query = query.where(p);
        }
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public List<User> getDoctor() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
          
        Root root = query.from(User.class);
        query = query.select(root);
        List<Predicate> predicates = new ArrayList<>();
        Predicate p = builder.equal(root.get("role").as(Role.class),2);
         query = query.where(p);
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public List<User> getNurse() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
          
        Root root = query.from(User.class);
        query = query.select(root);
        List<Predicate> predicates = new ArrayList<>();
        Predicate p = builder.equal(root.get("role").as(Role.class),3);
         query = query.where(p);
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public boolean deleteUser(int id) {
         Session session = this.sessionFactory.getObject().getCurrentSession();
            try {
                User u = this.getUserById(id);
                session.delete(u);
                return true;
            } catch (Exception ex) {
                System.err.println("=== ADD ERRER ===" + ex.getMessage());
                ex.printStackTrace();
            }
        return false;  
    }

    @Override
    public Long checkEmail(String email) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Long query =(Long)session.createQuery( "SELECT COUNT(u.email) FROM User u WHERE u.email = :email")
                .setParameter("email", email).getSingleResult();
        return query;
    }

    @Override
    public List<User> getPatient() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
          
        Root root = query.from(User.class);
        query = query.select(root);
        List<Predicate> predicates = new ArrayList<>();
        Predicate p = builder.equal(root.get("role").as(Role.class),4);
         query = query.where(p);
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public User getUserByRigisId(Registration r) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        Root rootR = query.from(Registration.class);
        query = query.select(root);
        
        Predicate p = builder.equal(root.get("id").as(User.class), r.getUserId());
            query = query.where(p);
        Query q = session.createQuery(query);
        return (User) q.getSingleResult();
    }
    
}
