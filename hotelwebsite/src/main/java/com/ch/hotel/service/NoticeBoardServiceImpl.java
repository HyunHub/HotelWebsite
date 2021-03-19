package com.ch.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.hotel.dao.NoticeBoardDao;
import com.ch.hotel.model.NoticeBoard;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService{

	@Autowired
	private NoticeBoardDao nbd;

	public int getTotal(NoticeBoard board) {
		return nbd.getTotal(board);
	}
	public List<NoticeBoard> list(NoticeBoard board) {
		return nbd.list(board);
	}
	public void updateReadCount(int num) {
		nbd.updateReadCount(num);		
	}
	public NoticeBoard select(int bd_num) {
		return nbd.select(bd_num);
	}
	public int update(NoticeBoard board) {
		return nbd.update(board);
	}
	public int maxNum() {
		return nbd.maxNum();
	}
	public int insert(NoticeBoard board) {
		return nbd.insert(board);
	}
	public int delete(int bd_num) {
		return nbd.delete(bd_num);
	}
}
