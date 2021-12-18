/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Type;
import com.medicweb.repository.TypeRpository;
import com.medicweb.service.TypeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class TypeServiceImpl implements TypeService{

    @Autowired
    private TypeRpository typeRepository;
    @Override
    public Type getTypeById(int typeId) {
        return  this.typeRepository.getTypeById(typeId);}

    @Override
    public List<Type> getTypes() {
       return this.typeRepository.getType();}
    
}
