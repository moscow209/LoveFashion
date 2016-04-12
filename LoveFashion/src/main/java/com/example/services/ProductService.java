package com.example.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.ProductModel;
import com.example.entity.CategoryEntity;
import com.example.entity.GeneralEntity;
import com.example.entity.ProductEntity;
import com.example.entity.ProductGalleryEntity;
import com.example.repository.IProductRepository;

@Service
public class ProductService implements IProductService {

	@Autowired
	private IProductRepository productRepository;

	@Autowired
	private ModelMapper mapper;

	@Transactional
	public List<ProductModel> getListProductByCate(CategoryEntity cate,
			String color, String size, String manu, String prices, Integer start) {
		// TODO Auto-generated method stub
		List<ProductModel> products = new ArrayList<ProductModel>();
		List<ProductEntity> results = productRepository.getListProductByCate(
				cate, color, size, manu, prices, start);
		GeneralEntity general = null;
		for (int i = 0; i < results.size(); i++) {
			general = results.get(i).getGeneralEntity();
			products.add(convertToModel(results.get(i), general, general.getProductGalleryEntities()));
		}
		return products;
	}

	@Transactional
	public long countProductByCate(CategoryEntity cate, String color,
			String size, String manu, String price) {
		// TODO Auto-generated method stub
		return productRepository.countProductByCate(cate, color, size, manu,
				price);
	}

	@Transactional
	public List<String> getListColorByCate(List<String> products) {
		// TODO Auto-generated method stub
		return productRepository.getListColorByCate(products);
	}

	@Transactional
	public List<String> getListSizeByCate(List<String> products) {
		// TODO Auto-generated method stub
		return productRepository.getListSizeByCate(products);
	}

	@Transactional
	public List<String> getListManufacturerByCate(List<String> products) {
		// TODO Auto-generated method stub
		return productRepository.getListManufacturerByCate(products);
	}

	private ProductModel convertToModel(ProductEntity product,
			GeneralEntity general, Set<ProductGalleryEntity> images) {
		ProductModel model = mapper.map(general, ProductModel.class);
		model.setEntityId(product.getEntityId());
		model.setPrice(product.getPrice());
		model.setName(product.getName());
		model.setSku(product.getSku());
		for (ProductGalleryEntity gallery : images) {
			model.getImage().add(gallery.getValue());
		}
		return model;
	}
}