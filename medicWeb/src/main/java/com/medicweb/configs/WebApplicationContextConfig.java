/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.configs;

import com.medicweb.formatter.CategoryFormat;
import com.medicweb.formatter.ManufactoryFormat;
import com.medicweb.formatter.RoleFormat;
import com.medicweb.formatter.SupplierFormat;
import com.medicweb.formatter.TypeFormat;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
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
    "com.medicweb.service",
    "com.medicweb.varlidator"
   
})

public class WebApplicationContextConfig implements WebMvcConfigurer{

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
      
       registry.addResourceHandler("/js/**")
              .addResourceLocations("/resources/js/");
       registry.addResourceHandler("/css/**")
              .addResourceLocations("/resources/css/");
      registry.addResourceHandler("/images/**")
              .addResourceLocations("/resources/images/");
//      registry.addResourceHandler("/menu/**")
//              .addResourceLocations("/images/menu/");
      
       registry.addResourceHandler("/styles/**")
              .addResourceLocations("/resources/styles/");
 
        registry.addResourceHandler("/plugins/**")
              .addResourceLocations("/resources/plugins/");

    }
    
    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver(){
        InternalResourceViewResolver resource = new InternalResourceViewResolver();
        resource.setViewClass(JstlView.class);
        resource.setPrefix("/WEB-INF/jsp/");
        resource.setSuffix(".jsp");
        
        return resource;
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
       registry.addFormatter(new CategoryFormat());
       registry.addFormatter(new TypeFormat());
       registry.addFormatter(new ManufactoryFormat());
       registry.addFormatter(new SupplierFormat());
       registry.addFormatter(new RoleFormat());
    }

    
    @Override
    public Validator getValidator() {
        return validator(); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Bean
    public LocalValidatorFactoryBean validator() {
        LocalValidatorFactoryBean v = new LocalValidatorFactoryBean();
        v.setValidationMessageSource(messageSource());
        return v;
    }

    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.setBasename("messages");//chỉ định 1,, thêm s ở setbasename để nhiều
        return source;
    }

    @Bean
    public CommonsMultipartResolver multipartResolver() {

        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("UTF-8");
        return resolver;
    }
   
}
