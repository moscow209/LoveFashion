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
 * SalesRevenuesellersAggregatedYearly generated by hbm2java
 */
@Entity
@Table(name = "sales_revenuesellers_aggregated_yearly", catalog = "lovefashion1", uniqueConstraints = @UniqueConstraint(columnNames = {
		"period", "store_id" }) )
public class SalesRevenuesellersAggregatedYearly implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Store store;
	private Date period;
	private int qtyOrdered;
	private double paidOrder;

	public SalesRevenuesellersAggregatedYearly() {
	}

	public SalesRevenuesellersAggregatedYearly(int qtyOrdered, double paidOrder) {
		this.qtyOrdered = qtyOrdered;
		this.paidOrder = paidOrder;
	}

	public SalesRevenuesellersAggregatedYearly(Store store, Date period, int qtyOrdered, double paidOrder) {
		this.store = store;
		this.period = period;
		this.qtyOrdered = qtyOrdered;
		this.paidOrder = paidOrder;
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

	@Column(name = "qty_ordered", nullable = false)
	public int getQtyOrdered() {
		return this.qtyOrdered;
	}

	public void setQtyOrdered(int qtyOrdered) {
		this.qtyOrdered = qtyOrdered;
	}

	@Column(name = "paid_order", nullable = false, precision = 22, scale = 0)
	public double getPaidOrder() {
		return this.paidOrder;
	}

	public void setPaidOrder(double paidOrder) {
		this.paidOrder = paidOrder;
	}

}
