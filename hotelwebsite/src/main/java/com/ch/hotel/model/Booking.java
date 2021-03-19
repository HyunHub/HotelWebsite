package com.ch.hotel.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Booking {

	 	private String member_id; 
	    private int restaurant_num; 
	    private String booking_name; 
	    
	    //@DateTimeFormat(pattern = "yyyy-MM-dd")
	    private String booking_date; 
	    
	    private String booking_hours; 
	    private int guests; 
	    private String request; 
	    
	    private Restaurant restaurant;
	    
	    private String rbk_year;
	    private String rbk_month;
	    private String rbk_day;
	    private String rplace;
	    private String hname;
}
