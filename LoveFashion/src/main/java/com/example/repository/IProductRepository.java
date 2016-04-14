package com.example.repository;

import java.util.List;

import com.example.entity.CategoryEntity;
import com.example.entity.GeneralEntity;
import com.example.entity.ProductEntity;

public interface IProductRepository extends IRepository<GeneralEntity> {

	public List<ProductEntity> getListProductByCate(CategoryEntity cate,
			String color, String size, String manu, String prices,
			Integer start, Integer limit, String dir, String order);

	public long countProductByCate(CategoryEntity cate, String color,
			String size, String manu, String price, String dir, String order);

	public List<String> getListColorByCate(List<String> products);

	public List<String> getListSizeByCate(List<String> products);

	public List<String> getListManufacturerByCate(List<String> products);
}
