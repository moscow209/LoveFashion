package com.example.entity;
// Generated Jan 4, 2016 1:12:11 AM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * InventoryStockItem generated by hbm2java
 */
@Entity
@Table(name = "inventory_stock_item", catalog = "lovefashion1", uniqueConstraints = @UniqueConstraint(columnNames = {
		"product_id", "stock_id" }) )
public class InventoryStockItem implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer itemId;
	private InventoryStock inventoryStock;
	private ProductEntity productEntity;
	private int qty;
	private int minQty;
	private int minSaleQty;
	private int maxSaleQty;
	private short isInStock;
	private Integer notifyStockQty;

	public InventoryStockItem() {
	}

	public InventoryStockItem(InventoryStock inventoryStock, ProductEntity productEntity, int qty, int minQty,
			int minSaleQty, int maxSaleQty, short isInStock) {
		this.inventoryStock = inventoryStock;
		this.productEntity = productEntity;
		this.qty = qty;
		this.minQty = minQty;
		this.minSaleQty = minSaleQty;
		this.maxSaleQty = maxSaleQty;
		this.isInStock = isInStock;
	}

	public InventoryStockItem(InventoryStock inventoryStock, ProductEntity productEntity, int qty, int minQty,
			int minSaleQty, int maxSaleQty, short isInStock, Integer notifyStockQty) {
		this.inventoryStock = inventoryStock;
		this.productEntity = productEntity;
		this.qty = qty;
		this.minQty = minQty;
		this.minSaleQty = minSaleQty;
		this.maxSaleQty = maxSaleQty;
		this.isInStock = isInStock;
		this.notifyStockQty = notifyStockQty;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "item_id", unique = true, nullable = false)
	public Integer getItemId() {
		return this.itemId;
	}

	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "stock_id", nullable = false)
	public InventoryStock getInventoryStock() {
		return this.inventoryStock;
	}

	public void setInventoryStock(InventoryStock inventoryStock) {
		this.inventoryStock = inventoryStock;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", nullable = false)
	public ProductEntity getProductEntity() {
		return this.productEntity;
	}

	public void setProductEntity(ProductEntity productEntity) {
		this.productEntity = productEntity;
	}

	@Column(name = "qty", nullable = false)
	public int getQty() {
		return this.qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	@Column(name = "min_qty", nullable = false)
	public int getMinQty() {
		return this.minQty;
	}

	public void setMinQty(int minQty) {
		this.minQty = minQty;
	}

	@Column(name = "min_sale_qty", nullable = false)
	public int getMinSaleQty() {
		return this.minSaleQty;
	}

	public void setMinSaleQty(int minSaleQty) {
		this.minSaleQty = minSaleQty;
	}

	@Column(name = "max_sale_qty", nullable = false)
	public int getMaxSaleQty() {
		return this.maxSaleQty;
	}

	public void setMaxSaleQty(int maxSaleQty) {
		this.maxSaleQty = maxSaleQty;
	}

	@Column(name = "is_in_stock", nullable = false)
	public short getIsInStock() {
		return this.isInStock;
	}

	public void setIsInStock(short isInStock) {
		this.isInStock = isInStock;
	}

	@Column(name = "notify_stock_qty")
	public Integer getNotifyStockQty() {
		return this.notifyStockQty;
	}

	public void setNotifyStockQty(Integer notifyStockQty) {
		this.notifyStockQty = notifyStockQty;
	}

}
