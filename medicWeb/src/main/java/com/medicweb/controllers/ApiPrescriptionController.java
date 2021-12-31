/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.MedicineItems;
import com.medicweb.pojo.Medicines;
import com.medicweb.service.PrescriptionService;
import com.medicweb.utils.Utils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author QUYENNGUYEN
 */
@RestController
public class ApiPrescriptionController {
    @Autowired 
    private PrescriptionService prescriptionService;
//     @PostMapping("/api/prescription")
//    public int addCart(@RequestBody MedicineItems params, HttpSession session){
//       Map<Integer, MedicineItems> pres = (Map<Integer, MedicineItems>) session.getAttribute("prescription");
//        if (pres == null){
//             pres = new HashMap<>();
//        }
//           
////        String description = params.get("description");
//        int medicinetId = params.getMedicineId();
//        if (pres.containsKey(medicinetId) == true) { // thuốc đã tồn tại
//            MedicineItems c = pres.get(medicinetId);
//            c.setCount(c.getCount()+1);
//        } else { 
//            pres.put(medicinetId, params);
//        }
//        
//        session.setAttribute("prescription",pres);
//        
//        return Utils.count(pres);
//    }
       @PostMapping(path = "/api/prescription", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Map<Integer, MedicineItems>> addMedicine(@RequestBody MedicineItems params, HttpSession session) {
        Map<Integer, MedicineItems> pres = (Map<Integer, MedicineItems>) session.getAttribute("prescription");
        try {
           if (pres == null){
             pres = new HashMap<>();
        }
        int medicinetId = params.getMedicineId();
        if (pres.containsKey(medicinetId) == true) { // thuốc đã tồn tại
            MedicineItems c = pres.get(medicinetId);
            c.setCount(c.getCount()+1);
        } else { 
            pres.put(medicinetId, params);
        }
        
            session.setAttribute("prescription",pres);
            return new ResponseEntity<>(pres, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return new ResponseEntity<>(pres, HttpStatus.BAD_REQUEST);
    }
    
      @PutMapping("/api/prescription")
    public ResponseEntity< Integer>  updateMedicine(@RequestBody MedicineItems carts, HttpSession session){
        Map<Integer, MedicineItems> pres = (Map<Integer, MedicineItems>) session.getAttribute("prescription");
        if(pres == null)
            pres = new HashMap<>();
        
        int medicineId = carts.getMedicineId();
        if(pres.containsKey(medicineId) == true){
            MedicineItems p = pres.get(medicineId);
            p.setCount(carts.getCount());
            
            session.setAttribute("prescription", pres);
            
        }
          return new ResponseEntity<>(Utils.count(pres),HttpStatus.OK);
        
    }
    
     @DeleteMapping("/api/prescription/delete-{id}")
    public ResponseEntity<Map<Integer, MedicineItems>> deleteMedicine(@PathVariable(value = "id") int id, HttpSession session){
        Map<Integer, MedicineItems> pres = (Map<Integer, MedicineItems>) session.getAttribute("prescription");
        if(pres != null && pres.containsKey(id)){
            pres.remove(id);
            
            session.setAttribute("prescription", pres);
                      
        }
         return new ResponseEntity<>(pres,HttpStatus.OK);
    }
    @PostMapping("/api/add")
    public  HttpStatus addPres(HttpSession session){
       Map<Integer, MedicineItems> pres = (Map<Integer, MedicineItems>) session.getAttribute("prescription");
       if(this.prescriptionService.addPres(pres) == true){
           session.removeAttribute("pres");
           return HttpStatus.OK;
       }
        return HttpStatus.BAD_REQUEST;
    }
}
