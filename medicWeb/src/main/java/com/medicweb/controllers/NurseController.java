/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.ExaminationCard;
import com.medicweb.pojo.Medicines;
import com.medicweb.pojo.Services;
import com.medicweb.service.ExamService;
import com.medicweb.service.RegistrationService;
import com.medicweb.service.ServiceServices;
import com.medicweb.service.UserService;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    
      @ModelAttribute
    public void commonAttr(Model model, HttpSession session) {
       model.addAttribute("service",serviceServices.getService());
       
    }

      @GetMapping("/nurse")
    public String nursePage(Model model){
        return"registration";
    }
      @GetMapping("/nurse/examination-card")
    public String examination(Model model){
        model.addAttribute("exam", new ExaminationCard());
        return"page-nurse";
    }
   
     @PostMapping("/nurse/examination-card")
    public String addExam(Model model,@ModelAttribute(value = "exam") @Valid ExaminationCard exam){
         Services s = this.serviceServices.getServiceById(exam.getServiceId().getId());
         exam.setPrice(s.getPrice());
         if(this.examService.addExam(exam)){
//             return "redirect:/nurse";
                return "page-nurse";
         }
        return "page-nurse";
    }
    @PostMapping("/nurse/examination-card/add")
    public String add(Model model,@ModelAttribute(value = "exam") @Valid ExaminationCard exam,
            BindingResult result){

         Services s = this.serviceServices.getServiceById(exam.getServiceId().getId());
         exam.setPrice(s.getPrice());
         if(this.examService.addExam(exam)){
             return "redirect:/nurse";
         }
        return "page-nurse";
        
    }
}
