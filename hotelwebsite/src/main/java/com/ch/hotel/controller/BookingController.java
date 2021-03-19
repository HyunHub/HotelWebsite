package com.ch.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.hotel.model.Booking;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.Restaurant;
import com.ch.hotel.service.BookingService;
import com.ch.hotel.service.MemberService;
import com.ch.hotel.service.RestaurantService;

@Controller
public class BookingController {

	@Autowired
	private RestaurantService rs;
	
	@Autowired
	private BookingService bs;
	
	@Autowired
	private MemberService ms;
	
	@RequestMapping("booking")
	public String booking(Booking booking, Model model, HttpSession session, String member_id) {
		int result = 0;
		
		Member member = ms.select(member_id);
		List<Booking> book = bs.select(member.getMember_id());
		result = bs.booking(booking);
		model.addAttribute("result", result);
		
		return "/booking/booking";
	}
	
	@RequestMapping("booking1")
	public String booking1(Model model, String member_id, int restaurant_num, HttpSession session) {
		
		//Booking booking = bs.select(booking_num);  int booking_num,
		Member member = ms.select(member_id); 
		Restaurant restaurant = rs.select(restaurant_num);
		List<Booking> booking = bs.select(member_id);
		
		model.addAttribute("member", member);
		model.addAttribute("member_id", member_id);

		model.addAttribute("restaurant_num", restaurant_num);
		model.addAttribute("restaurant", restaurant);
		
		model.addAttribute("booking", booking);
		
		return "/booking/booking1";
	}
	@RequestMapping("rest_delete")
	public String rest_delete(String member_id, Model model, HttpSession session) {
		
		int result = 0;
		result = bs.delete(member_id);
		if(result>0) {
			model.addAttribute("result", result);
			model.addAttribute("member_id", member_id);
		}
		return "/booking/rest_delete";
	}
	
}
