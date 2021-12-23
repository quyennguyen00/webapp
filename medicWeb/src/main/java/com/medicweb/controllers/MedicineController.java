/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Medicines;
import com.medicweb.service.CagetoryService;
import com.medicweb.service.ManufactoryService;
import com.medicweb.service.MedicineService;
import com.medicweb.service.SupplierService;
import com.medicweb.service.TypeService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author QUYENNGUYEN
 */
@Controller
@RequestMapping("/admin")
public class MedicineController {
    @Autowired
    private MedicineService medicineService;
   
      @GetMapping("/medicines")
    public String medic(Model model){
        
        return"medicines";
    }
     @GetMapping("/medicines/add-medic")
    public String addmedic(Model model){
        model.addAttribute("medicines", new Medicines());
        return"show";
    }
    @PostMapping("/medicines/save-medic")
    public String addMedic(Model model,@ModelAttribute(value = "medicines") @Valid Medicines medicines,
            BindingResult result){
        if(!result.hasErrors())
        {
           if(medicines.getId() != null && this.medicineService.upDateMedicine(medicines))
           {
                return "redirect:/admin/medicines";
           } 
            if(this.medicineService.addMedicine(medicines)){
                 return "redirect:/admin/medicines";
            }
            else{
                 model.addAttribute("errMsg", "Đã xảy ra lỗi!!!");
            }        
        }
        return "show";     
    }
    @GetMapping(value="/medicines/edit-{id}")
    public String showEdit(Model model,@PathVariable int id){
        model.addAttribute("medicines",this.medicineService.getMedicine(id));
//        model.addAttribute("editMedic", new Medicines());
        
        return "show";
    }
}
