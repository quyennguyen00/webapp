/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Medicines;
import com.medicweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author QUYENNGUYEN
 */
@RestController
public class ApiDoctorController {
    @Autowired
    private UserService userService;
    @DeleteMapping(path = "/api/doctor-{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Medicines> deleteMedicine(@PathVariable("id") Integer id) {
        if (this.userService.deleteUser(id) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
