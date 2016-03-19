package com.example.dto;

public class AddressAccountModel {

	private Integer entityId;
	private String street;
	private String region;
	private String regionId;
	private String country;
	private String countryId;
	private String firstname;
	private String lastname;
	private String phone;
	private boolean defaultBillingAddress;
	private boolean defaultShippingAddress;

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCountryId() {
		return countryId;
	}

	public void setCountryId(String countryId) {
		this.countryId = countryId;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public boolean isDefaultBillingAddress() {
		return defaultBillingAddress;
	}

	public void setDefaultBillingAddress(boolean defaultBillingAddress) {
		this.defaultBillingAddress = defaultBillingAddress;
	}

	public boolean isDefaultShippingAddress() {
		return defaultShippingAddress;
	}

	public void setDefaultShippingAddress(boolean defaultShippingAddress) {
		this.defaultShippingAddress = defaultShippingAddress;
	}

	public Integer getEntityId() {
		return entityId;
	}

	public void setEntityId(Integer entityId) {
		this.entityId = entityId;
	}

}