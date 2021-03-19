package com.ch.hotel.service;

import com.ch.hotel.model.Restaurant;

public interface RestaurantService {

	public void restaurant_insert(Restaurant rt);
	public Restaurant select(int restaurant_num);
	public int delete(int restaurant_num);
	public int edit(int restaurant_num);
	
}
