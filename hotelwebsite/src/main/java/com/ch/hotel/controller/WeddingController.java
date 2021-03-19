package com.ch.hotel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.hotel.model.Member;
import com.ch.hotel.model.Wedding;
import com.ch.hotel.model.Wedding_Book;
import com.ch.hotel.service.WeddingService;

@Controller
public class WeddingController {

	@Autowired
	private WeddingService wds;

	@RequestMapping("wedding_main")
	public String wedding_main() {
		return "/wedding/wedding_main";
	}
	@RequestMapping("wedding_detail")
	public String wedding_detail(int wed_num, Model model) {
		model.addAttribute("wed_num", wed_num);
		return "/wedding/wedding_detail";
	}
	@RequestMapping("wedding_bookform")
	public String wedding_bookform(String member_id, int wed_num, Model model) {
		
		Wedding wedding = wds.select(wed_num);
		Member member = wds.selct(member_id);
		
		model.addAttribute("member", member);
		model.addAttribute("wed_num", wed_num);
		model.addAttribute("member_id", member_id);
		model.addAttribute("wedding", wedding);
		
		return "/wedding/wedding_bookform";
	}
	@RequestMapping("wedding_book")
	public String wedding_book(Wedding_Book wedding_book, Model model, HttpServletRequest request) {
		
		Wedding_Book wedding_book2 = wds.selectwbk(wedding_book);
		
		int result = 0;
		if(wedding_book2 == null) {
			result = wds.insert(wedding_book);
		}
		else if(wedding_book2 != null) {
			result = 0;
		}
		
		model.addAttribute("result", result);
		System.out.println("controller insert result : " + result);
		
		return "/wedding/wedding_book";
	}
	@RequestMapping("wedding_delete")
	public String wedding_delete(String member_id, Model model, HttpSession session) {
		
		int result = 0;
		result = wds.delete(member_id);
		if(result>0) {
			model.addAttribute("result", result);
			model.addAttribute("member_id", member_id);
		}
		return "/wedding/wedding_delete";
	}
}
