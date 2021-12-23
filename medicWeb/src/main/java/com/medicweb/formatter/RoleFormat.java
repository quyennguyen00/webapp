/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.formatter;

import com.medicweb.pojo.Role;
import com.medicweb.pojo.Suppliers;
import com.medicweb.pojo.Type;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author QUYENNGUYEN
 */
public class RoleFormat implements Formatter<Role>{
     @Override
    public String print(Role t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Role parse(String cateId, Locale locale) throws ParseException {
        Role c = new Role();
        c.setId(Integer.parseInt(cateId));
        return c;
    }
}
