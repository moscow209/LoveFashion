package com.example.interceptor;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.example.entity.CategoryEntity;
import com.example.services.ICategoriesService;

public class RequestMenuInterceptor extends HandlerInterceptorAdapter{

	@Autowired
	private ICategoriesService categorieService;
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		StringBuilder categories = (StringBuilder) session.getAttribute("categories");
		StringBuilder parentCats = (StringBuilder) session.getAttribute("parent_cats");
		List<CategoryEntity> result = null;
		if(categories == null || parentCats == null){
			result = categorieService.getAllCategoriesByOrders();
			categories = new StringBuilder("{");
			parentCats = new StringBuilder("{");
			buildJsonCategories(result, categories, parentCats, RequestContextUtils.getLocale(request));
			session.setAttribute("categories", categories);
			session.setAttribute("parent_cats", parentCats);
		}
		return true;
	}
	
	private void buildJsonCategories(List<CategoryEntity> list, StringBuilder categories, StringBuilder parentCats, Locale locale){
		int parent = 0;
		for(int i = 0; i < list.size(); i++){
			categories.append(toStringJson(list.get(i), locale));
			if(i < list.size() - 1)
				categories.append(",");
			if(parent != list.get(i).getParentId()){
				if(parent != 0){
					parentCats.replace(parentCats.length() - 1, parentCats.length(), "],");
				}
				parentCats.append(String.format("\"%d\":[", list.get(i).getParentId()));
				parent = list.get(i).getParentId();
			}
			parentCats.append(toStringSubJson(list.get(i), locale) + ",");
		}
		categories.append("}");
		parentCats.replace(parentCats.length() - 1, parentCats.length(), "]}");
	}
	
	private String toStringJson(CategoryEntity entity, Locale locale){
		if("en".equals(locale)){
			return String.format("\"%d\":{\"id\":\"%d\",\"name\":\"%s\"}", 
					entity.getEntityId(), entity.getEntityId(), entity.getNameEn());
		}
		return String.format("\"%d\":{\"id\":\"%d\",\"name\":\"%s\"}", 
				entity.getEntityId(), entity.getEntityId(), entity.getName());
	}
	
	private String toStringSubJson(CategoryEntity entity, Locale locale){
		if("en".equals(locale)){
			return String.format("{\"id\":\"%d\",\"name\":\"%s\"}", 
					entity.getEntityId(), entity.getNameEn());
		}
		return String.format("{\"id\":\"%d\",\"name\":\"%s\"}", 
				entity.getEntityId(), entity.getName());
	}
	
}
