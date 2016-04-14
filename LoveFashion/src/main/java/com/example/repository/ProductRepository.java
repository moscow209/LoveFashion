package com.example.repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.type.LongType;
import org.springframework.stereotype.Repository;

import com.example.contrains.GlobalSetting;
import com.example.entity.CategoryEntity;
import com.example.entity.GeneralEntity;
import com.example.entity.ProductEntity;

@Repository
public class ProductRepository extends AbstractRepository<GeneralEntity>
		implements IProductRepository {

	private StringBuilder builderQuery(String color, String size, String manu,
			String price, String order, String dir) {
		StringBuilder builder = new StringBuilder(
				"select param from product_entity pe "
						+ "inner join category_product cp "
						+ "on pe.entity_id = cp.product_id "
						+ "inner join category_entity ce "
						+ "on cp.category_id = ce.entity_id and path like :path "
						+ "where pe.parentage=:type");
		if (color != null && "".equals(color)) {
			builder.append(" and pe.color in (:colors)");
		}
		if (size != null && "".equals(size)) {
			builder.append(" and pe.size in (:sizes)");
		}
		if (manu != null && "".equals(manu)) {
			builder.append(" and pe.manufacturer in (select entity_id where manufacturer in (:manus)");
		}
		if (price != null && "".equals(price)) {
			if (price.split(GlobalSetting.SPACE_PRICE).length == 2) {
				builder.append(" and pe.price >=:min and pe.price <=:max");
			}
		}
		if(order != null && 
				Arrays.asList(GlobalSetting.FILTER_ORDER).contains(order)){
			builder.append(" order by " + order);
			if(dir != null && 
				Arrays.asList(GlobalSetting.FILTER_DIR).contains(dir)){
				builder.append(" " + dir);
			}
		}
		return builder;
	}

	private SQLQuery createQuery(CategoryEntity cate, String builder,
			String color, String size, String manu, String price) {
		SQLQuery query = getSession().createSQLQuery(builder);
		if (cate.getParentId() == null) {
			query.setString("path", cate.getEntityId() + "/%");
		} else {
			query.setString("path", "%/" + cate.getEntityId());
		}
		if (color != null && "".equals(color)) {
			query.setParameterList("colors",
					color.split(GlobalSetting.SPACE_ATTR));
		}
		if (size != null && "".equals(size)) {
			query.setParameterList("sizes",
					size.split(GlobalSetting.SPACE_ATTR));
		}
		if (manu != null && "".equals(manu)) {
			query.setParameterList("manus",
					manu.split(GlobalSetting.SPACE_ATTR));
		}
		if (price != null && "".equals(price)) {
			String[] prices = price.split(GlobalSetting.SPACE_PRICE);
			if (prices.length == 2) {
				query.setInteger("min", Integer.parseInt(prices[0]));
				query.setInteger("max", Integer.parseInt(prices[1]));
			}
		}
		return query;
	}

	@SuppressWarnings("unchecked")
	public List<ProductEntity> getListProductByCate(CategoryEntity cate,
			String color, String size, String manu, String price,
			Integer start, Integer limit, String dir, String order) {
		// TODO Auto-generated method stub
		String builder = builderQuery(color, size, manu, price, order, dir).toString()
				.replace("param", "pe.*");
		SQLQuery query = createQuery(cate, builder, color, size, manu, price);
		query.setString("type", "parent");
		query.addEntity(ProductEntity.class);
		query.setFirstResult(start);
		query.setMaxResults(limit);
		return query.list();
	}

	public long countProductByCate(CategoryEntity cate, String color,
			String size, String manu, String price, String dir, String order) {
		// TODO Auto-generated method stub
		String builder = builderQuery(color, size, manu, price, order, dir).toString()
				.replace("param", "count(*) as count");
		SQLQuery query = createQuery(cate, builder, color, size, manu, price);
		query.setString("type", "parent");
		query.addScalar("count", LongType.INSTANCE);
		return (Long) query.uniqueResult();
	}

	@SuppressWarnings("rawtypes")
	public List<String> getListColorByCate(List<String> products) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select distinct pe1.color "
				+ "from product_entity pe1 "
				+ "where pe1.parent_sku in (:products)");
		query.setParameterList("products", products);
		List results = query.list();
		List<String> colors = new ArrayList<String>();
		for (Iterator it = results.iterator(); it.hasNext(); ) {
		    colors.add((String) it.next());
		}
		return colors;
	}

	@SuppressWarnings("rawtypes")
	public List<String> getListSizeByCate(List<String> products) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select distinct pe1.size "
				+ "from product_entity pe1 "
				+ "where pe1.parent_sku in (:products)");
		query.setParameterList("products", products);
		List results = query.list();
		List<String> sizes = new ArrayList<String>();
		for (Iterator it = results.iterator(); it.hasNext(); ) {
		    sizes.add((String) it.next());
		}
		return sizes;
	}

	@SuppressWarnings("rawtypes")
	public List<String> getListManufacturerByCate(List<String> products) {
		// TODO Auto-generated method stub
		SQLQuery query = getSession().createSQLQuery("select distinct ma.manufacturer "
				+ "from product_entity pe1 "
				+ "inner join manufacturer ma on pe1.manufacturer = ma.entity_id "
				+ "where pe1.parent_sku in (:products)");
		query.setParameterList("products", products);
		List results = query.list();
		List<String> manus = new ArrayList<String>();
		for (Iterator it = results.iterator(); it.hasNext(); ) {
		    manus.add((String) it.next());
		}
		return manus;
	}

	

}
