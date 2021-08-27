/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.service;

import com.medicweb.pojo.Category;
import java.util.List;

/**
 *
 * @author NGUYEN_NGUYEN
 */
public interface CategoryService {
    List<Category> getCategories();
}
