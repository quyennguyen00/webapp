/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Controller
public class HomeController {
    @RequestMapping("/")
    public String index(Model model){
//        model.addAttribute("name","Viet Nam");
        return"page";
    }
    @RequestMapping("/Register")
    public String register(Model model){
        return "register";
    }
    
     @RequestMapping("/Reset")
    public String password(Model model){
        return "pass";
    }
    
    @RequestMapping("/Tales")
    public String tables(Model model){
        return "tableControl";
    }
   
}
