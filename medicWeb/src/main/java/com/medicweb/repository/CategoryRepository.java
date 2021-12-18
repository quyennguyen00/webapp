/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository;

import com.medicweb.pojo.Category;
import java.util.List;

/**
 *
 * @author QUYENNGUYEN
 */
public interface CategoryRepository {
    List<Category> getCategories();
    Category getCategoryById(int cateId);
}
