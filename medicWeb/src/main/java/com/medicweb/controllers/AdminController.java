/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.controllers;

import com.medicweb.pojo.Manufactory;
import com.medicweb.pojo.Medicines;
import com.medicweb.pojo.User;
import com.medicweb.service.MedicineService;
import com.medicweb.service.CagetoryService;
import com.medicweb.service.ManufactoryService;
import com.medicweb.service.RoleService;
import com.medicweb.service.SupplierService;
import com.medicweb.service.TypeService;
import com.medicweb.service.UserService;
import com.medicweb.service.impl.CategoryServiceImpl;
import java.util.Date;
import java.util.Map;
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
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author QUYENNGUYEN
 */
@Controller
@ControllerAdvice
public class AdminController {
   @Autowired
    private MedicineService medicineService;
    @Autowired
    private CagetoryService categoryService;
    @Autowired
    private ManufactoryService manufactoryService;
    @Autowired
    private SupplierService supplierService;
    @Autowired
    private TypeService typeService;
    @Autowired
    private UserService userDetailsService;
    @Autowired
    private RoleService roleService;
    
    @ModelAttribute
    public void commonAttr(Model model, HttpSession session) {
        model.addAttribute("medicine",this.medicineService.getMedicines());
        model.addAttribute("categories", this.categoryService.getCategories());
        model.addAttribute("manufactories", this.manufactoryService.getManufactorys());
        model.addAttribute("suppliers", this.supplierService.getSuppliers());
        model.addAttribute("types", this.typeService.getTypes());
        model.addAttribute("roles",this.roleService.getRole());
//        model.addAttribute("currentUser",session.getAttribute("currentUser"));
        model.addAttribute("listDoctor", this.userDetailsService.getDoctor());
        model.addAttribute("listNurse", this.userDetailsService.getNurse());
    }
    @RequestMapping("/admin")
    public String admin(Model model){
        return"page";
    }
    /// USER
    @GetMapping("/admin/user/add")
    public String addmedic(Model model){
        model.addAttribute("user", new User());
        return"show-user";
    }
    @PostMapping("/admin/user/save")
    public String addUser(Model model, @ModelAttribute(value = "user") @Valid User user,
            BindingResult result) {
        if (!result.hasErrors()) {
            Long count = userDetailsService.checkEmail(user.getEmail().trim());// Email
            if (count == 1) {
                if(user.getId() != null && this.userDetailsService.updateUser(user)){
                     return "redirect:/admin";
                }else{
                     model.addAttribute("errEmailMsg", "Email already exists!");
                }
            } else if (user.getPassword().isEmpty()){
                     model.addAttribute("errMsg", "Enter password!");
                }                
                else if (this.userDetailsService.addUser(user) == true) {
                        return "redirect:/admin";
                } 
        }
        return "show-user";
        
    }
    // DOCTOR
    @RequestMapping("/admin/list-doctor")
   public String listDoctor(Model model){
       return "list-doctor";
   }
   
   
    @GetMapping(value="/admin/list-doctor/edit-{id}")
    public String showEdit(Model model,@PathVariable int id){
        model.addAttribute("user",this.userDetailsService.getUserById(id));
        
        
        return "show-user";
    }
    
   //NURSE
    @RequestMapping("/admin/list-nurse")
   public String listNurse(Model model){
       return "list-nurse";
   }
    @GetMapping(value="/admin/list-nurse/edit-{id}")
    public String showEditNurse(Model model,@PathVariable int id){
        model.addAttribute("user",this.userDetailsService.getUserById(id));
        
//        model.addAttribute("editMedic", new Medicines());
        
        return "show-user";
    }
    // STAST
     @RequestMapping("/admin/patient")
    public String stastPatient(Model model){
        return"page-error";
    }
      @RequestMapping("/admin/turnover")
    public String stastTurnovert(Model model){
        return"page-error";
    }
    
}
