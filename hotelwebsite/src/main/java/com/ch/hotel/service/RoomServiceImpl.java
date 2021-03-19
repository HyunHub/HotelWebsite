package com.ch.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.hotel.dao.RoomDao;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room;
import com.ch.hotel.model.Room_Book;

@Service
public class RoomServiceImpl implements RoomService{
	@Autowired
	private RoomDao rd;
	
	public Room select(int room_id) {
		return rd.select(room_id);
	}
	public Member selct(String member_id) {
		return rd.selct(member_id);
	}
	public Room_Book selectrm(Room_Book room_book) {
		return rd.selectrm(room_book);
	}
	public int insert(Room_Book room_book) {
		return rd.insert(room_book);
	}
	public List<Room_Book> list(Room_Book room_book) {
		return rd.list(room_book);
	}
	public int delete(String member_id) {
		return rd.delete(member_id);
	}
	
	
}
