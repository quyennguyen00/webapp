/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service;

import com.medicweb.pojo.Medicines;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author QUYENNGUYEN
 */
public interface MedicineService {
    List<Medicines> getMedicines();
     Medicines getMedicine(int id);
     boolean addMedicine(Medicines medicines);
     boolean upDateMedicine(Medicines medicines) ;
    boolean deleteMedicine(int i);
}
