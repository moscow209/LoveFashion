package com.example.repository;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.example.entity.CategoryEntity;

@Repository
public class CategoriesRepository extends AbstractRepository<CategoryEntity>
		implements ICategoriesRepository {

	@SuppressWarnings("unchecked")
	public List<CategoryEntity> getAllCategoriesByOrders() {
		// TODO Auto-generated method stub
		Query query = getSession().createQuery(
				"from CategoryEntity where isActive = 1 and parentId is not null "
						+ "and includeInMenu = 1 order by parent_id, position asc");
		return query.list();
	}

	public CategoryEntity getCategoryByName(String name) {
		// TODO Auto-generated method stub
		Query query = getSession().createQuery("from CategoryEntity where urlKey=:name");
		query.setString("name", name);
		return (CategoryEntity) query.uniqueResult();
	}

}
