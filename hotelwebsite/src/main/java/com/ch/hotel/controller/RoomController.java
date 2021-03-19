package com.ch.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room;
import com.ch.hotel.model.Room_Book;
import com.ch.hotel.service.RoomService;

@Controller
public class RoomController {
	
	@Autowired
	private RoomService rs;
	
	@RequestMapping("roomList")
	public String roomList() {
		
		return "/room/roomList";
	}
	
	@RequestMapping("standardNomal")
	public String standardNomal(Model model) {	
		return "/room/standardNomal";
	}
	
	@RequestMapping("roomBookForm")
	public String roomBookForm(String member_id, int room_id, Model model) {
		Room room = rs.select(room_id);
		Member member = rs.selct(member_id);
		
		model.addAttribute("member", member);
		model.addAttribute("room_id", room_id);
		model.addAttribute("member_id", member_id);
		model.addAttribute("room", room);
		
		return "/roomBook/roomBookForm";
	}
	@RequestMapping("roomBook")
	public String roomBook(Room_Book room_book, Model model, HttpSession session) {
		
		Room_Book room_book2 = rs.selectrm(room_book);
		
		int result = 0;
		if(room_book2 == null) {
			result = rs.insert(room_book);
		}else if(room_book2 != null) {
			result = 0;
		}
		model.addAttribute("result", result);
		System.out.println("room result : " + result);
		
		return "/roomBook/roomBook";
	}
	@RequestMapping("room_detail")
	public String room_detail() {
		return "/room/room_detail";
	}
	@RequestMapping("room_delete")
	public String room_delete(String member_id, Model model, HttpSession session) {
		
		int result = 0;
		result = rs.delete(member_id);
		if(result>0) {
			model.addAttribute("result", result);
			model.addAttribute("member_id", member_id);
		}
		return "/roomBook/room_delete";
	}
	
	
}
