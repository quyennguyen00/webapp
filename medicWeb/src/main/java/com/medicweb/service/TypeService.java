/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service;

import com.medicweb.pojo.Type;
import java.util.List;

/**
 *
 * @author QUYENNGUYEN
 */
public interface TypeService {
     Type  getTypeById(int typeId);
     List<Type> getTypes();
}
