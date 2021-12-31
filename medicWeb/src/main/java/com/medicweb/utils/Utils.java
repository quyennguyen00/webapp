/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.utils;

import com.medicweb.pojo.MedicineItems;
import java.util.HashMap;
import java.util.Map;

/**
 *
@author QUYENNGUYEN
 */
public class Utils {
    public static int count(Map<Integer, MedicineItems> pres) {
        int q = 0;
        
        if (pres != null)
            for (MedicineItems c: pres.values())
                q += c.getCount();
        
        return q;
    }
    
//    public static Map<String, String> cartStats(Map<Integer, Cart> cart) {
//        Long s = 0l;
//        int q = 0;
//        
//        if (cart != null)
//            for (PrescriptionTemp c: cart.values()) {
//                q += c.getQuantity();
//                s += c.getQuantity() * c.getPrice();
//            }
//        
//        Map<String, String> kq = new HashMap<>();
//        kq.put("counter", String.valueOf(q));
//        kq.put("amount", String.valueOf(s));
//        
//        
//        return kq;
//    }
}
