/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository.impl;

import com.medicweb.pojo.Category;
import com.medicweb.pojo.Type;
import com.medicweb.repository.TypeRpository;
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
public class TypeRepositoryImpl implements TypeRpository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public Type getTypeById(int typeId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Type.class, typeId);}

    @Override
    public List<Type> getType() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Type");
        return q.getResultList();}
    
}
