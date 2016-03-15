package com.example.services;

import java.util.List;

import com.example.entity.CategoryEntity;

public interface ICategoriesService {

	public List<CategoryEntity> getAllCategoriesByOrders();

	public CategoryEntity getCategory(Integer id);

	public List<CategoryEntity> getSubCategories(Integer parent);

}
