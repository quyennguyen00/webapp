/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.formatter;

import com.medicweb.pojo.Manufactory;
import com.medicweb.pojo.Registration;
import java.text.Format;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author QUYENNGUYEN
 */
public class RegisterForMat implements Formatter<Registration>{

    @Override
    public String print(Registration t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Registration parse(String cateId, Locale locale) throws ParseException {
        Registration c = new Registration();
        c.setId(Integer.parseInt(cateId));
        return c;
    }   
    
}
