package com.example.entity;
// Generated Jan 4, 2016 1:12:11 AM by Hibernate Tools 4.3.1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * SalesBestsellersAggregatedDaily generated by hbm2java
 */
@Entity
@Table(name = "sales_bestsellers_aggregated_daily", catalog = "lovefashion1", uniqueConstraints = @UniqueConstraint(columnNames = {
		"period", "store_id", "product_id" }) )
public class SalesBestsellersAggregatedDaily implements java.io.Serializable {

	private Integer id;
	private ProductEntity productEntity;
	private Store store;
	private Date period;
	private String productName;
	private double productPrice;
	private int qtyOrdered;

	public SalesBestsellersAggregatedDaily() {
	}

	public SalesBestsellersAggregatedDaily(double productPrice, int qtyOrdered) {
		this.productPrice = productPrice;
		this.qtyOrdered = qtyOrdered;
	}

	public SalesBestsellersAggregatedDaily(ProductEntity productEntity, Store store, Date period, String productName,
			double productPrice, int qtyOrdered) {
		this.productEntity = productEntity;
		this.store = store;
		this.period = period;
		this.productName = productName;
		this.productPrice = productPrice;
		this.qtyOrdered = qtyOrdered;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id")
	public ProductEntity getProductEntity() {
		return this.productEntity;
	}

	public void setProductEntity(ProductEntity productEntity) {
		this.productEntity = productEntity;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "store_id")
	public Store getStore() {
		return this.store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "period", length = 10)
	public Date getPeriod() {
		return this.period;
	}

	public void setPeriod(Date period) {
		this.period = period;
	}

	@Column(name = "product_name")
	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "product_price", nullable = false, precision = 22, scale = 0)
	public double getProductPrice() {
		return this.productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	@Column(name = "qty_ordered", nullable = false)
	public int getQtyOrdered() {
		return this.qtyOrdered;
	}

	public void setQtyOrdered(int qtyOrdered) {
		this.qtyOrdered = qtyOrdered;
	}

}