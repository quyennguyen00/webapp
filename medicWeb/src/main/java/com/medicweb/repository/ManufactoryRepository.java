/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository;

import com.medicweb.pojo.Manufactory;
import java.util.List;
import org.eclipse.persistence.internal.expressions.ManualQueryKeyExpression;

/**
 *
 * @author QUYENNGUYEN
 */
public interface ManufactoryRepository {
    List<Manufactory> getManufactorys();
    Manufactory getManufactoryById(int Id);
}
