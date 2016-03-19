package com.example.repository;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractRepository<T extends Object> implements
		IRepository<T> {

	@Autowired
	private SessionFactory sessionFactory;
	private Class<T> domainClass;

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	private Class<T> getDomainClass() {
		if (domainClass == null) {
			ParameterizedType thisType = (ParameterizedType) getClass()
					.getGenericSuperclass();
			domainClass = (Class<T>) thisType.getActualTypeArguments()[0];
		}
		return domainClass;
	}

	private String getDomainClassName() {
		return getDomainClass().getName();
	}

	public void presist(T t) {
		// TODO Auto-generated method stub
		getSession().persist(t);;

	}
	
	public Integer save(T t) {
		// TODO Auto-generated method stub
		return (Integer) getSession().save(t);

	}

	@SuppressWarnings("unchecked")
	public T get(Serializable id) {
		// TODO Auto-generated method stub
		return (T) getSession().get(getDomainClass(), id);
	}

	@SuppressWarnings("unchecked")
	public T load(Serializable id) {
		// TODO Auto-generated method stub
		return (T) getSession().load(getDomainClass(), id);
	}

	@SuppressWarnings("unchecked")
	public List<T> getAll() {
		// TODO Auto-generated method stub
		return getSession().createQuery("from " + getDomainClassName()).list();
	}

	public void update(T t) {
		// TODO Auto-generated method stub
		getSession().update(t);
	}

	public void delete(T t) {
		// TODO Auto-generated method stub
		getSession().delete(t);
	}

	public void deleteById(Serializable id) {
		// TODO Auto-generated method stub
		getSession().delete(load(id));
	}

	public void deleteAll() {
		// TODO Auto-generated method stub
		getSession().createQuery("delete " + getDomainClassName())
				.executeUpdate();
	}

	public long count() {
		// TODO Auto-generated method stub
		return (Long) getSession().createQuery(
				"select count(*) from " + getDomainClassName()).uniqueResult();
	}

	public boolean exists(Serializable id) {
		// TODO Auto-generated method stub
		return (get(id) != null);
	}

	@SuppressWarnings("unchecked")
	public T merge(T t) {
		// TODO Auto-generated method stub
		return (T) getSession().merge(t);
	}

}
