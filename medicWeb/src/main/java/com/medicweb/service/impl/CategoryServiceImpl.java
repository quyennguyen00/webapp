/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service.impl;

import com.medicweb.pojo.Category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.medicweb.service.CategoryService;
import com.medicweb.repository.CategoryRepository;

/**
 *
 * @author NGUYEN_NGUYEN
 */
@Service
public class CategoryServiceImpl implements CategoryService{

     @Autowired
    private CategoryRepository categoryRepository;
            

    @Override
    public List<Category> getCategories() {
       return this.categoryRepository.getCategories();
    }
    
}

