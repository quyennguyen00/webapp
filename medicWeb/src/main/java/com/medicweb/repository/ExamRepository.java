/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository;

import com.medicweb.pojo.ExaminationCard;
import com.medicweb.pojo.Registration;
import java.util.List;

/**
 *
 * @author QUYENNGUYEN
 */
public interface ExamRepository {
    List<ExaminationCard> getlist();
    List<Object[]> getListByRegister( int r);
    boolean addExam(ExaminationCard e);
    
    ExaminationCard getExam(int id);
}
