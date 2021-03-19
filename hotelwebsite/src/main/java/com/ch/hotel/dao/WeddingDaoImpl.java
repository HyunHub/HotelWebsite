package com.ch.hotel.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.hotel.model.Member;
import com.ch.hotel.model.Wedding;
import com.ch.hotel.model.Wedding_Book;

@Repository
public class WeddingDaoImpl implements WeddingDao{

	@Autowired
	private SqlSessionTemplate sst;

	public Wedding select(int wed_num) {
		return sst.selectOne("weddingns.select", wed_num);
	}
	public Member selct(String member_id) {
		return sst.selectOne("weddingns.selct", member_id);
	}
	public Wedding_Book selectwbk(Wedding_Book wedding_book) {
		return sst.selectOne("weddingns.selectwbk", wedding_book);
	}
	public int insert(Wedding_Book wedding_book) {
		return sst.insert("weddingns.insert", wedding_book);
	}
	public List<Wedding_Book> list(Wedding_Book wedding_book) {
		return sst.selectList("weddingns.list", wedding_book);
	}
	public int delete(String member_id) {
		return sst.delete("weddingns.delete", member_id);
	}
}
