package com.example.repository;

import java.util.List;

import com.example.entity.CustomerEntity;

public interface ICustomerRepository extends IRepository<CustomerEntity> {

	public CustomerEntity findCustomerByEmail(String email, String password);

	public boolean existEmail(String email);

	public List<CustomerEntity> getListCustomer(Integer limit, Integer page);

}
