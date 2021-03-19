package com.ch.hotel.service;

import java.util.List;

import com.ch.hotel.model.Member;
import com.ch.hotel.model.Wedding;
import com.ch.hotel.model.Wedding_Book;

public interface WeddingService {

	Wedding select(int wed_num);

	Member selct(String member_id);

	Wedding_Book selectwbk(Wedding_Book wedding_book);

	int insert(Wedding_Book wedding_book);

	List<Wedding_Book> list(Wedding_Book wedding_book);

	int delete(String member_id);

}
