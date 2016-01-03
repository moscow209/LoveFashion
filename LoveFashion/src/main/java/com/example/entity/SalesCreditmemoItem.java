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

/**
 * SalesCreditmemoItem generated by hbm2java
 */
@Entity
@Table(name = "sales_creditmemo_item", catalog = "lovefashion1")
public class SalesCreditmemoItem implements java.io.Serializable {

	private Integer entityId;
	private SalesCreditmemo salesCreditmemo;
	private Double taxAmount;
	private Double discountAmount;
	private Double rowTotal;
	private Double priceInclTax;
	private Integer qty;
	private Double price;
	private Double rowTotalInclTax;
	private Integer productId;
	private String sku;
	private String name;

	public SalesCreditmemoItem() {
	}

	public SalesCreditmemoItem(SalesCreditmemo salesCreditmemo) {
		this.salesCreditmemo = salesCreditmemo;
	}

	public SalesCreditmemoItem(SalesCreditmemo salesCreditmemo, Double taxAmount, Double discountAmount,
			Double rowTotal, Double priceInclTax, Integer qty, Double price, Double rowTotalInclTax, Integer productId,
			String sku, String name) {
		this.salesCreditmemo = salesCreditmemo;
		this.taxAmount = taxAmount;
		this.discountAmount = discountAmount;
		this.rowTotal = rowTotal;
		this.priceInclTax = priceInclTax;
		this.qty = qty;
		this.price = price;
		this.rowTotalInclTax = rowTotalInclTax;
		this.productId = productId;
		this.sku = sku;
		this.name = name;
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
	@JoinColumn(name = "parent_id", nullable = false)
	public SalesCreditmemo getSalesCreditmemo() {
		return this.salesCreditmemo;
	}

	public void setSalesCreditmemo(SalesCreditmemo salesCreditmemo) {
		this.salesCreditmemo = salesCreditmemo;
	}

	@Column(name = "tax_amount", precision = 22, scale = 0)
	public Double getTaxAmount() {
		return this.taxAmount;
	}

	public void setTaxAmount(Double taxAmount) {
		this.taxAmount = taxAmount;
	}

	@Column(name = "discount_amount", precision = 22, scale = 0)
	public Double getDiscountAmount() {
		return this.discountAmount;
	}

	public void setDiscountAmount(Double discountAmount) {
		this.discountAmount = discountAmount;
	}

	@Column(name = "row_total", precision = 22, scale = 0)
	public Double getRowTotal() {
		return this.rowTotal;
	}

	public void setRowTotal(Double rowTotal) {
		this.rowTotal = rowTotal;
	}

	@Column(name = "price_incl_tax", precision = 22, scale = 0)
	public Double getPriceInclTax() {
		return this.priceInclTax;
	}

	public void setPriceInclTax(Double priceInclTax) {
		this.priceInclTax = priceInclTax;
	}

	@Column(name = "qty")
	public Integer getQty() {
		return this.qty;
	}

	public void setQty(Integer qty) {
		this.qty = qty;
	}

	@Column(name = "price", precision = 22, scale = 0)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Column(name = "row_total_incl_tax", precision = 22, scale = 0)
	public Double getRowTotalInclTax() {
		return this.rowTotalInclTax;
	}

	public void setRowTotalInclTax(Double rowTotalInclTax) {
		this.rowTotalInclTax = rowTotalInclTax;
	}

	@Column(name = "product_id")
	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	@Column(name = "sku")
	public String getSku() {
		return this.sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	@Column(name = "name")
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
