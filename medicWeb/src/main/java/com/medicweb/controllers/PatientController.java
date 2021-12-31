/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Registration;
import com.medicweb.pojo.User;
import com.medicweb.service.RegistrationService;
import com.medicweb.service.UserService;
import java.util.List;
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
public class PatientController {
   
    
    @Autowired
    private UserService userDetailsService;
    
    @Autowired
    private RegistrationService registrationService;
    
      @GetMapping("/history/patient")
    public String history(Model model,HttpSession session){
        User user = (User) session.getAttribute("currentUser");
          model.addAttribute("listRegistraion",this.registrationService.getRegistrationsByUser(user));
        return"page-patient";
    }
      @GetMapping("/patient/setting")
    public String setting(){
        
        return"page-error";
    }
      
    
}
