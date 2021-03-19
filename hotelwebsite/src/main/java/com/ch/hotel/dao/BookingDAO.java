package com.ch.hotel.dao;

import java.util.List;

import com.ch.hotel.model.Booking;

public interface BookingDAO {

	public int booking(Booking bk);
	public List<Booking> select(String member_id);
	public int delete(String member_id);
	public List<Booking> list(Booking booking);
	
}
