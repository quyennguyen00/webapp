/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author QUYENNGUYEN
 */
@Controller
@RequestMapping("/admin")
public class NurseController {
     @Autowired
    private UserService userDetailsService;
 
   @RequestMapping("/list-nurse")
   public String listNurse(Model model){
       return "list-nurse";
   }
}
