/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.configs;


import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.medicweb.configs.handlers.MyAccessDeniedHandler;
import com.medicweb.configs.handlers.LoginSuccessHandler;
import com.medicweb.configs.handlers.LogoutHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {
     "com.medicweb.service",
         "com.medicweb.repository"
})
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{

    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
     private AuthenticationSuccessHandler loginSuccessHandler;
    @Autowired
    private LogoutSuccessHandler logoutHandler;
    @Autowired
    private MyAccessDeniedHandler accessDenied;
    
    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
         return new BCryptPasswordEncoder();
    }
    
         @Bean
    public AuthenticationSuccessHandler loginSuccessHandler() {
        return new LoginSuccessHandler();
    }
    
    @Bean
    public LogoutSuccessHandler logoutHandler() {
        return new LogoutHandler();
    }
    
    @Bean
    public MyAccessDeniedHandler accessDenied() {
        return new MyAccessDeniedHandler();
    }
    
       @Bean
    public Cloudinary cloudinary() {
        Cloudinary c = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "dhj3qxlyh",
                "api_key", "173413849841721",
                "api_secret", "qgFFyzYS2Tq16G8ry2l-NCzW4dg",
                "secure", true));

        return c;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
       
       auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
       http.formLogin().loginPage("/login")
               .usernameParameter("username")
               .passwordParameter("password");
       
       http.formLogin().defaultSuccessUrl("/").failureUrl("/login?Error");
       http.formLogin().successHandler(this.loginSuccessHandler);
       http.logout().logoutSuccessHandler(this.logoutHandler);   
//       http.exceptionHandling().accessDeniedPage("/login?accessDenied");
//       
//       http.authorizeRequests().antMatchers("/").permitAll()
//               .antMatchers("/admin/**").access("hasAnyAuthority('1')")
//               .antMatchers("/doctor/**").access("hasAnyAuthority('2')")
//               .antMatchers("/nurse/**").access("hasAnyAuthority('3')");
              
       http.csrf().disable();
    }
    
    
}
