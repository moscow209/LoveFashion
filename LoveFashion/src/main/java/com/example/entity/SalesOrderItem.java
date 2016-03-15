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

/**
 * SalesOrderItem generated by hbm2java
 */
@Entity
@Table(name = "sales_order_item", catalog = "lovefashion1")
public class SalesOrderItem implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer itemId;
	private ProductEntity productEntity;
	private SalesOrder salesOrder;
	private Store store;
	private Date createdAt;
	private Date updatedAt;
	private Double qtyInvoiced;
	private Double qtyOrdered;
	private Double qtyRefunded;
	private Double qtyShipped;
	private Double originalPrice;
	private Double taxPercent;
	private Double taxAmount;
	private Double discountPercent;
	private Double discountAmount;
	private Double discountInvoiced;
	private Double amountRefunded;
	private Double rowTotal;

	public SalesOrderItem() {
	}

	public SalesOrderItem(ProductEntity productEntity, SalesOrder salesOrder, Date createdAt, Date updatedAt) {
		this.productEntity = productEntity;
		this.salesOrder = salesOrder;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public SalesOrderItem(ProductEntity productEntity, SalesOrder salesOrder, Store store, Date createdAt,
			Date updatedAt, Double qtyInvoiced, Double qtyOrdered, Double qtyRefunded, Double qtyShipped,
			Double originalPrice, Double taxPercent, Double taxAmount, Double discountPercent, Double discountAmount,
			Double discountInvoiced, Double amountRefunded, Double rowTotal) {
		this.productEntity = productEntity;
		this.salesOrder = salesOrder;
		this.store = store;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.qtyInvoiced = qtyInvoiced;
		this.qtyOrdered = qtyOrdered;
		this.qtyRefunded = qtyRefunded;
		this.qtyShipped = qtyShipped;
		this.originalPrice = originalPrice;
		this.taxPercent = taxPercent;
		this.taxAmount = taxAmount;
		this.discountPercent = discountPercent;
		this.discountAmount = discountAmount;
		this.discountInvoiced = discountInvoiced;
		this.amountRefunded = amountRefunded;
		this.rowTotal = rowTotal;
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
	@JoinColumn(name = "product_id", nullable = false)
	public ProductEntity getProductEntity() {
		return this.productEntity;
	}

	public void setProductEntity(ProductEntity productEntity) {
		this.productEntity = productEntity;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "order_id", nullable = false)
	public SalesOrder getSalesOrder() {
		return this.salesOrder;
	}

	public void setSalesOrder(SalesOrder salesOrder) {
		this.salesOrder = salesOrder;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "store_id")
	public Store getStore() {
		return this.store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at", nullable = false, length = 19)
	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at", nullable = false, length = 19)
	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	@Column(name = "qty_invoiced", precision = 22, scale = 0)
	public Double getQtyInvoiced() {
		return this.qtyInvoiced;
	}

	public void setQtyInvoiced(Double qtyInvoiced) {
		this.qtyInvoiced = qtyInvoiced;
	}

	@Column(name = "qty_ordered", precision = 22, scale = 0)
	public Double getQtyOrdered() {
		return this.qtyOrdered;
	}

	public void setQtyOrdered(Double qtyOrdered) {
		this.qtyOrdered = qtyOrdered;
	}

	@Column(name = "qty_refunded", precision = 22, scale = 0)
	public Double getQtyRefunded() {
		return this.qtyRefunded;
	}

	public void setQtyRefunded(Double qtyRefunded) {
		this.qtyRefunded = qtyRefunded;
	}

	@Column(name = "qty_shipped", precision = 22, scale = 0)
	public Double getQtyShipped() {
		return this.qtyShipped;
	}

	public void setQtyShipped(Double qtyShipped) {
		this.qtyShipped = qtyShipped;
	}

	@Column(name = "original_price", precision = 22, scale = 0)
	public Double getOriginalPrice() {
		return this.originalPrice;
	}

	public void setOriginalPrice(Double originalPrice) {
		this.originalPrice = originalPrice;
	}

	@Column(name = "tax_percent", precision = 22, scale = 0)
	public Double getTaxPercent() {
		return this.taxPercent;
	}

	public void setTaxPercent(Double taxPercent) {
		this.taxPercent = taxPercent;
	}

	@Column(name = "tax_amount", precision = 22, scale = 0)
	public Double getTaxAmount() {
		return this.taxAmount;
	}

	public void setTaxAmount(Double taxAmount) {
		this.taxAmount = taxAmount;
	}

	@Column(name = "discount_percent", precision = 22, scale = 0)
	public Double getDiscountPercent() {
		return this.discountPercent;
	}

	public void setDiscountPercent(Double discountPercent) {
		this.discountPercent = discountPercent;
	}

	@Column(name = "discount_amount", precision = 22, scale = 0)
	public Double getDiscountAmount() {
		return this.discountAmount;
	}

	public void setDiscountAmount(Double discountAmount) {
		this.discountAmount = discountAmount;
	}

	@Column(name = "discount_invoiced", precision = 22, scale = 0)
	public Double getDiscountInvoiced() {
		return this.discountInvoiced;
	}

	public void setDiscountInvoiced(Double discountInvoiced) {
		this.discountInvoiced = discountInvoiced;
	}

	@Column(name = "amount_refunded", precision = 22, scale = 0)
	public Double getAmountRefunded() {
		return this.amountRefunded;
	}

	public void setAmountRefunded(Double amountRefunded) {
		this.amountRefunded = amountRefunded;
	}

	@Column(name = "row_total", precision = 22, scale = 0)
	public Double getRowTotal() {
		return this.rowTotal;
	}

	public void setRowTotal(Double rowTotal) {
		this.rowTotal = rowTotal;
	}

}
