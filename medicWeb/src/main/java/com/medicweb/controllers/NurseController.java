/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Bill;
import com.medicweb.pojo.ExaminationCard;
import com.medicweb.pojo.Medicines;
import com.medicweb.pojo.Registration;
import com.medicweb.pojo.Services;
import com.medicweb.service.BillService;
import com.medicweb.service.ExamService;
import com.medicweb.service.RegistrationService;
import com.medicweb.service.ServiceServices;
import com.medicweb.service.UserService;
import java.util.ArrayList;
import java.util.Date;
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
public class NurseController {
    @Autowired
    private ServiceServices serviceServices;
    @Autowired
    private ExamService examService;
    @Autowired
    private RegistrationService registrationService;
    @Autowired
    private BillService billService;
    
      @ModelAttribute
    public void commonAttr(Model model, HttpSession session) {
       model.addAttribute("service",serviceServices.getService());
       
    }
    // 
      @GetMapping("/nurse")
    public String nursePage(Model model){
        return"registration";
    }
    //
      @GetMapping("/nurse/examination-card")
    public String examination(Model model){
        model.addAttribute("exam", new ExaminationCard());
        return"page-nurse";
    }
   
    @PostMapping("/nurse/examination-card/add")
    public String add(Model model,@ModelAttribute(value = "exam") @Valid ExaminationCard exam,
            BindingResult result){
        if(!result.hasErrors()){
            Services s = this.serviceServices.getServiceById(exam.getServiceId().getId());
         exam.setPrice(s.getPrice());
         if(this.examService.addExam(exam))
             return "redirect:/nurse";      
        }    
        return "page-nurse";
    }
    //
    @GetMapping(value="/nurse/list-payment")
    public String payment(Model model){
        return"payment";
    }

    @GetMapping(value="/nurse/payment-{id}")
    public String pay(Model model,@PathVariable int id){
        model.addAttribute("payment",this.examService.getListByRegister(id));
        model.addAttribute("regis",this.registrationService.getRegistrationById(id));
        return"payment";
    }
    
}
