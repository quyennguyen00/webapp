/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Registration;
import com.medicweb.service.CagetoryService;
import com.medicweb.service.ManufactoryService;
import com.medicweb.service.MedicineService;
import com.medicweb.service.RegistrationService;
import com.medicweb.service.RoleService;
import com.medicweb.service.SupplierService;
import com.medicweb.service.TypeService;
import com.medicweb.service.UserService;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Controller
@ControllerAdvice
public class HomeController {
    @Autowired
    private RegistrationService registrationService;
    
      @ModelAttribute
    public void commonAttr(Model model, HttpSession session) {
       model.addAttribute("currentUser",session.getAttribute("currentUser"));

    }
    @RequestMapping("/")
    public String index(){
   
        return"page-index";
    }
      @GetMapping("/user-{id}/contact")
    public String contact(Model model,@PathVariable(value = "id") int a){
        model.addAttribute("registration", new Registration());
        return"contact";
    }
     @PostMapping("/user/contact")
    public String register(Model model,@ModelAttribute(value = "registration") 
    @Valid Registration registration, BindingResult  result){            
        if(!result.hasErrors() && registration.getDate()!= null){    

             if (this.registrationService.addRegistration(registration)) 
                {
                     return "redirect:/";
                } 
                model.addAttribute("errMsg", "Đã xảy ra lỗi!!!"); 
            }           
             model.addAttribute("errMsg", "Giá trị chưa đúng");
       
          return "contact";
    }
    
    
}
