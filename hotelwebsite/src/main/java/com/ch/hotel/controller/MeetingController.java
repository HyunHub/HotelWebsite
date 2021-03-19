package com.ch.hotel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.hotel.model.Booking;
import com.ch.hotel.model.Meeting;
import com.ch.hotel.model.Meeting_Book;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room_Book;
import com.ch.hotel.model.Wedding_Book;
import com.ch.hotel.service.MeetingService;


@Controller
public class MeetingController {

	@Autowired
	private MeetingService mts;
	
	@RequestMapping("meeting_main")
	public String meeting_main() {
		
		return "/meeting/meeting_main";
	}
	//아이디, met_num, met_seat 받아와야함
	@RequestMapping("meeting_bookform")
	public String meeting_book(String member_id, int met_num, Model model){
		
		Meeting meeting = mts.select(met_num);
		Member member = mts.selct(member_id);
		
		model.addAttribute("member", member);
		model.addAttribute("met_num", met_num);
		model.addAttribute("member_id", member_id);
		model.addAttribute("meeting", meeting);
		
		System.out.println("meeting book member_id : " + member_id);
		System.out.println("met_num : " + met_num);		
		
		return "/meeting/meeting_bookform";
	}
	@RequestMapping("meeting_book")
	public String meeting_book(Meeting_Book meeting_book, Model model, HttpServletRequest request) {
		Meeting_Book meeting_book2 = mts.selectmbk(meeting_book);
		
		int result = 0;
		if(meeting_book2 == null) {
			result = mts.insert(meeting_book);
		}
		else if(meeting_book2 != null) {
			result = 0;
		}
		
		model.addAttribute("result", result);
		System.out.println("controller insert result : " + result);
		
		return "/meeting/meeting_book";		

	}
	@RequestMapping("book_reservation")
	public String book_reservation(String member_id, Model model) {
		Meeting_Book metbook = mts.selectmk(member_id);
		Wedding_Book wedbook = mts.selectwk(member_id);
		Booking restbook = mts.selectrk(member_id);
		Room_Book rombook = mts.selectrb(member_id);
		
		Member member = mts.selct(member_id);
		
		model.addAttribute("member", member);
		model.addAttribute("member_id", member_id);
		model.addAttribute("metbook", metbook);
		model.addAttribute("wedbook", wedbook);
		model.addAttribute("restbook", restbook);
		model.addAttribute("rombook", rombook);
		
		return "/meeting/book_reservation";
	}
	@RequestMapping("meeting_detail")
	public String meeting_detail() {
		return "/meeting/meeting_detail";
	}
	@RequestMapping("meeting_detail2")
	public String meeting_detail2() {
		return "/meeting/meeting_detail2";
	}
	@RequestMapping("meeting_detail3")
	public String meeting_detail3() {
		return "/meeting/meeting_detail3";
	}
	@RequestMapping("meeting_delete")
	public String meeting_delete(String member_id, Model model, HttpSession session) {
		int result = 0;
		result = mts.delete(member_id);
		if(result >0) {
			model.addAttribute("result", result);
			model.addAttribute("member_id", member_id);
		}
		return "/meeting/meeting_delete";
	}
}
