/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.formatter;

import com.medicweb.pojo.Role;
import com.medicweb.pojo.Services;
import com.medicweb.pojo.Suppliers;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author QUYENNGUYEN
 */
public class ServiceFormat implements Formatter<Services>{
     @Override
    public String print(Services t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Services parse(String cateId, Locale locale) throws ParseException {
        Services c = new Services();
        c.setId(Integer.parseInt(cateId));
        return c;
    }
}
