package com.ch.hotel.model;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeBoard {

	private int bd_num;
	private String member_id;
	private String bd_title;
	private String bd_content;
	private Date bd_date;
	private int bd_count;
	private String bd_del;
	
	private int startRow;
	private int endRow;
	
	private String search;
	private String keyword;

}
