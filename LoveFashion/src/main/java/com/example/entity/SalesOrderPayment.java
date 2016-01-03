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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * SalesOrderPayment generated by hbm2java
 */
@Entity
@Table(name = "sales_order_payment", catalog = "lovefashion1")
public class SalesOrderPayment implements java.io.Serializable {

	private Integer entityId;
	private SalesOrder salesOrder;
	private Double amountCanceled;
	private Double amountPaid;
	private Double amountOrdered;
	private Double shippingAmount;
	private Double baseAmountPaidOnline;
	private Double baseAmountRefundedOnline;
	private Double shippingRefunded;
	private String method;
	private Set<SalesPaymentTransaction> salesPaymentTransactions = new HashSet<SalesPaymentTransaction>(0);

	public SalesOrderPayment() {
	}

	public SalesOrderPayment(SalesOrder salesOrder) {
		this.salesOrder = salesOrder;
	}

	public SalesOrderPayment(SalesOrder salesOrder, Double amountCanceled, Double amountPaid, Double amountOrdered,
			Double shippingAmount, Double baseAmountPaidOnline, Double baseAmountRefundedOnline,
			Double shippingRefunded, String method, Set<SalesPaymentTransaction> salesPaymentTransactions) {
		this.salesOrder = salesOrder;
		this.amountCanceled = amountCanceled;
		this.amountPaid = amountPaid;
		this.amountOrdered = amountOrdered;
		this.shippingAmount = shippingAmount;
		this.baseAmountPaidOnline = baseAmountPaidOnline;
		this.baseAmountRefundedOnline = baseAmountRefundedOnline;
		this.shippingRefunded = shippingRefunded;
		this.method = method;
		this.salesPaymentTransactions = salesPaymentTransactions;
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
	public SalesOrder getSalesOrder() {
		return this.salesOrder;
	}

	public void setSalesOrder(SalesOrder salesOrder) {
		this.salesOrder = salesOrder;
	}

	@Column(name = "amount_canceled", precision = 22, scale = 0)
	public Double getAmountCanceled() {
		return this.amountCanceled;
	}

	public void setAmountCanceled(Double amountCanceled) {
		this.amountCanceled = amountCanceled;
	}

	@Column(name = "amount_paid", precision = 22, scale = 0)
	public Double getAmountPaid() {
		return this.amountPaid;
	}

	public void setAmountPaid(Double amountPaid) {
		this.amountPaid = amountPaid;
	}

	@Column(name = "amount_ordered", precision = 22, scale = 0)
	public Double getAmountOrdered() {
		return this.amountOrdered;
	}

	public void setAmountOrdered(Double amountOrdered) {
		this.amountOrdered = amountOrdered;
	}

	@Column(name = "shipping_amount", precision = 22, scale = 0)
	public Double getShippingAmount() {
		return this.shippingAmount;
	}

	public void setShippingAmount(Double shippingAmount) {
		this.shippingAmount = shippingAmount;
	}

	@Column(name = "base_amount_paid_online", precision = 22, scale = 0)
	public Double getBaseAmountPaidOnline() {
		return this.baseAmountPaidOnline;
	}

	public void setBaseAmountPaidOnline(Double baseAmountPaidOnline) {
		this.baseAmountPaidOnline = baseAmountPaidOnline;
	}

	@Column(name = "base_amount_refunded_online", precision = 22, scale = 0)
	public Double getBaseAmountRefundedOnline() {
		return this.baseAmountRefundedOnline;
	}

	public void setBaseAmountRefundedOnline(Double baseAmountRefundedOnline) {
		this.baseAmountRefundedOnline = baseAmountRefundedOnline;
	}

	@Column(name = "shipping_refunded", precision = 22, scale = 0)
	public Double getShippingRefunded() {
		return this.shippingRefunded;
	}

	public void setShippingRefunded(Double shippingRefunded) {
		this.shippingRefunded = shippingRefunded;
	}

	@Column(name = "method")
	public String getMethod() {
		return this.method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "salesOrderPayment")
	public Set<SalesPaymentTransaction> getSalesPaymentTransactions() {
		return this.salesPaymentTransactions;
	}

	public void setSalesPaymentTransactions(Set<SalesPaymentTransaction> salesPaymentTransactions) {
		this.salesPaymentTransactions = salesPaymentTransactions;
	}

}
