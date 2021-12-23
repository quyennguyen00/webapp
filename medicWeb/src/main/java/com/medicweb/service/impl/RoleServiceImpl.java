/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Role;
import com.medicweb.repository.RoleRepository;
import com.medicweb.service.RoleService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class RoleServiceImpl implements RoleService{
    @Autowired
    private RoleRepository roleRepository;

    @Override
    public Role getRoleById(int id) {
       return  this.roleRepository.getRoleById(id);
    }

    @Override
    public List<Role> getRole() {
       return  this.roleRepository.getRole();
    }
    
}
