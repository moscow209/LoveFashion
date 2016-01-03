package com.example.entity;
// Generated Jan 4, 2016 1:12:11 AM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * ProductEntity generated by hbm2java
 */
@Entity
@Table(name = "product_entity", catalog = "lovefashion1")
public class ProductEntity implements java.io.Serializable {

	private Integer entityId;
	private GeneralEntity generalEntity;
	private String name;
	private String parentage;
	private String sku;
	private String parentSku;
	private Double price;
	private String color;
	private String size;
	private Integer manufacturer;
	private Set<InventoryStockItem> inventoryStockItems = new HashSet<InventoryStockItem>(0);
	private Set<CategoryEntity> categoryEntities = new HashSet<CategoryEntity>(0);
	private Set<ProductEntity> productEntitiesForParentId = new HashSet<ProductEntity>(0);
	private Set<SalesOrderItem> salesOrderItems = new HashSet<SalesOrderItem>(0);
	private Set<SalesBestsellersAggregatedYearly> salesBestsellersAggregatedYearlies = new HashSet<SalesBestsellersAggregatedYearly>(
			0);
	private Set<WishlistItem> wishlistItems = new HashSet<WishlistItem>(0);
	private Set<SalesBestsellersAggregatedDaily> salesBestsellersAggregatedDailies = new HashSet<SalesBestsellersAggregatedDaily>(
			0);
	private Set<InventoryStockStatus> inventoryStockStatuses = new HashSet<InventoryStockStatus>(0);
	private Set<ProductEntity> productEntitiesForChildId = new HashSet<ProductEntity>(0);
	private Set<SalesBestsellersAggregatedMonthly> salesBestsellersAggregatedMonthlies = new HashSet<SalesBestsellersAggregatedMonthly>(
			0);

	public ProductEntity() {
	}

	public ProductEntity(GeneralEntity generalEntity, String parentage) {
		this.generalEntity = generalEntity;
		this.parentage = parentage;
	}

	public ProductEntity(GeneralEntity generalEntity, String name, String parentage, String sku, String parentSku,
			Double price, String color, String size, Integer manufacturer, Set<InventoryStockItem> inventoryStockItems,
			Set<CategoryEntity> categoryEntities, Set<ProductEntity> productEntitiesForParentId,
			Set<SalesOrderItem> salesOrderItems,
			Set<SalesBestsellersAggregatedYearly> salesBestsellersAggregatedYearlies, Set<WishlistItem> wishlistItems,
			Set<SalesBestsellersAggregatedDaily> salesBestsellersAggregatedDailies,
			Set<InventoryStockStatus> inventoryStockStatuses, Set<ProductEntity> productEntitiesForChildId,
			Set<SalesBestsellersAggregatedMonthly> salesBestsellersAggregatedMonthlies) {
		this.generalEntity = generalEntity;
		this.name = name;
		this.parentage = parentage;
		this.sku = sku;
		this.parentSku = parentSku;
		this.price = price;
		this.color = color;
		this.size = size;
		this.manufacturer = manufacturer;
		this.inventoryStockItems = inventoryStockItems;
		this.categoryEntities = categoryEntities;
		this.productEntitiesForParentId = productEntitiesForParentId;
		this.salesOrderItems = salesOrderItems;
		this.salesBestsellersAggregatedYearlies = salesBestsellersAggregatedYearlies;
		this.wishlistItems = wishlistItems;
		this.salesBestsellersAggregatedDailies = salesBestsellersAggregatedDailies;
		this.inventoryStockStatuses = inventoryStockStatuses;
		this.productEntitiesForChildId = productEntitiesForChildId;
		this.salesBestsellersAggregatedMonthlies = salesBestsellersAggregatedMonthlies;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "entity_id", unique = true, nullable = false)
	public Integer getEntityId() {
		return this.entityId;
	}

	public void setEntityId(Integer entityId) {
		this.entityId = entityId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "general_id", nullable = false)
	public GeneralEntity getGeneralEntity() {
		return this.generalEntity;
	}

	public void setGeneralEntity(GeneralEntity generalEntity) {
		this.generalEntity = generalEntity;
	}

	@Column(name = "name")
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "parentage", nullable = false, length = 32)
	public String getParentage() {
		return this.parentage;
	}

	public void setParentage(String parentage) {
		this.parentage = parentage;
	}

	@Column(name = "sku", length = 64)
	public String getSku() {
		return this.sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	@Column(name = "parent_sku", length = 64)
	public String getParentSku() {
		return this.parentSku;
	}

	public void setParentSku(String parentSku) {
		this.parentSku = parentSku;
	}

	@Column(name = "price", precision = 22, scale = 0)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Column(name = "color")
	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Column(name = "size")
	public String getSize() {
		return this.size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	@Column(name = "manufacturer")
	public Integer getManufacturer() {
		return this.manufacturer;
	}

	public void setManufacturer(Integer manufacturer) {
		this.manufacturer = manufacturer;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productEntity")
	public Set<InventoryStockItem> getInventoryStockItems() {
		return this.inventoryStockItems;
	}

	public void setInventoryStockItems(Set<InventoryStockItem> inventoryStockItems) {
		this.inventoryStockItems = inventoryStockItems;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "category_product", catalog = "lovefashion1", joinColumns = {
			@JoinColumn(name = "product_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "category_id", nullable = false, updatable = false) })
	public Set<CategoryEntity> getCategoryEntities() {
		return this.categoryEntities;
	}

	public void setCategoryEntities(Set<CategoryEntity> categoryEntities) {
		this.categoryEntities = categoryEntities;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "product_relation", catalog = "lovefashion1", joinColumns = {
			@JoinColumn(name = "child_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "parent_id", nullable = false, updatable = false) })
	public Set<ProductEntity> getProductEntitiesForParentId() {
		return this.productEntitiesForParentId;
	}

	public void setProductEntitiesForParentId(Set<ProductEntity> productEntitiesForParentId) {
		this.productEntitiesForParentId = productEntitiesForParentId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productEntity")
	public Set<SalesOrderItem> getSalesOrderItems() {
		return this.salesOrderItems;
	}

	public void setSalesOrderItems(Set<SalesOrderItem> salesOrderItems) {
		this.salesOrderItems = salesOrderItems;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productEntity")
	public Set<SalesBestsellersAggregatedYearly> getSalesBestsellersAggregatedYearlies() {
		return this.salesBestsellersAggregatedYearlies;
	}

	public void setSalesBestsellersAggregatedYearlies(
			Set<SalesBestsellersAggregatedYearly> salesBestsellersAggregatedYearlies) {
		this.salesBestsellersAggregatedYearlies = salesBestsellersAggregatedYearlies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productEntity")
	public Set<WishlistItem> getWishlistItems() {
		return this.wishlistItems;
	}

	public void setWishlistItems(Set<WishlistItem> wishlistItems) {
		this.wishlistItems = wishlistItems;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productEntity")
	public Set<SalesBestsellersAggregatedDaily> getSalesBestsellersAggregatedDailies() {
		return this.salesBestsellersAggregatedDailies;
	}

	public void setSalesBestsellersAggregatedDailies(
			Set<SalesBestsellersAggregatedDaily> salesBestsellersAggregatedDailies) {
		this.salesBestsellersAggregatedDailies = salesBestsellersAggregatedDailies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productEntity")
	public Set<InventoryStockStatus> getInventoryStockStatuses() {
		return this.inventoryStockStatuses;
	}

	public void setInventoryStockStatuses(Set<InventoryStockStatus> inventoryStockStatuses) {
		this.inventoryStockStatuses = inventoryStockStatuses;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "product_relation", catalog = "lovefashion1", joinColumns = {
			@JoinColumn(name = "parent_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "child_id", nullable = false, updatable = false) })
	public Set<ProductEntity> getProductEntitiesForChildId() {
		return this.productEntitiesForChildId;
	}

	public void setProductEntitiesForChildId(Set<ProductEntity> productEntitiesForChildId) {
		this.productEntitiesForChildId = productEntitiesForChildId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productEntity")
	public Set<SalesBestsellersAggregatedMonthly> getSalesBestsellersAggregatedMonthlies() {
		return this.salesBestsellersAggregatedMonthlies;
	}

	public void setSalesBestsellersAggregatedMonthlies(
			Set<SalesBestsellersAggregatedMonthly> salesBestsellersAggregatedMonthlies) {
		this.salesBestsellersAggregatedMonthlies = salesBestsellersAggregatedMonthlies;
	}

}