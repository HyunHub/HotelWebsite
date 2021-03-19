package com.ch.hotel.dao;

import java.util.HashMap;
import java.util.List;

import com.ch.hotel.model.Booking;
import com.ch.hotel.model.Meeting;
import com.ch.hotel.model.Meeting_Book;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room_Book;
import com.ch.hotel.model.Wedding_Book;

public interface MeetingDao {

	Meeting select(int met_num);

	int insert(Meeting_Book meeting_book);

	Member selct(String member_id);

	Meeting_Book selectmbk(Meeting_Book meeting_book);

	Meeting_Book slcbk(HashMap<String, String> methash);

	List<Meeting_Book> list(Meeting_Book meeting_book);

	Wedding_Book slcwk(HashMap<String, String> wedhash);

	Booking slcrk(HashMap<String, String> resthash);

	Meeting_Book selectmk(String member_id);

	Wedding_Book selectwk(String member_id);

	Booking selectrk(String member_id);

	int delete(String member_id);

	Room_Book selectrb(String member_id);

	Room_Book slcok(HashMap<String, String> romhash);

}
