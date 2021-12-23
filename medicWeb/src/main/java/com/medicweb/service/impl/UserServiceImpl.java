/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.cloudinary.utils.ObjectUtils;
import com.medicweb.pojo.Role;
import com.medicweb.pojo.User;
import com.medicweb.repository.UserRepository;
import com.medicweb.service.RoleService;
import com.medicweb.service.UserService;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Service("userDetailsService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    @Autowired
    private RoleService roleService;
    
    
    @Override
    public User getUserById(int id) {
        User u = this.userRepository.getUserById(id);
       
        return u;
    }
    @Override
    public boolean addUser(User user) {
        String pass = user.getPassword(); 
        if(user.getRole()== null){
            Role r = this.roleService.getRoleById(4);
            user.setRole(r);
        }
        user.setPassword(this.passwordEncoder.encode(pass));       
        return this.userRepository.addUser(user);
    }

    @Override
    public List<User> getUsers(String username) {
        return this.userRepository.getUsers(username);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<User> users = this.getUsers(username);
        if (users.isEmpty())
            throw new UsernameNotFoundException("User does not exist!!!");
        
        User user = users.get(0);
        Role r =  user.getRole();
        Set<GrantedAuthority> auth = new HashSet<>();
        auth.add(new SimpleGrantedAuthority(String.valueOf(r.getId())));
        
        return new org.springframework.security.core
                .userdetails.User(user.getEmail(), user.getPassword(), auth);
        
    }

    @Override
    public List<User> getDoctor() {
        return this.userRepository.getDoctor();
    }
    
     @Override
    public List<User> getNurse() {
        return this.userRepository.getNurse();
    }

    @Override
    public boolean deleteUser(int i) {
        return this.userRepository.deleteUser(i);
    }

  
    
}
   
