package com.ch.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.hotel.dao.MeetingDao;
import com.ch.hotel.model.Booking;
import com.ch.hotel.model.Meeting;
import com.ch.hotel.model.Meeting_Book;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room_Book;
import com.ch.hotel.model.Wedding_Book;

@Service
public class MeetingServiceImpl implements MeetingService{

	@Autowired
	private MeetingDao mtd;

	public Meeting select(int met_num) {
		return mtd.select(met_num);
	}
	public int insert(Meeting_Book meeting_book) {
		return mtd.insert(meeting_book);
	}
	public Member selct(String member_id) {
		return mtd.selct(member_id);
	}

	public Meeting_Book selectmbk(Meeting_Book meeting_book) {
		return mtd.selectmbk(meeting_book);
	}
	public Meeting_Book slcbk(HashMap<String, String> methash) {
		return mtd.slcbk(methash);
	}
	public List<Meeting_Book> list(Meeting_Book meeting_book) {
		return mtd.list(meeting_book);
	}
	public Wedding_Book slcwk(HashMap<String, String> wedhash) {
		return mtd.slcwk(wedhash);
	}
	public Booking slcrk(HashMap<String, String> resthash) {
		return mtd.slcrk(resthash);
	}
	public Meeting_Book selectmk(String member_id) {
		return mtd.selectmk(member_id);
	}
	public Wedding_Book selectwk(String member_id) {
		return mtd.selectwk(member_id);
	}
	public Booking selectrk(String member_id) {
		return mtd.selectrk(member_id);
	}
	public int delete(String member_id) {
		return mtd.delete(member_id);
	}
	public Room_Book selectrb(String member_id) {
		return mtd.selectrb(member_id);
	}
	public Room_Book slcok(HashMap<String, String> romhash) {
		return mtd.slcok(romhash);
	}

}
