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
 
    
      @ModelAttribute
    public void commonAttr(Model model, HttpSession session) {
       model.addAttribute("currentUser",session.getAttribute("currentUser"));

    }
    @RequestMapping("/")
    public String index(){
   
        return"page-index";
    }
    @RequestMapping("/admin/error")
    public String error(){
   
        return"page-error";
    }
    
    
    
}
