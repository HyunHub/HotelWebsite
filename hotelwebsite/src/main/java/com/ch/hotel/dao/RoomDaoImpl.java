package com.ch.hotel.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room;
import com.ch.hotel.model.Room_Book;

@Repository
public class RoomDaoImpl implements RoomDao{
	@Autowired
	private SqlSessionTemplate sst;
	
	public Room select(int room_id) {
		return sst.selectOne("roomns.select", room_id);
	}
	public Member selct(String member_id) {
		return sst.selectOne("roomns.selct", member_id);
	}
	public Room_Book selectrm(Room_Book room_book) {
		return sst.selectOne("roomns.selectrm", room_book);
	}
	public int insert(Room_Book room_book) {
		return sst.insert("roomns.insert", room_book);
	}
	public List<Room_Book> list(Room_Book room_book) {
		return sst.selectList("roomns.list", room_book);
	}
	public int delete(String member_id) {
		return sst.delete("roomns.delete", member_id);
	}
	
}
