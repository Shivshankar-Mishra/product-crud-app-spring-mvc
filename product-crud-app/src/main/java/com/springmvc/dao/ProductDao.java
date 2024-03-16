package com.springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.model.Product;

@Repository
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void insertProduct(Product p) {
		hibernateTemplate.saveOrUpdate(p);
	}
	@Transactional
	public void deleteProduct(int id) {
		Product p = hibernateTemplate.get(Product.class, id);
		hibernateTemplate.delete(p);
	}
	public Product oneProduct(int id) {
		return hibernateTemplate.get(Product.class, id);
	}
	public List<Product> allProduct(){
		return hibernateTemplate.loadAll(Product.class);
	}

}
