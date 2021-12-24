/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository;



import com.medicweb.pojo.Role;
import com.medicweb.pojo.User;
import java.util.List;

/**
 *
 * @author NGUYEN_NGUYEN
 */
public interface UserRepository {
    boolean addUser(User user);
    boolean updateUser(User user);
    boolean deleteUser(int id);
    Long checkEmail(String email);
    User getUserById(int id);
    List<User> getUsers(String username);// get username or email to login
    List<User> getDoctor();
    List<User> getNurse();
}
