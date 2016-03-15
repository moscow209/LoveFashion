package com.example.dto;

import java.util.ArrayList;
import java.util.List;

public class CategoriesModel {

	private int id;
	private String name;
	private String name_en;
	private int level;

	private List<CategoriesModel> subCategories = new ArrayList<CategoriesModel>();

	public CategoriesModel(){
		
	}
	
	public CategoriesModel(int id, String name, String name_en, int level){
		this.id = id;
		this.name = name;
		this.name_en = name_en;
		this.level = level;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName_en() {
		return name_en;
	}

	public void setName_en(String name_en) {
		this.name_en = name_en;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public List<CategoriesModel> getSubCategories() {
		return subCategories;
	}

	public void setSubCategories(List<CategoriesModel> subCategories) {
		this.subCategories = subCategories;
	}

}
