/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.PrescriptionTemp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author QUYENNGUYEN
 */
@RestController
public class ApiPrescriptionTemp {
    
     @PostMapping("/api/cart")
    public int addCart(@RequestBody PrescriptionTemp params, HttpSession session){
        Map<Integer, PrescriptionTemp> pres = (Map<Integer, PrescriptionTemp>) session.getAttribute("cart");
        if(pres == null){
            pres = new HashMap<>();
        }
        int medicId = params.getMedicineId();
        if(pres.containsKey(medicId)== true){
            PrescriptionTemp c = pres.get(medicId);
            c.setCount(c.getCount() +1);
            
        }
        else{
            pres.put(medicId, params);
        }
        session.setAttribute("prescription", pres);
        
        return 0;
    }
    
}
