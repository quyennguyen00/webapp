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
import java.text.SimpleDateFormat;
import java.util.Date;
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
//@RequestMapping("/")
public class RegistrationController {

    @Autowired
    private RegistrationService registrationService;
    @Autowired
    private UserService userDetailsService;

    @GetMapping("/contact/patient-{id}")
    public String contact(Model model, @PathVariable(value = "id") int a) {
        model.addAttribute("registration", new Registration());
        return "contact";
    }

    @PostMapping("/contact/patient-{id}")
    public String register(Model model, @ModelAttribute(value = "registration")
            @Valid Registration registration,
            BindingResult result, @PathVariable(value = "id") int a) {

        User u = new User();
        registration.setUserId(this.userDetailsService.getUserById(a));
        
        
        if (this.registrationService.addRegistration(registration)) {
            return "redirect:/";
        }
        model.addAttribute("errMsg", "Đã xảy ra lỗi!!!");

        return "contact";
    }

}
