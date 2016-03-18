package com.example.repository;

import java.io.Serializable;
import java.util.List;

public interface IRepository<T extends Object> {
	public void presist(T t);

	public T get(Serializable id);

	public T load(Serializable id);

	public List<T> getAll();

	public void update(T t);

	public T merge(T t);

	public void delete(T t);

	public void deleteById(Serializable id);

	public void deleteAll();

	public long count();

	public boolean exists(Serializable id);
}
