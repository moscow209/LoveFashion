package com.example.entity;
// Generated Jan 4, 2016 1:12:11 AM by Hibernate Tools 4.3.1

import java.util.Date;
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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Salesrule generated by hbm2java
 */
@Entity
@Table(name = "salesrule", catalog = "lovefashion1")
public class Salesrule implements java.io.Serializable {

	private Integer ruleId;
	private String name;
	private String description;
	private Date fromDate;
	private Date toDate;
	private int usesPerCustomer;
	private short isActive;
	private String conditionsSerialized;
	private String actionsSerialized;
	private String simpleAction;
	private double discountAmount;
	private Integer discountQty;
	private int discountStep;
	private short simpleFreeShipping;
	private short applyToShipping;
	private short couponType;
	private Set<SalesruleCoupon> salesruleCoupons = new HashSet<SalesruleCoupon>(0);
	private Set<CustomerGroup> customerGroups = new HashSet<CustomerGroup>(0);
	private Set<SalesruleCustomer> salesruleCustomers = new HashSet<SalesruleCustomer>(0);

	public Salesrule() {
	}

	public Salesrule(int usesPerCustomer, short isActive, double discountAmount, int discountStep,
			short simpleFreeShipping, short applyToShipping, short couponType) {
		this.usesPerCustomer = usesPerCustomer;
		this.isActive = isActive;
		this.discountAmount = discountAmount;
		this.discountStep = discountStep;
		this.simpleFreeShipping = simpleFreeShipping;
		this.applyToShipping = applyToShipping;
		this.couponType = couponType;
	}

	public Salesrule(String name, String description, Date fromDate, Date toDate, int usesPerCustomer, short isActive,
			String conditionsSerialized, String actionsSerialized, String simpleAction, double discountAmount,
			Integer discountQty, int discountStep, short simpleFreeShipping, short applyToShipping, short couponType,
			Set<SalesruleCoupon> salesruleCoupons, Set<CustomerGroup> customerGroups,
			Set<SalesruleCustomer> salesruleCustomers) {
		this.name = name;
		this.description = description;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.usesPerCustomer = usesPerCustomer;
		this.isActive = isActive;
		this.conditionsSerialized = conditionsSerialized;
		this.actionsSerialized = actionsSerialized;
		this.simpleAction = simpleAction;
		this.discountAmount = discountAmount;
		this.discountQty = discountQty;
		this.discountStep = discountStep;
		this.simpleFreeShipping = simpleFreeShipping;
		this.applyToShipping = applyToShipping;
		this.couponType = couponType;
		this.salesruleCoupons = salesruleCoupons;
		this.customerGroups = customerGroups;
		this.salesruleCustomers = salesruleCustomers;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "rule_id", unique = true, nullable = false)
	public Integer getRuleId() {
		return this.ruleId;
	}

	public void setRuleId(Integer ruleId) {
		this.ruleId = ruleId;
	}

	@Column(name = "name")
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "from_date", length = 10)
	public Date getFromDate() {
		return this.fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "to_date", length = 10)
	public Date getToDate() {
		return this.toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	@Column(name = "uses_per_customer", nullable = false)
	public int getUsesPerCustomer() {
		return this.usesPerCustomer;
	}

	public void setUsesPerCustomer(int usesPerCustomer) {
		this.usesPerCustomer = usesPerCustomer;
	}

	@Column(name = "is_active", nullable = false)
	public short getIsActive() {
		return this.isActive;
	}

	public void setIsActive(short isActive) {
		this.isActive = isActive;
	}

	@Column(name = "conditions_serialized", length = 16777215)
	public String getConditionsSerialized() {
		return this.conditionsSerialized;
	}

	public void setConditionsSerialized(String conditionsSerialized) {
		this.conditionsSerialized = conditionsSerialized;
	}

	@Column(name = "actions_serialized", length = 16777215)
	public String getActionsSerialized() {
		return this.actionsSerialized;
	}

	public void setActionsSerialized(String actionsSerialized) {
		this.actionsSerialized = actionsSerialized;
	}

	@Column(name = "simple_action", length = 32)
	public String getSimpleAction() {
		return this.simpleAction;
	}

	public void setSimpleAction(String simpleAction) {
		this.simpleAction = simpleAction;
	}

	@Column(name = "discount_amount", nullable = false, precision = 22, scale = 0)
	public double getDiscountAmount() {
		return this.discountAmount;
	}

	public void setDiscountAmount(double discountAmount) {
		this.discountAmount = discountAmount;
	}

	@Column(name = "discount_qty")
	public Integer getDiscountQty() {
		return this.discountQty;
	}

	public void setDiscountQty(Integer discountQty) {
		this.discountQty = discountQty;
	}

	@Column(name = "discount_step", nullable = false)
	public int getDiscountStep() {
		return this.discountStep;
	}

	public void setDiscountStep(int discountStep) {
		this.discountStep = discountStep;
	}

	@Column(name = "simple_free_shipping", nullable = false)
	public short getSimpleFreeShipping() {
		return this.simpleFreeShipping;
	}

	public void setSimpleFreeShipping(short simpleFreeShipping) {
		this.simpleFreeShipping = simpleFreeShipping;
	}

	@Column(name = "apply_to_shipping", nullable = false)
	public short getApplyToShipping() {
		return this.applyToShipping;
	}

	public void setApplyToShipping(short applyToShipping) {
		this.applyToShipping = applyToShipping;
	}

	@Column(name = "coupon_type", nullable = false)
	public short getCouponType() {
		return this.couponType;
	}

	public void setCouponType(short couponType) {
		this.couponType = couponType;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "salesrule")
	public Set<SalesruleCoupon> getSalesruleCoupons() {
		return this.salesruleCoupons;
	}

	public void setSalesruleCoupons(Set<SalesruleCoupon> salesruleCoupons) {
		this.salesruleCoupons = salesruleCoupons;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "salesrule_customer_group", catalog = "lovefashion1", joinColumns = {
			@JoinColumn(name = "rule_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "customer_group_id", nullable = false, updatable = false) })
	public Set<CustomerGroup> getCustomerGroups() {
		return this.customerGroups;
	}

	public void setCustomerGroups(Set<CustomerGroup> customerGroups) {
		this.customerGroups = customerGroups;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "salesrule")
	public Set<SalesruleCustomer> getSalesruleCustomers() {
		return this.salesruleCustomers;
	}

	public void setSalesruleCustomers(Set<SalesruleCustomer> salesruleCustomers) {
		this.salesruleCustomers = salesruleCustomers;
	}

}
