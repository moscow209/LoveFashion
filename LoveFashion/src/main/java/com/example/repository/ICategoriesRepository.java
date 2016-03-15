package com.example.repository;

import java.util.List;

import com.example.entity.CategoryEntity;

public interface ICategoriesRepository extends IRepository<CategoryEntity> {

	public List<CategoryEntity> getAllCategoriesByOrders();

	public List<CategoryEntity> getSubCategories(Integer parent);

}
