package com.ch.hotel.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.hotel.model.Restaurant;

@Repository
public class RestaurantDAOImpl implements RestaurantDAO {
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void restaurant_insert(Restaurant rt) {
		sst.insert("restns.restaurant_insert", rt);
	}

	@Override
	public Restaurant select(int restaurant_num) {
		return sst.selectOne("restns.select", restaurant_num);
	}

	@Override
	public int delete(int restaurant_num) {
		return sst.update("restns.delete", restaurant_num);
	}

	@Override
	public int edit(int restaurant_num) {
		return sst.update("restns.edit", restaurant_num);
	}
	

}
