/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.formatter;

import com.medicweb.pojo.Manufactory;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author QUYENNGUYEN
 */
public class ManufactoryFormat implements Formatter<Manufactory>{
    @Override
    public String print(Manufactory t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Manufactory parse(String cateId, Locale locale) throws ParseException {
        Manufactory c = new Manufactory();
        c.setId(Integer.parseInt(cateId));
        return c;
    }   
}
