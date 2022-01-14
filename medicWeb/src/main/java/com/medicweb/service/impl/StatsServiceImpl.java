/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.repository.StatsRepository;
import com.medicweb.service.StatsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author QUYENNGUYEN
 */
@Service
public class StatsServiceImpl implements StatsService{

    @Autowired
    private StatsRepository statsRepository;
    @Override
    public List<Object[]> monthStats() {
       return this.statsRepository.monthStats();
    }
    @Override
    public List<Object[]> yearStats() {
       return this.statsRepository.yearStats();
    }

    @Override
    public List<Object[]> yearPatient() {
        return this.statsRepository.yearPatient();
    }
     @Override
    public List<Object[]> monthPatient() {
        return this.statsRepository.monthPatient();
    }
    
}
