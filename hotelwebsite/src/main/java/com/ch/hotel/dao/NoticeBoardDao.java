package com.ch.hotel.dao;

import java.util.List;

import com.ch.hotel.model.NoticeBoard;

public interface NoticeBoardDao {

	int getTotal(NoticeBoard board);

	List<NoticeBoard> list(NoticeBoard board);

	void updateReadCount(int num);

	NoticeBoard select(int bd_num);

	int update(NoticeBoard board);

	int maxNum();

	int insert(NoticeBoard board);

	int delete(int bd_num);

}
