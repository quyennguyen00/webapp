/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Manufactory;
import com.medicweb.repository.ManufactoryRepository;
import com.medicweb.service.ManufactoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class ManufactoryServiceImpl implements ManufactoryService{

    @Autowired
    private ManufactoryRepository manufactoryRepository;
    @Override
    public List<Manufactory> getManufactorys() {
        return this.manufactoryRepository.getManufactorys(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Manufactory getManufactoryById(int Id) {
        return this.manufactoryRepository.getManufactoryById(Id); //To change body of generated methods, choose Tools | Templates.
    }
    
}
