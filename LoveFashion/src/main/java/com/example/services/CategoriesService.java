package com.example.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.entity.CategoryEntity;
import com.example.repository.ICategoriesRepository;

@Service
public class CategoriesService implements ICategoriesService {

	@Autowired
	private ICategoriesRepository categoriesRepository;

	@Transactional
	public List<CategoryEntity> getAllCategoriesByOrders() {
		// TODO Auto-generated method stub
		return categoriesRepository.getAllCategoriesByOrders();
	}

	public CategoryEntity getCategoryByName(String name) {
		// TODO Auto-generated method stub
		return categoriesRepository.getCategoryByName(name);
	}
}
