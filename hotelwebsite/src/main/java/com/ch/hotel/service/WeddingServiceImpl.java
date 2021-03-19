package com.ch.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.hotel.dao.WeddingDao;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.Wedding;
import com.ch.hotel.model.Wedding_Book;

@Service
public class WeddingServiceImpl implements WeddingService{

	@Autowired
	private WeddingDao wdd;

	public Wedding select(int wed_num) {
		return wdd.select(wed_num);
	}
	public Member selct(String member_id) {
		return wdd.selct(member_id);
	}
	public Wedding_Book selectwbk(Wedding_Book wedding_book) {
		return wdd.selectwbk(wedding_book);
	}
	public int insert(Wedding_Book wedding_book) {
		return wdd.insert(wedding_book);
	}
	public List<Wedding_Book> list(Wedding_Book wedding_book) {
		return wdd.list(wedding_book);
	}
	public int delete(String member_id) {
		return wdd.delete(member_id);
	}
}
