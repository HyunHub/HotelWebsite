package com.ch.hotel.model;

import lombok.Data;

@Data
public class Room_Book {
	private String room_id;
	private String member_id;
	private String rcheck_in;
	private String rcheck_out;
	private String rpeople;
	private String rbedtype;
	private String rservice;
	private String retc;
	
	private String rname;
	private String rm_year;
	private String rm_month;
	private String rm_day;
	private String hname;
}
