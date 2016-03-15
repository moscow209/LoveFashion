package com.example.dto;

public class CustomerGroupModel {

	private Short customerGroupId;
	private String customerGroupCode;
	private Integer limitScore;
	
	
	public CustomerGroupModel(){
		
	}
	
	public CustomerGroupModel(Short customerGroupId, String customerGroupCode,
			Integer limitScore) {
		super();
		this.customerGroupId = customerGroupId;
		this.customerGroupCode = customerGroupCode;
		this.limitScore = limitScore;
	}

	public Short getCustomerGroupId() {
		return customerGroupId;
	}
	public void setCustomerGroupId(Short customerGroupId) {
		this.customerGroupId = customerGroupId;
	}
	public String getCustomerGroupCode() {
		return customerGroupCode;
	}
	public void setCustomerGroupCode(String customerGroupCode) {
		this.customerGroupCode = customerGroupCode;
	}
	public Integer getLimitScore() {
		return limitScore;
	}
	public void setLimitScore(Integer limitScore) {
		this.limitScore = limitScore;
	}
	
}
