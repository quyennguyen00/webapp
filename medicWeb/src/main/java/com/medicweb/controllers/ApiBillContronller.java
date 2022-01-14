/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Bill;
import com.medicweb.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author QUYENNGUYEN
 */
@RestController
public class ApiBillContronller {
    
    @Autowired
    private BillService billService;
    
        @PostMapping(path = "/api/bill", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Bill> pay( @RequestBody Bill b) {
        if (this.billService.addBill(b)) {
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}    

