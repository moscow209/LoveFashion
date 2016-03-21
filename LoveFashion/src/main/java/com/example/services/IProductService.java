package com.example.services;

import java.util.List;

import com.example.dto.ProductModel;

public interface IProductService {

	public List<ProductModel> getListProductByCate(Integer cate, Integer start);
	
	public long countProductByCate(Integer cate);
	
	public List<String> getListColorByCate(Integer cate);
	
	public List<String> getListSizeByCate(Integer cate);
	
	public List<String> getListManufacturerByCate(Integer cate);
}
