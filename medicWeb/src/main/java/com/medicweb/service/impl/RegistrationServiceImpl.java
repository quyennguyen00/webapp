/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Registration;
import com.medicweb.pojo.User;
import com.medicweb.repository.RegistrationRipository;
import com.medicweb.service.RegistrationService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class RegistrationServiceImpl implements RegistrationService{

    @Autowired
    private RegistrationRipository registrationRipository;
    @Override
    public List<Registration> geRegistrations() {
        return this.registrationRipository.geRegistrations();
    }

    @Override
    public boolean addRegistration(Registration r) {
         return this.registrationRipository.addRegistration(r);
    }

    @Override
    public Registration getRegistrationById(int id) {
        return this.registrationRipository.getRegistrationById(id);
    }

    @Override
    public List<Registration> getRegistrationsByUser(User u) {
        return this.registrationRipository.getRegistrationsByUser(u);// get list REGISTRATION of user

    }
}

