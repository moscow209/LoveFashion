package com.example.repository;

import java.util.List;

import com.example.entity.GeneralEntity;
import com.example.entity.ProductEntity;

public interface IProductRepository extends IRepository<GeneralEntity>{

	public List<ProductEntity> getListProductByCate(Integer cate, Integer start);
	
	public long countProductByCate(Integer cate);
	
	public List<String> getListColorByCate(Integer cate);
	
	public List<String> getListSizeByCate(Integer cate);
	
	public List<String> getListManufacturerByCate(Integer cate);
	
	public List<String> getListSubCateByCate(Integer cate);
}
