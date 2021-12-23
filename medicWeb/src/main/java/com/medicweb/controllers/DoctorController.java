/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Medicines;
import com.medicweb.pojo.User;
import com.medicweb.service.UserService;
import javax.servlet.http.HttpSession;
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

/**
 *
 * @author QUYENNGUYEN
 */
@Controller
public class DoctorController {
    
    @Autowired
    private UserService userDetailsService;
 
   @GetMapping("/doctor")
   public String listDoctor(Model model,HttpSession session){
       
       return "page-doctor";
   }
   
   
//    @GetMapping(value="/list-doctor/edit-{id}")
//    public String showEdit(Model model,@PathVariable int id){
//        model.addAttribute("user",this.userDetailsService.getUserById(id));
//        
////        model.addAttribute("editMedic", new Medicines());
//        
//        return "show-user";
//    }
}
