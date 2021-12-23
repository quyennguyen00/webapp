/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.service.CagetoryService;
import com.medicweb.service.ManufactoryService;
import com.medicweb.service.MedicineService;
import com.medicweb.service.RoleService;
import com.medicweb.service.SupplierService;
import com.medicweb.service.TypeService;
import com.medicweb.service.UserService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Controller
@ControllerAdvice
public class HomeController {
    
    @RequestMapping("/")
    public String index(){
   
        return"page-index";
    }
    
    @RequestMapping("/contact")
    public String contact(Model model){
        return"contact";
    }
    
   
    
}
