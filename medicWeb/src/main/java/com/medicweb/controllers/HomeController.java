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
    
    @RequestMapping("/Admin")
    public String admin(Model model){
      model.addAttribute("categories",this.categoryService.getCategories());
        return"page";
    }
    @RequestMapping("/")
    public String index(Model model){
      model.addAttribute("categories",this.categoryService.getCategories());
        return"page-index";
    }
    
    @RequestMapping("/Contact")
    public String contact(Model model){
        return"contact";
    }
    @RequestMapping("/Register")
    public String register(Model model){
        return "register";
    }
    
    @RequestMapping("/Login")
    public String login(Model model){
        return "login";
    }
   
    
}
