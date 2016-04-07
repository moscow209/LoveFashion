package com.example.services;

import java.util.List;

import com.example.dto.ProductModel;
import com.example.entity.CategoryEntity;

public interface IProductService {

	public List<ProductModel> getListProductByCate(CategoryEntity cate,
			String color, String size, String manu, String prices, Integer start);

	public long countProductByCate(CategoryEntity cate, String color,
			String size, String manu, String price);

	public List<String> getListColorByCate(List<String> products);

	public List<String> getListSizeByCate(List<String> products);

	public List<String> getListManufacturerByCate(List<String> products);
}
