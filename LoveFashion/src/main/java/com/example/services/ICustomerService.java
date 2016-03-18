package com.example.services;

import java.util.List;

import com.example.entity.CustomerEntity;

public interface ICustomerService {

	public CustomerEntity findCustomerByEmail(String email, String password);

	public CustomerEntity registerCustomer(CustomerEntity customer);

	public CustomerEntity getCustomer(Integer customerId);

	public Integer deleteCustomer(Integer customerId);

	public CustomerEntity updateCustomer(CustomerEntity customer);

	public List<CustomerEntity> getListCustomer(Integer limit, Integer page);

}
