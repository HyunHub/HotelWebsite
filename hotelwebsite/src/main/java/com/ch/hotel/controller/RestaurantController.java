package com.ch.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.hotel.service.RestaurantService;

@Controller
public class RestaurantController {
	
	@Autowired
	private RestaurantService rs;
	
	@RequestMapping("restmain")
	public String restmain() {
		return "/restaurant/restmain";
	}
	
	@RequestMapping("rest1")
	public String rest1() {
		return "/restaurant/rest1";
	}
	
	@RequestMapping("rest2")
	public String rest2() {
		return "/restaurant/rest2";
	}
	
	@RequestMapping("rest3")
	public String rest3() {
		return "/restaurant/rest3";
	}
	
	@RequestMapping("rest4")
	public String rest4() {
		return "/restaurant/rest4";
	}
	
	@RequestMapping("rest5")
	public String rest5() {
		return "/restaurant/rest5";
	}
}
