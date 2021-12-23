/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.formatter;

import com.medicweb.pojo.Category;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;



/**
 *
 * @author QUYENNGUYEN
 */
public class CategoryFormat implements Formatter<Category>{

         @Override
    public String print(Category t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Category parse(String cateId, Locale locale) throws ParseException {
        Category c = new Category();
        c.setId(Integer.parseInt(cateId));
        return c;
    }
    
}
