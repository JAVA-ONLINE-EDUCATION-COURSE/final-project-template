package com.epam.rd.izh.service;

import com.epam.rd.izh.entity.Category;
import com.epam.rd.izh.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    public List<Category> getAllCategories() {
        return categoryRepository.getAllCategories();
    }

    public Category getCategoryById(Long id) {
        return categoryRepository.getCategoryById(id);
    }

}