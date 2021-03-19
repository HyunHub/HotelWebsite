package com.ch.hotel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.hotel.dao.RestaurantDAO;
import com.ch.hotel.model.Restaurant;

@Service
public class RestaurantServiceImpl implements RestaurantService {
	
	@Autowired
	private RestaurantDAO rd;

	@Override
	public void restaurant_insert(Restaurant rt) {
		rd.restaurant_insert(rt);
	}

	@Override
	public Restaurant select(int restaurant_num) {
		return rd.select(restaurant_num);
	}

	@Override
	public int delete(int restaurant_num) {
		return rd.delete(restaurant_num);
	}

	@Override
	public int edit(int restaurant_num) {
		return rd.edit(restaurant_num);
	}



}
