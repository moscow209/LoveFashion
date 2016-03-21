package com.example.repository;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.type.LongType;
import org.springframework.stereotype.Repository;

import com.example.contrains.GlobalSetting;
import com.example.entity.GeneralEntity;
import com.example.entity.ProductEntity;

@Repository
public class ProductRepository extends AbstractRepository<GeneralEntity>
		implements IProductRepository {

	@SuppressWarnings("unchecked")
	public List<ProductEntity> getListProductByCate(Integer cate, Integer start) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select* from product_entity pe "
				+ "inner join category_product cp "
				+ "on pe.entity_id = cp.product_id and cp.category_id=:cate "
				+ "where pe.parentage=:type");
		query.setInteger("cate", cate);
		query.setString("type", "parent");
		query.addEntity(ProductEntity.class);
		query.setFirstResult(start);
		query.setMaxResults(GlobalSetting.ITEM_PER_PAGE);
		return query.list();
	}

	public long countProductByCate(Integer cate) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select count(*) as count from product_entity pe "
				+ "inner join category_product cp "
				+ "on pe.entity_id = cp.product_id and cp.category_id=:cate "
				+ "where pe.parentage=:type").addScalar("count", LongType.INSTANCE);
		query.setInteger("cate", cate);
		query.setString("type", "parent");
		return (Long) query.uniqueResult();
	}

	@SuppressWarnings("rawtypes")
	public List<String> getListColorByCate(Integer cate) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select distinct pe1.color from product_entity pe1 "
				+ "where pe1.parent_sku in (select pe.sku from product_entity pe inner join category_product cp "
				+ "on pe.entity_id = cp.product_id and cp.category_id=:cate where pe.parentage=:type)");
		query.setInteger("cate", cate);
		query.setString("type", "parent");
		List results = query.list();
		List<String> colors = new ArrayList<String>();
		for (Iterator it = results.iterator(); it.hasNext(); ) {
		    colors.add((String) it.next());
		}
		return colors;
	}

	@SuppressWarnings("rawtypes")
	public List<String> getListSizeByCate(Integer cate) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select distinct pe1.size from product_entity pe1 "
				+ "where pe1.parent_sku in (select pe.sku from product_entity pe inner join category_product cp "
				+ "on pe.entity_id = cp.product_id and cp.category_id=:cate where pe.parentage=:type)");
		query.setInteger("cate", cate);
		query.setString("type", "parent");
		List results = query.list();
		List<String> sizes = new ArrayList<String>();
		for (Iterator it = results.iterator(); it.hasNext(); ) {
		    sizes.add((String) it.next());
		}
		return sizes;
	}

	@SuppressWarnings("rawtypes")
	public List<String> getListManufacturerByCate(Integer cate) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select distinct ma.manufacturer from product_entity pe1 "
				+ "inner join manufacturer ma on pe1.manufacturer = ma.entity_id "
				+ "where pe1.parent_sku in (select pe.sku from product_entity pe inner join category_product cp "
				+ "on pe.entity_id = cp.product_id and cp.category_id=:cate where pe.parentage=:type)");
		query.setInteger("cate", cate);
		query.setString("type", "parent");
		List results = query.list();
		List<String> manufacturers = new ArrayList<String>();
		for (Iterator it = results.iterator(); it.hasNext(); ) {
		    manufacturers.add((String) it.next());
		}
		return manufacturers;
	}

	@SuppressWarnings("rawtypes")
	public List<String> getListSubCateByCate(Integer cate) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select distinct ma.manufacturer from product_entity pe1 "
				+ "inner join manufacturer ma on pe1.manufacturer = ma.entity_id "
				+ "where pe1.parent_sku in (select pe.sku from product_entity pe inner join category_product cp "
				+ "on pe.entity_id = cp.product_id and cp.category_id=:cate where pe.parentage=:type)");
		query.setInteger("cate", cate);
		query.setString("type", "parent");
		List results = query.list();
		List<String> manufacturers = new ArrayList<String>();
		for (Iterator it = results.iterator(); it.hasNext(); ) {
		    manufacturers.add((String) it.next());
		}
		return manufacturers;
	}

}
