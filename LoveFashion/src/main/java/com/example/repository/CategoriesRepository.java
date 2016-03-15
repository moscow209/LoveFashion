package com.example.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import com.example.entity.CategoryEntity;

@Repository
public class CategoriesRepository extends AbstractRepository<CategoryEntity>
		implements ICategoriesRepository {

	@SuppressWarnings("unchecked")
	public List<CategoryEntity> getAllCategoriesByOrders() {
		// TODO Auto-generated method stub
		Query query = getSession().createQuery(
				"from CategoryEntity where isActive = 1 and parentId is null"
						+ "and includeInMenu = 1 order by parent_id, position");
		return query.list();
	}

	@SuppressWarnings("unchecked")
	public List<CategoryEntity> getSubCategories(Integer parent) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery(
				"select* from category_entity "
						+ "where parent_id=:parent order by position");
		query.setInteger("parent", parent);
		query.addEntity(CategoryEntity.class);
		return query.list();
	}
}
