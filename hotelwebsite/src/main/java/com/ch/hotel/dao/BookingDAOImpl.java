package com.ch.hotel.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.hotel.model.Booking;

@Repository
public class BookingDAOImpl implements BookingDAO{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public int booking(Booking bk) {
		return sst.insert("bookns.booking", bk);
	}

	public List<Booking> select(String member_id) {
		return sst.selectList("bookns.select", member_id);
	}

	@Override
	public int delete(String member_id) {
		return sst.update("bookns.delete", member_id);
	}
	public List<Booking> list(Booking booking) {
		return sst.selectList("bookns.list", booking);
	}
	

}
