/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.ExaminationCard;
import com.medicweb.repository.ExamRepository;
import com.medicweb.service.ExamService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class ExamServiceImpl implements ExamService{

    @Autowired
    private ExamRepository examRepository;
    @Override
    public List<ExaminationCard> getlist() {
        return this.examRepository.getlist();
    }

    @Override
    public boolean addExam(ExaminationCard e) {
      return this.examRepository.addExam(e);
    }

    @Override
    public ExaminationCard getExam(int id) {
       return  this.examRepository.getExam(id);
    }
    
}
