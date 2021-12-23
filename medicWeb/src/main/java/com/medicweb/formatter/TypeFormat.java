/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.formatter;

import com.medicweb.pojo.Type;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author QUYENNGUYEN
 */
public class TypeFormat implements Formatter<Type>{
    @Override
    public String print(Type t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Type parse(String cateId, Locale locale) throws ParseException {
        Type c = new Type();
        c.setId(Integer.parseInt(cateId));
        return c;
    }
}
