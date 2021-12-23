/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Registration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author QUYENNGUYEN
 */
@Controller
public class RegistrationController {
    
     @GetMapping("/contact")
    public String contact(Model model){
        model.addAttribute("registration", new Registration());
        return"contact";
    }
    
    
}
