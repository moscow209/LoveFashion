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
 * TaxCalculation generated by hbm2java
 */
@Entity
@Table(name = "tax_calculation", catalog = "lovefashion1")
public class TaxCalculation implements java.io.Serializable {

	private Integer taxCalculationId;
	private TaxCalculationRate taxCalculationRate;
	private TaxCalculationRule taxCalculationRule;
	private TaxClass taxClass;

	public TaxCalculation() {
	}

	public TaxCalculation(TaxCalculationRate taxCalculationRate, TaxCalculationRule taxCalculationRule,
			TaxClass taxClass) {
		this.taxCalculationRate = taxCalculationRate;
		this.taxCalculationRule = taxCalculationRule;
		this.taxClass = taxClass;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "tax_calculation_id", unique = true, nullable = false)
	public Integer getTaxCalculationId() {
		return this.taxCalculationId;
	}

	public void setTaxCalculationId(Integer taxCalculationId) {
		this.taxCalculationId = taxCalculationId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tax_calculation_rate_id", nullable = false)
	public TaxCalculationRate getTaxCalculationRate() {
		return this.taxCalculationRate;
	}

	public void setTaxCalculationRate(TaxCalculationRate taxCalculationRate) {
		this.taxCalculationRate = taxCalculationRate;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tax_calculation_rule_id", nullable = false)
	public TaxCalculationRule getTaxCalculationRule() {
		return this.taxCalculationRule;
	}

	public void setTaxCalculationRule(TaxCalculationRule taxCalculationRule) {
		this.taxCalculationRule = taxCalculationRule;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tax_class_id", nullable = false)
	public TaxClass getTaxClass() {
		return this.taxClass;
	}

	public void setTaxClass(TaxClass taxClass) {
		this.taxClass = taxClass;
	}

}
