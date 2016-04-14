package com.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;

import com.example.contrains.GlobalHelper;
import com.example.contrains.GlobalSetting;
import com.example.dto.ProductModel;
import com.example.entity.CategoryEntity;
import com.example.services.ICategoriesService;
import com.example.services.IProductService;

@Controller
public class ProductController {

	@Autowired
	private IProductService productService;
	
	@Autowired
	private ICategoriesService cateService;

	@Autowired
	private ViewResolver viewResolver;

	@RequestMapping(value = "/list/{cat}", method = RequestMethod.GET)
	public String showListProduct(HttpServletRequest request, @PathVariable("cat") String cat,
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
			@RequestParam(value = "color", required = false) String color,
			@RequestParam(value = "size", required = false) String size,
			@RequestParam(value = "price", required = false) String price,
			@RequestParam(value = "dir", required = false, defaultValue = "asc") String dir,
			@RequestParam(value = "order", required = false, defaultValue = "position") String order,
			@RequestParam(value = "mode", required = false, defaultValue = "grid") String mode,
			@RequestParam(value = "limit", required = false, defaultValue = "12") Integer limit,
			Locale locale, Model model) {
		int start = (page - 1) * GlobalSetting.ITEM_PER_PAGE;
		CategoryEntity cate = cateService.getCategoryByName(cat);
		if(cate != null){
			color = GlobalHelper.preHandlerParam(color);
			size = GlobalHelper.preHandlerParam(size);
			price = GlobalHelper.handlerPrice(price);
			List<ProductModel> list = productService.getListProductByCate(cate, color, size, null, price, start);
			long total = productService.countProductByCate(cate, color, size, null, price);
			int totalPage = (int) (total / GlobalSetting.ITEM_PER_PAGE);
			if (total > GlobalSetting.ITEM_PER_PAGE
					&& total % GlobalSetting.ITEM_PER_PAGE != 0) {
				totalPage = totalPage + 1;
			}
			List<String> skus = getListSkuProduct(list);
			List<String> colors = productService.getListColorByCate(skus);
			List<String> sizes = productService.getListSizeByCate(skus);
			List<String> manufacturers = productService.getListManufacturerByCate(skus);
			List<CategoryEntity> cats = cateService.getSubCategory(cate.getEntityId());
			if(price != null)
				model.addAttribute("price", price.split(GlobalSetting.SPACE_PRICE));
			model.addAttribute("list", list);
			model.addAttribute("totalPage", totalPage);
			model.addAttribute("currentPage", page);
			model.addAttribute("colors", colors);
			model.addAttribute("sizes", sizes);
			model.addAttribute("brands", manufacturers);
			model.addAttribute("cats", cats);
			model.addAttribute("color", color);
			model.addAttribute("size", size);
			return "/store/list";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/list/{cat}/{brand}", method = RequestMethod.GET)
	public String showListProduct(HttpServletRequest request, @PathVariable("cat") String cat,
			@PathVariable("brand") String brand,
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
			@RequestParam(value = "color", required = false) String color,
			@RequestParam(value = "size", required = false) String size,
			@RequestParam(value = "price", required = false) String price,
			Locale locale, Model model) {
		int start = (page - 1) * GlobalSetting.ITEM_PER_PAGE;
		CategoryEntity cate = cateService.getCategoryByName(cat);
		if(cate != null){
			color = GlobalHelper.preHandlerParam(color);
			size = GlobalHelper.preHandlerParam(size);
			price = GlobalHelper.handlerPrice(price);
			List<ProductModel> list = productService.getListProductByCate(cate, color, size, brand, price, start);
			long total = productService.countProductByCate(cate, color, size, brand, price);
			int totalPage = (int) (total / GlobalSetting.ITEM_PER_PAGE);
			if (total > GlobalSetting.ITEM_PER_PAGE
					&& total % GlobalSetting.ITEM_PER_PAGE != 0) {
				totalPage = totalPage + 1;
			}
			List<String> skus = getListSkuProduct(list);
			List<String> colors = productService.getListColorByCate(skus);
			List<String> sizes = productService.getListSizeByCate(skus);
			List<CategoryEntity> cats = cateService.getSubCategory(cate.getEntityId());
			model.addAttribute("list", list);
			model.addAttribute("totalPage", totalPage);
			model.addAttribute("currentPage", page);
			model.addAttribute("colors", colors);
			model.addAttribute("sizes", sizes);
			model.addAttribute("cats", cats);
			model.addAttribute("color", color);
			model.addAttribute("size", size);
			model.addAttribute("price", price);
			return "/store/list";
		}
		return "redirect:/";
	}


	/*@RequestMapping(value = "/category/{id}/**", method = RequestMethod.POST)
	public @ResponseBody String filterProuduct(@PathVariable("id") Integer id,
			HttpServletRequest request,
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
			Locale locale, Model listing, Model layer) throws Exception {
		String url = request.getRequestURI().toString();
		String cat = GlobalHelper.splitAbtributeFilter(url, GlobalSetting.CATE_FILTER);
		String manu = GlobalHelper.splitAbtributeFilter(url, GlobalSetting.MANU_FILTER);
		String color = GlobalHelper.splitAbtributeFilter(url, GlobalSetting.COLOR_FILTER);
		String size = GlobalHelper.splitAbtributeFilter(url, GlobalSetting.SIZE_FILTER);
		String price = GlobalHelper.splitAbtributeFilter(url, GlobalSetting.CATE_FILTER);
		int start = (page - 1) * GlobalSetting.ITEM_PER_PAGE;
		CategoryEntity cate = cateService.getCategoryByName(cat);
		if(cate != null){
			List<ProductModel> list = productService.getListProductByCate(cate, color, size, manu, price, start);
			long total = productService.countProductByCate(cate, color, size, manu, price);
			int totalPage = (int) (total / GlobalSetting.ITEM_PER_PAGE);
			if (total > GlobalSetting.ITEM_PER_PAGE
					&& total % GlobalSetting.ITEM_PER_PAGE != 0) {
				totalPage = totalPage + 1;
			}
			List<String> skus = getListSkuProduct(list);
			List<String> colors = productService.getListColorByCate(skus);
			List<String> sizes = productService.getListSizeByCate(skus);
			List<String> manufacturers = productService.getListManufacturerByCate(skus);
			listing.addAttribute("list", list);
			listing.addAttribute("totalPage", totalPage);
			listing.addAttribute("currentPage", page);
			layer.addAttribute("colors", colors);
			layer.addAttribute("sizes", sizes);
			layer.addAttribute("manufacturers", manufacturers);
			String sListing = render("/store/listing", listing, request, locale);
			String sLayer = render("/store/layer", layer, request, locale);
			if(sListing == null || sLayer == null){
				return "error";
			}
			return "{'listing':" + sListing + ",'layer':" + sLayer + "}"; 
		}
		return "redirect:/";
		
	}*/

	private String render(String nameView, Model model,
			HttpServletRequest request, Locale locale){
		try {
			View view = viewResolver.resolveViewName(nameView, locale);
			MockHttpServletResponse res = new MockHttpServletResponse();
			view.render(model.asMap(), request, res);
			return res.getContentAsString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return null;
		}
	}
	
	private List<String> getListSkuProduct(List<ProductModel> products){
		List<String> skus = new ArrayList<String>();
		for(int i = 0; i < products.size(); i++){
			skus.add(products.get(i).getSku());
		}
		return skus;
	}
}
