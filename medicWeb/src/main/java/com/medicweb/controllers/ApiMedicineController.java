/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Medicines;
import com.medicweb.service.MedicineService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author QUYENNGUYEN
 */
@RestController
public class ApiMedicineController {
    @Autowired
    private MedicineService medicineService;
    
      @GetMapping(path = "/api/medicine/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Medicines> getMediById(@PathVariable("id") Integer id) {
        try {
            Medicines t = this.medicineService.getMedicine(id);
            return new ResponseEntity<>(t, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    //UPDATE
//    @PutMapping(path = "/api/medicine/{id}", produces = {
//        MediaType.APPLICATION_JSON_VALUE})
//    public ResponseEntity<Medicines> updateMedicine(@PathVariable("id") Integer id,
//            @Valid @RequestBody Medicines medicine) {
//        if (this.medicineService.updateMedicine(medicine,
//                this.medicineService.getMedicine(id)) == true) {
//            return new ResponseEntity<>(HttpStatus.OK);
//        }
//
//        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//    }
    
    //Delete 
    @DeleteMapping(path = "/api/medicine/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Medicines> deleteMedicine(@PathVariable("id") Integer id) {
        if (this.medicineService.deleteMedicine(id) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

}
