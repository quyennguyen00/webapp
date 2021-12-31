/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Services;
import com.medicweb.repository.ServiceRepository;
import com.medicweb.service.ServiceServices;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class ServiceServicesImpl  implements ServiceServices{

    @Autowired
    private ServiceRepository serviceRepository;
    @Override
    public List<Services> getService() {
       return  this.serviceRepository.getService();
    }

    @Override
    public Services getServiceById(int id) {
      return this.serviceRepository.getServiceById(id);
    }
    
}
