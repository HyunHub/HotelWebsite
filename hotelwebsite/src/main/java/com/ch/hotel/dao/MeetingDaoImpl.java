package com.ch.hotel.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.hotel.model.Booking;
import com.ch.hotel.model.Meeting;
import com.ch.hotel.model.Meeting_Book;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room_Book;
import com.ch.hotel.model.Wedding_Book;

@Repository
public class MeetingDaoImpl implements MeetingDao{

	@Autowired
	private SqlSessionTemplate sst;

	public Meeting select(int met_num) {
		return sst.selectOne("meetingns.select", met_num);
	}
	public int insert(Meeting_Book meeting_book) {
		return sst.insert("meetingns.insert", meeting_book);
	}
	public Member selct(String member_id) {
		return sst.selectOne("meetingns.selct", member_id);
	}

	public Meeting_Book selectmbk(Meeting_Book meeting_book) {
		return sst.selectOne("meetingns.selectmbk", meeting_book);
	}
	public Meeting_Book slcbk(HashMap<String, String> methash) {
		return sst.selectOne("meetingns.slcbk", methash);
	}
	public List<Meeting_Book> list(Meeting_Book meeting_book) {
		return sst.selectList("meetingns.list", meeting_book);
	}
	public Wedding_Book slcwk(HashMap<String, String> wedhash) {
		return sst.selectOne("meetingns.slcwk", wedhash);
	}
	public Booking slcrk(HashMap<String, String> resthash) {
		return sst.selectOne("meetingns.slcrk", resthash);
	}
	public Meeting_Book selectmk(String member_id) {
		return sst.selectOne("meetingns.selectmk", member_id);
	}
	public Wedding_Book selectwk(String member_id) {
		return sst.selectOne("meetingns.selectwk", member_id);
	}
	public Booking selectrk(String member_id) {
		return sst.selectOne("meetingns.selectrk", member_id);
	}
	public int delete(String member_id) {
		return sst.delete("meetingns.delete", member_id);
	}
	public Room_Book selectrb(String member_id) {
		return sst.selectOne("meetingns.selectrb", member_id);
	}
	public Room_Book slcok(HashMap<String, String> romhash) {
		return sst.selectOne("meetingns.slcok", romhash);
	}




}
