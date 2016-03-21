package com.example.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductModel {

	private Integer entityId;
	private String name;
	private Double price;
	private Short isNew;
	private Date newsFromDate;
	private Date newsToDate;
	private Short sale;
	private Double specialPrice;
	private Date specialFromDate;
	private Date specialToDate;
	private String material;
	private String climate;
	private String pattern;
	private String collar;
	private String sleeve;
	private String active;
	private String metaDescription;
	private String metaKeyword;
	private String metaTitle;
	private String description;
	private String sku;
	private List<String> image = new ArrayList<String>();

	public Integer getEntityId() {
		return entityId;
	}

	public void setEntityId(Integer entityId) {
		this.entityId = entityId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Short getIsNew() {
		return isNew;
	}

	public void setIsNew(Short isNew) {
		this.isNew = isNew;
	}

	public Date getNewsFromDate() {
		return newsFromDate;
	}

	public void setNewsFromDate(Date newsFromDate) {
		this.newsFromDate = newsFromDate;
	}

	public Date getNewsToDate() {
		return newsToDate;
	}

	public void setNewsToDate(Date newsToDate) {
		this.newsToDate = newsToDate;
	}

	public Short getSale() {
		return sale;
	}

	public void setSale(Short sale) {
		this.sale = sale;
	}

	public Double getSpecialPrice() {
		return specialPrice;
	}

	public void setSpecialPrice(Double specialPrice) {
		this.specialPrice = specialPrice;
	}

	public Date getSpecialFromDate() {
		return specialFromDate;
	}

	public void setSpecialFromDate(Date specialFromDate) {
		this.specialFromDate = specialFromDate;
	}

	public Date getSpecialToDate() {
		return specialToDate;
	}

	public void setSpecialToDate(Date specialToDate) {
		this.specialToDate = specialToDate;
	}

	public List<String> getImage() {
		return image;
	}

	public void setImage(List<String> image) {
		this.image = image;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getClimate() {
		return climate;
	}

	public void setClimate(String climate) {
		this.climate = climate;
	}

	public String getPattern() {
		return pattern;
	}

	public void setPattern(String pattern) {
		this.pattern = pattern;
	}

	public String getCollar() {
		return collar;
	}

	public void setCollar(String collar) {
		this.collar = collar;
	}

	public String getSleeve() {
		return sleeve;
	}

	public void setSleeve(String sleeve) {
		this.sleeve = sleeve;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getMetaDescription() {
		return metaDescription;
	}

	public void setMetaDescription(String metaDescription) {
		this.metaDescription = metaDescription;
	}

	public String getMetaKeyword() {
		return metaKeyword;
	}

	public void setMetaKeyword(String metaKeyword) {
		this.metaKeyword = metaKeyword;
	}

	public String getMetaTitle() {
		return metaTitle;
	}

	public void setMetaTitle(String metaTitle) {
		this.metaTitle = metaTitle;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}
}
