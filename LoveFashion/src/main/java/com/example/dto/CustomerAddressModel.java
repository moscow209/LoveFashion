package com.example.dto;

public class CustomerAddressModel {

	private Integer entityId;
	private short isActive;
	private String street;
	private String city;
	private String region;
	private String regionId;
	private String country;
	private String countryId;
	private String firstname;
	private String lastname;
	private String phone;

	public CustomerAddressModel() {
	}

	public CustomerAddressModel(Integer entityId, short isActive,
			String street, String city, String region, String regionId,
			String country, String countryId, String firstname,
			String lastname, String phone) {
		this.entityId = entityId;
		this.isActive = isActive;
		this.street = street;
		this.city = city;
		this.region = region;
		this.regionId = regionId;
		this.country = country;
		this.countryId = countryId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.phone = phone;
	}

	public Integer getEntityId() {
		return entityId;
	}

	public void setEntityId(Integer entityId) {
		this.entityId = entityId;
	}

	public short getIsActive() {
		return isActive;
	}

	public void setIsActive(short isActive) {
		this.isActive = isActive;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
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

}
