package com.ch.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.hotel.dao.BookingDAO;
import com.ch.hotel.model.Booking;

@Service
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	private BookingDAO bd;
	
	@Override
	public int booking(Booking bk) {
		return bd.booking(bk);
	}

	public List<Booking> select(String member_id) {
		return bd.select(member_id);
	}

	public int delete(String member_id) {
		return bd.delete(member_id);
	}

	public List<Booking> list(Booking booking) {
		return bd.list(booking);
	}
	

}
