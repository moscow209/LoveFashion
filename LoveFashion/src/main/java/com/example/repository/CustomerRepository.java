package com.example.repository;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.example.entity.CustomerEntity;

@Repository
public class CustomerRepository extends AbstractRepository<CustomerEntity>
		implements ICustomerRepository {

	public CustomerEntity findCustomerByEmail(String email, String password) {
		// TODO Auto-generated method stub
		Query query = getSession()
				.createQuery("from CustomerEntity where email=:email and password=:password and isActive = 1");
		query.setString("email", email);
		query.setString("password", password);
		return (CustomerEntity) query.uniqueResult();
	}

	public boolean existEmail(String email) {
		// TODO Auto-generated method stub
		Query query = getSession().createQuery(
				"from CustomerEntity where email=:email");
		query.setString("email", email);
		CustomerEntity entity = (CustomerEntity) query.uniqueResult();
		getSession().evict(entity);
		return entity == null ? false : true;
	}

	@SuppressWarnings("unchecked")
	public List<CustomerEntity> getListCustomer(Integer limit, Integer page) {
		// TODO Auto-generated method stub
		Query query = getSession().createQuery(
				"from CustomerEntity order by entityId");
		query.setMaxResults(limit);
		query.setFirstResult(page * limit);
		return query.list();
	}

}
