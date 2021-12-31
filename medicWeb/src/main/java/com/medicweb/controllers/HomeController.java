/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Registration;
import com.medicweb.pojo.User;
import com.medicweb.service.CagetoryService;
import com.medicweb.service.ManufactoryService;
import com.medicweb.service.MedicineService;
import com.medicweb.service.RegistrationService;
import com.medicweb.service.RoleService;
import com.medicweb.service.ServiceServices;
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
    
    @Autowired
    private UserService userDetailsService;
    @Autowired
    private ServiceServices serviceServices;
    
      @ModelAttribute
    public void commonAttr(Model model, HttpSession session) {
       model.addAttribute("currentUser",session.getAttribute("currentUser"));
       model.addAttribute("register",registrationService.geRegistrations());
       model.addAttribute("service",serviceServices.getService());
       
    }
    @RequestMapping("/")
    public String index(){
   
        return"page-index";
    }
    @RequestMapping("/login")
    public String login(Model model){
        return "login";
    }
     @GetMapping("/register")
    public String registerView(Model model){
        model.addAttribute("user",new User());
        return "register";
    }
    @PostMapping("/register")
    public String register(Model model, @ModelAttribute(value = "user") @Valid User user,
             BindingResult result) {
        
        if (!result.hasErrors()) {
            Long count = userDetailsService.checkEmail(user.getEmail().trim());
            if (count == 1) {
                model.addAttribute("errEmailMsg", "Email already exists!");
            } else
                if (user.getPassword().isEmpty()
                        || !user.getPassword().equals(user.getConfirmPassword())) {
                    model.addAttribute("errMsg", "Enter password or incorrect!");
                }
                else if (this.userDetailsService.addUser(user) == true) {
                        return "redirect:/login";
                } 
        }
         return "register";
    }
    @RequestMapping("/admin/error")
    public String error(){
   
        return"page-error";
    }
    @RequestMapping("/patient/error")
    public String settting(){
   
        return"page-error";
    }
   
    
    
}
