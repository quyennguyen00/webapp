/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service;

import com.medicweb.pojo.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author NGUYEN_NGUYEN
 */
public interface UserService extends UserDetailsService{
   User getUserById(int id);
    boolean addUser(User user);
    boolean deleteUser(int id);
    List<User> getUsers(String username);
    List<User> getDoctor();
    List<User> getNurse();

}