/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicweb.repository;

import com.medicweb.pojo.Category;
import com.medicweb.pojo.User;
import java.util.List;

/**
 *
 * @author NGUYEN_NGUYEN
 */
public interface CategoryRepository {
     List<Category> getCategories();
}
