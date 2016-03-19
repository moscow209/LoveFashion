package com.example.services;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.entity.CustomerAddressEntity;
import com.example.entity.CustomerEntity;
import com.example.entity.CustomerGroup;
import com.example.repository.ICustomerAddressRepository;
import com.example.repository.ICustomerRepository;

@Service
public class CustomerService implements ICustomerService {

	@Autowired
	private ICustomerRepository customerRepository;

	@Autowired
	private ICustomerAddressRepository addressRepository;
	
	@Transactional
	public CustomerEntity findCustomerByEmail(String email, String password) {
		// TODO Auto-generated method stub
		return customerRepository.findCustomerByEmail(email, password);
	}

	@Transactional
	public CustomerEntity registerCustomer(CustomerEntity customer) {
		// TODO Auto-generated method stub
		if (!customerRepository.existEmail(customer.getEmail())) {
			customer.setCreatedAt(new Date());
			customer.setUpdatedAt(new Date());
			customer.setLognum((short) 0);
			customer.setIsActive((short) 1);
			customer.setCustomerGroup(new CustomerGroup((short) 1));
			customerRepository.presist(customer);
			return customer;
		}
		return null;
	}

	@Transactional
	public CustomerEntity getCustomer(Integer customerId) {
		// TODO Auto-generated method stub
		return customerRepository.get(customerId);
	}

	@Transactional
	public Integer deleteCustomer(Integer customerId) {
		// TODO Auto-generated method stub
		CustomerEntity customer = customerRepository.get(customerId);
		if (customer != null) {
			customerRepository.delete(customer);
			return customerId;
		}
		return null;
	}

	@Transactional
	public CustomerEntity updateCustomer(CustomerEntity update){
		// TODO Auto-generated method stub
		CustomerEntity customer = customerRepository.get(update.getEntityId());
		if (customer != null) {
			update.setUpdatedAt(new Date());
			return customerRepository.merge(update);
		}
		return null;
	}

	@Transactional
	public List<CustomerEntity> getListCustomer(Integer limit, Integer page) {
		// TODO Auto-generated method stub
		return customerRepository.getListCustomer(limit, page);
	}

	@Transactional
	public CustomerAddressEntity getCustomerAddress(Integer id) {
		// TODO Auto-generated method stub
		return addressRepository.get(id);
	}

	@Transactional
	public List<CustomerAddressEntity> findAdditionalAddress(int customerId,
			Integer defaultBilling, Integer defaultShipping) {
		// TODO Auto-generated method stub
		return addressRepository.findAdditionalAddress(customerId, defaultBilling, defaultShipping);
	}

	@Transactional
	public boolean existAddressByCustormer(Integer customerId) {
		// TODO Auto-generated method stub
		return addressRepository.existAddressByCustormer(customerId);
	}

	@Transactional
	public Integer saveCustomerAddress(CustomerAddressEntity address,
			CustomerEntity customer) {
		address.setCustomerEntity(customer);
		return addressRepository.save(address);
	}
	
	@Transactional
	public Integer deleteCustomerAddress(Integer id){
		if(addressRepository.exists(id)){
			addressRepository.deleteById(id);
			return id;
		}
		return null;
	}
}
