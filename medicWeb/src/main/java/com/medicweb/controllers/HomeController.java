/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Controller
public class HomeController {

    
    
    @RequestMapping("/admin")
    public String admin(Model model){
     
        return"page";
    }
    @RequestMapping("/")
    public String index(Model model){
   
        return"page-index";
    }
    
    @RequestMapping("/contact")
    public String contact(Model model){
        return"contact";
    }
    @RequestMapping("/register")
    public String register(Model model){
        return "register";
    }
    
    @RequestMapping("/login")
    public String login(Model model){
        return "login";
    }
   
    
}
