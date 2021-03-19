package com.ch.hotel.model;

import lombok.Data;

@Data
public class Meeting_Book {

	//int mbk_num;
	private int met_num;
	private String member_id;
	private String mbk_title;
	private String mbk_date;
	private String mbk_sthour;
	private String mbk_edhour;
	private String mbk_seat;
	private String mbk_shape;
	private String mbk_etc;
	
	private String mbk_year;
	private String mbk_month;
	private String mbk_day;
	private String mplace;
	private String hname;
}
