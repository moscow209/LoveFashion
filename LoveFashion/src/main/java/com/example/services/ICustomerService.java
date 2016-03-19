package com.example.services;

import java.util.List;

import com.example.entity.CustomerAddressEntity;
import com.example.entity.CustomerEntity;

public interface ICustomerService {

	public CustomerEntity findCustomerByEmail(String email, String password);

	public CustomerEntity registerCustomer(CustomerEntity customer);

	public CustomerEntity getCustomer(Integer customerId);

	public Integer deleteCustomer(Integer customerId);

	public CustomerEntity updateCustomer(CustomerEntity customer);

	public List<CustomerEntity> getListCustomer(Integer limit, Integer page);
	
	public CustomerAddressEntity getCustomerAddress(Integer id);
	
	public List<CustomerAddressEntity> findAdditionalAddress(int customerId,
			Integer defaultBilling, Integer defaultShipping);

	public boolean existAddressByCustormer(Integer customerId);
	
	public Integer saveCustomerAddress(CustomerAddressEntity address, CustomerEntity customer);
	
	public Integer deleteCustomerAddress(Integer id);
}
