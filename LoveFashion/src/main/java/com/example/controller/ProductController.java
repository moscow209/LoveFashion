package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.contrains.GlobalSetting;
import com.example.dto.ProductModel;
import com.example.services.IProductService;

@Controller
public class ProductController {

	@Autowired
	private IProductService productService;
	
	@RequestMapping(value="/category/{id}", method = RequestMethod.GET)
	public String showListProduct(@PathVariable("id") Integer id,
			@RequestParam(value = "page", required = false) Integer page, Model model){
		if(page == null){
			page = 1;
		}
		int start = (page - 1) * GlobalSetting.ITEM_PER_PAGE;
		List<ProductModel> list = productService.getListProductByCate(id, start);
		long total = productService.countProductByCate(id);
		int totalPage = (int)(total / GlobalSetting.ITEM_PER_PAGE);
		if(total > GlobalSetting.ITEM_PER_PAGE 
				&& total % GlobalSetting.ITEM_PER_PAGE != 0){
			totalPage = totalPage + 1;
		}
		List<String> colors = productService.getListColorByCate(id);
		List<String> sizes = productService.getListSizeByCate(id);
		List<String> manufacturers = productService.getListManufacturerByCate(id);
		model.addAttribute("list", list);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("currentPage", page);
		model.addAttribute("colors", colors);
		model.addAttribute("sizes", sizes);
		model.addAttribute("manufacturers", manufacturers);
		return "/store/list";
	}
}
