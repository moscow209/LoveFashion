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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Store generated by hbm2java
 */
@Entity
@Table(name = "store", catalog = "lovefashion1")
public class Store implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Short storeId;
	private String name;
	private short sortOrder;
	private short isActive;
	private Set<SalesOrderItem> salesOrderItems = new HashSet<SalesOrderItem>(0);
	private Set<SalesRevenuesellersAggregatedYearly> salesRevenuesellersAggregatedYearlies = new HashSet<SalesRevenuesellersAggregatedYearly>(
			0);
	private Set<SalesBestsellersAggregatedYearly> salesBestsellersAggregatedYearlies = new HashSet<SalesBestsellersAggregatedYearly>(
			0);
	private Set<Sitemap> sitemaps = new HashSet<Sitemap>(0);
	private Set<SalesInvoice> salesInvoices = new HashSet<SalesInvoice>(0);
	private Set<SalesRevenuesellersAggregatedDaily> salesRevenuesellersAggregatedDailies = new HashSet<SalesRevenuesellersAggregatedDaily>(
			0);
	private Set<SalesOrder> salesOrders = new HashSet<SalesOrder>(0);
	private Set<SalesBestsellersAggregatedMonthly> salesBestsellersAggregatedMonthlies = new HashSet<SalesBestsellersAggregatedMonthly>(
			0);
	private Set<SalesBestsellersAggregatedDaily> salesBestsellersAggregatedDailies = new HashSet<SalesBestsellersAggregatedDaily>(
			0);
	private Set<SalesShipment> salesShipments = new HashSet<SalesShipment>(0);
	private Set<SalesRevenuesellersAggregatedMonthly> salesRevenuesellersAggregatedMonthlies = new HashSet<SalesRevenuesellersAggregatedMonthly>(
			0);
	private Set<SalesCreditmemo> salesCreditmemos = new HashSet<SalesCreditmemo>(0);

	public Store() {
	}

	public Store(String name, short sortOrder, short isActive) {
		this.name = name;
		this.sortOrder = sortOrder;
		this.isActive = isActive;
	}

	public Store(String name, short sortOrder, short isActive, Set<SalesOrderItem> salesOrderItems,
			Set<SalesRevenuesellersAggregatedYearly> salesRevenuesellersAggregatedYearlies,
			Set<SalesBestsellersAggregatedYearly> salesBestsellersAggregatedYearlies, Set<Sitemap> sitemaps,
			Set<SalesInvoice> salesInvoices,
			Set<SalesRevenuesellersAggregatedDaily> salesRevenuesellersAggregatedDailies, Set<SalesOrder> salesOrders,
			Set<SalesBestsellersAggregatedMonthly> salesBestsellersAggregatedMonthlies,
			Set<SalesBestsellersAggregatedDaily> salesBestsellersAggregatedDailies, Set<SalesShipment> salesShipments,
			Set<SalesRevenuesellersAggregatedMonthly> salesRevenuesellersAggregatedMonthlies,
			Set<SalesCreditmemo> salesCreditmemos) {
		this.name = name;
		this.sortOrder = sortOrder;
		this.isActive = isActive;
		this.salesOrderItems = salesOrderItems;
		this.salesRevenuesellersAggregatedYearlies = salesRevenuesellersAggregatedYearlies;
		this.salesBestsellersAggregatedYearlies = salesBestsellersAggregatedYearlies;
		this.sitemaps = sitemaps;
		this.salesInvoices = salesInvoices;
		this.salesRevenuesellersAggregatedDailies = salesRevenuesellersAggregatedDailies;
		this.salesOrders = salesOrders;
		this.salesBestsellersAggregatedMonthlies = salesBestsellersAggregatedMonthlies;
		this.salesBestsellersAggregatedDailies = salesBestsellersAggregatedDailies;
		this.salesShipments = salesShipments;
		this.salesRevenuesellersAggregatedMonthlies = salesRevenuesellersAggregatedMonthlies;
		this.salesCreditmemos = salesCreditmemos;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "store_id", unique = true, nullable = false)
	public Short getStoreId() {
		return this.storeId;
	}

	public void setStoreId(Short storeId) {
		this.storeId = storeId;
	}

	@Column(name = "name", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "sort_order", nullable = false)
	public short getSortOrder() {
		return this.sortOrder;
	}

	public void setSortOrder(short sortOrder) {
		this.sortOrder = sortOrder;
	}

	@Column(name = "is_active", nullable = false)
	public short getIsActive() {
		return this.isActive;
	}

	public void setIsActive(short isActive) {
		this.isActive = isActive;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesOrderItem> getSalesOrderItems() {
		return this.salesOrderItems;
	}

	public void setSalesOrderItems(Set<SalesOrderItem> salesOrderItems) {
		this.salesOrderItems = salesOrderItems;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesRevenuesellersAggregatedYearly> getSalesRevenuesellersAggregatedYearlies() {
		return this.salesRevenuesellersAggregatedYearlies;
	}

	public void setSalesRevenuesellersAggregatedYearlies(
			Set<SalesRevenuesellersAggregatedYearly> salesRevenuesellersAggregatedYearlies) {
		this.salesRevenuesellersAggregatedYearlies = salesRevenuesellersAggregatedYearlies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesBestsellersAggregatedYearly> getSalesBestsellersAggregatedYearlies() {
		return this.salesBestsellersAggregatedYearlies;
	}

	public void setSalesBestsellersAggregatedYearlies(
			Set<SalesBestsellersAggregatedYearly> salesBestsellersAggregatedYearlies) {
		this.salesBestsellersAggregatedYearlies = salesBestsellersAggregatedYearlies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<Sitemap> getSitemaps() {
		return this.sitemaps;
	}

	public void setSitemaps(Set<Sitemap> sitemaps) {
		this.sitemaps = sitemaps;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesInvoice> getSalesInvoices() {
		return this.salesInvoices;
	}

	public void setSalesInvoices(Set<SalesInvoice> salesInvoices) {
		this.salesInvoices = salesInvoices;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesRevenuesellersAggregatedDaily> getSalesRevenuesellersAggregatedDailies() {
		return this.salesRevenuesellersAggregatedDailies;
	}

	public void setSalesRevenuesellersAggregatedDailies(
			Set<SalesRevenuesellersAggregatedDaily> salesRevenuesellersAggregatedDailies) {
		this.salesRevenuesellersAggregatedDailies = salesRevenuesellersAggregatedDailies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesOrder> getSalesOrders() {
		return this.salesOrders;
	}

	public void setSalesOrders(Set<SalesOrder> salesOrders) {
		this.salesOrders = salesOrders;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesBestsellersAggregatedMonthly> getSalesBestsellersAggregatedMonthlies() {
		return this.salesBestsellersAggregatedMonthlies;
	}

	public void setSalesBestsellersAggregatedMonthlies(
			Set<SalesBestsellersAggregatedMonthly> salesBestsellersAggregatedMonthlies) {
		this.salesBestsellersAggregatedMonthlies = salesBestsellersAggregatedMonthlies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesBestsellersAggregatedDaily> getSalesBestsellersAggregatedDailies() {
		return this.salesBestsellersAggregatedDailies;
	}

	public void setSalesBestsellersAggregatedDailies(
			Set<SalesBestsellersAggregatedDaily> salesBestsellersAggregatedDailies) {
		this.salesBestsellersAggregatedDailies = salesBestsellersAggregatedDailies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesShipment> getSalesShipments() {
		return this.salesShipments;
	}

	public void setSalesShipments(Set<SalesShipment> salesShipments) {
		this.salesShipments = salesShipments;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesRevenuesellersAggregatedMonthly> getSalesRevenuesellersAggregatedMonthlies() {
		return this.salesRevenuesellersAggregatedMonthlies;
	}

	public void setSalesRevenuesellersAggregatedMonthlies(
			Set<SalesRevenuesellersAggregatedMonthly> salesRevenuesellersAggregatedMonthlies) {
		this.salesRevenuesellersAggregatedMonthlies = salesRevenuesellersAggregatedMonthlies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "store")
	public Set<SalesCreditmemo> getSalesCreditmemos() {
		return this.salesCreditmemos;
	}

	public void setSalesCreditmemos(Set<SalesCreditmemo> salesCreditmemos) {
		this.salesCreditmemos = salesCreditmemos;
	}

}
