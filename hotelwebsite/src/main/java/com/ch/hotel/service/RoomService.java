package com.ch.hotel.service;

import java.util.List;

import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room;
import com.ch.hotel.model.Room_Book;

public interface RoomService {

	Room select(int room_id);

	Member selct(String member_id);

	Room_Book selectrm(Room_Book room_book);

	int insert(Room_Book room_book);

	List<Room_Book> list(Room_Book room_book);

	int delete(String member_id);

	
}
