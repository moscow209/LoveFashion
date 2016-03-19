package com.example.repository;

import java.util.List;

import com.example.entity.CustomerAddressEntity;

public interface ICustomerAddressRepository extends IRepository<CustomerAddressEntity>{
	public List<CustomerAddressEntity> findAdditionalAddress(int customerId,
			Integer defaultBilling, Integer defaultShipping);
	
	public boolean existAddressByCustormer(Integer customerId);
}
