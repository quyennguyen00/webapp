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
import com.medicweb.service.CategoryService;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Controller
public class HomeController {

    @Autowired
    private CategoryService categoryService;
    
    @RequestMapping("/")
    public String index(Model model){
//      model.addAttribute("categories",this.categoryService.getCategories());
        return"page";
    }
    
    @RequestMapping("/Register")
    public String register(Model model){
         
        return "register";
    }
   
    
     @RequestMapping("/ResetPassword")
    public String password(Model model){
        return "pass";
    }
    
    @RequestMapping("/Login")
    public String tables(Model model){
        return "login";
    }
   
    // Redirects 
      @RequestMapping(path ="/redirectRegister")
    public String redirectRegister(Model model){
        return "redirect:/Register";
    }
      @RequestMapping(path ="/redirectResetPass")
    public String redirectGetPass(Model model){
        return "redirect:/ResetPassword";
    }
      @RequestMapping(path ="/redirectLogin")
    public String redirectLogin(Model model){
        return "redirect:/";
    }
}
