package com.ch.hotel.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.hotel.model.NoticeBoard;

@Repository
public class NoticeBoardDaoImpl implements NoticeBoardDao{

	@Autowired
	private SqlSessionTemplate sst;

	public int getTotal(NoticeBoard board) {
		return sst.selectOne("boardns.getTotal", board);
	}
	public List<NoticeBoard> list(NoticeBoard board) {
		return sst.selectList("boardns.list", board);
	}
	public void updateReadCount(int num) {
		sst.update("boardns.updateReadCount", num);
	}
	public NoticeBoard select(int bd_num) {
		return sst.selectOne("boardns.select", bd_num);
	}
	public int update(NoticeBoard board) {
		return sst.update("boardns.update", board);
	}
	public int maxNum() {
		return sst.selectOne("boardns.maxNum");
	}
	public int insert(NoticeBoard board) {
		return sst.insert("boardns.insert", board);
	}
	public int delete(int bd_num) {
		return sst.update("boardns.delete", bd_num);
	}
}
