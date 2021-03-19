package com.ch.hotel.model;

import java.util.Date;

import lombok.Data;

@Data
public class Member {

	private String member_id; 
	private String member_pw;
	private String member_name; 
	private String member_tel;
	private String member_addr;
	private String member_email; 
	private Date member_date;
	private String member_del;

}
