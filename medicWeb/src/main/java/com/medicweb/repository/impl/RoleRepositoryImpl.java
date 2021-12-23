/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Category;
import com.medicweb.pojo.Role;
import com.medicweb.repository.RoleRepository;
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
public class RoleRepositoryImpl  implements RoleRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public Role getRoleById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Role.class, id);
    }

    @Override
    public List<Role> getRole() {
       Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Role");
        return q.getResultList();
    }
    
}
