/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Configuration
@EnableWebMvc// thien thuc phuong thuc
@EnableTransactionManagement
@ComponentScan(basePackages = { 
    "com.medicweb.controllers",
    "com.medicweb.repository",
    "com.medicweb.service"
   
})

public class WebApplicationContextConfig implements WebMvcConfigurer{

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
      registry.addResourceHandler("/css/**")
              .addResourceLocations("/resources/css/");
       registry.addResourceHandler("/js/**")
              .addResourceLocations("/resources/js/");
      registry.addResourceHandler("/images/**")
              .addResourceLocations("/resources/images/");
      
       registry.addResourceHandler("/styles/**")
              .addResourceLocations("/resources/styles/");
       registry.addResourceHandler("/bootstrap-4.1.2/**")
              .addResourceLocations("/styles/bootstrap-4.1.2/");
       
    
        registry.addResourceHandler("/greensock/**")
              .addResourceLocations("/plugins/greensock/");
        registry.addResourceHandler("/scrollmagic/**")
              .addResourceLocations("/plugins/scrollmagic/");
        
        registry.addResourceHandler("/easing/**")
              .addResourceLocations("/plugins/easing/");
        
//        registry.addResourceHandler("/css/**")
//              .addResourceLocations("/resources/font-awesome-4.7.0/css/");
        registry.addResourceHandler("/fonts/**")
              .addResourceLocations("/font-awesome-4.7.0/fonts/");
        registry.addResourceHandler("/less/**")
              .addResourceLocations("/font-awesome-4.7.0/less/");
        registry.addResourceHandler("/scss/**")
              .addResourceLocations("/font-awesome-4.7.0/scss/");
        
         registry.addResourceHandler("/OwlCarousel/**")
              .addResourceLocations("/plugins/OwlCarousel/");
         
        registry.addResourceHandler("/parallax-js-master/**")
              .addResourceLocations("/plugins/parallax-js-master/");
        
        registry.addResourceHandler("/progressbar/**")
              .addResourceLocations("/plugins/progressbar/");
        
        registry.addResourceHandler("/jquery-datepicker/**")
              .addResourceLocations("/plugins/jquery-datepicker/");

    }
    
    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver(){
        InternalResourceViewResolver resource = new InternalResourceViewResolver();
        resource.setViewClass(JstlView.class);
        resource.setPrefix("/WEB-INF/jsp/");
        resource.setSuffix(".jsp");
        
        return resource;
    }
   
}
