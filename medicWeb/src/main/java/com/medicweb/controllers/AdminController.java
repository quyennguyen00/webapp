/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.service.MedicineService;
import com.medicweb.service.CagetoryService;
import com.medicweb.service.impl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author QUYENNGUYEN
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    
    @Autowired
    private MedicineService medicineService;
    @Autowired
    private CagetoryService categoryService;
     @RequestMapping("/medicines")
    public String admin(Model model){
        model.addAttribute("medicine", this.medicineService.getMedicines());
        model.addAttribute("categories", this.categoryService.getCategories());
        return"medicines";
    }
     @RequestMapping("/medicines/add-medic")
    public String add(Model model){
//        model.addAttribute("medicine", this.medicineService.getMedicines());
//        model.addAttribute("categories", this.categoryService.getCategories());
        return"add-medic";
    }
}
