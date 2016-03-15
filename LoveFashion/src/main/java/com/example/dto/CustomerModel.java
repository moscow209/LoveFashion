package com.example.dto;

import java.util.Date;


public class CustomerModel {

	private Integer entityId;
	private Short customerGroupId;
	private String firstname;
	private String lastname;
	private String email;
	private String password;
	private Integer score;
	private short isActive;
	private Integer defaultBilling;
	private Integer defaultShipping;
	private short lognum;
	private Date createdAt;
	private Date logdate;

	public CustomerModel() {

	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public short getIsActive() {
		return isActive;
	}

	public void setIsActive(short isActive) {
		this.isActive = isActive;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getEntityId() {
		return entityId;
	}

	public void setEntityId(Integer entityId) {
		this.entityId = entityId;
	}

	public Short getCustomerGroupId() {
		return customerGroupId;
	}

	public void setCustomerGroupId(Short customerGroupId) {
		this.customerGroupId = customerGroupId;
	}

	public Integer getDefaultBilling() {
		return defaultBilling;
	}

	public void setDefaultBilling(Integer defaultBilling) {
		this.defaultBilling = defaultBilling;
	}

	public Integer getDefaultShipping() {
		return defaultShipping;
	}

	public void setDefaultShipping(Integer defaultShipping) {
		this.defaultShipping = defaultShipping;
	}

	public short getLognum() {
		return lognum;
	}

	public void setLognum(short lognum) {
		this.lognum = lognum;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getLogdate() {
		return logdate;
	}

	public void setLogdate(Date logdate) {
		this.logdate = logdate;
	}
}
