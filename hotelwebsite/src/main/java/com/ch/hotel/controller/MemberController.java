package com.ch.hotel.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.hotel.model.Booking;
import com.ch.hotel.model.Meeting_Book;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.Room_Book;
import com.ch.hotel.model.Wedding_Book;
import com.ch.hotel.service.MeetingService;
import com.ch.hotel.service.MemberService;
import com.ch.hotel.service.WeddingService;


@Controller
public class MemberController {

	@Autowired
	private MemberService ms;
	@Autowired
	private MeetingService mts;
	@Autowired
	private WeddingService wds;
	
	@RequestMapping("joinForm")
	public String joinForm() {
		return "/member/joinForm";
	}
	@RequestMapping(value = "idChk", produces = "text/html;charset=utf-8")
	@ResponseBody // jsp로 가지말고 바로 본문을 전달
	public String idChk(String id) {
		String msg = "";
		Member member = ms.select(id);
		if (member == null) msg="사용 가능한 아이디입니다";
		else msg = "이미 사용중이니 다른 아이디를 사용하세요";
		return msg;
	}
	@RequestMapping("join")
	public String join(Member member,Model model,HttpSession session) {
		int result = 0;
		// member는 화면에서 입력한 데이터, mem 테이블에서 id로 읽어온 데이터
		Member mem = ms.select(member.getMember_id());
		result = ms.insert(member);
		model.addAttribute("result", result);
		return "/member/join";
	}
	@RequestMapping("loginForm")
	public String loginForm() {
		return "/member/loginForm";
	}
	@RequestMapping("login")
	public String login(Member member, Model model, HttpSession session) {
		int result = 0; // 암호가 다름
		Member mem = ms.select(member.getMember_id());
		if (mem == null || mem.getMember_del().equals("y"))
			result = -1;   // 없는 아이디
		else if (mem.getMember_pw().equals(member.getMember_pw())) {
			result = 1; // 성공
			session.setAttribute("member_id", member.getMember_id());
		}
		model.addAttribute("result", result);
		return "/member/login";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/member/logout";
	}
	@RequestMapping("mainForm")
	public String main(Model model, HttpSession session) {
		String member_id = (String)session.getAttribute("member_id");
		Member member = null;
		if (member_id != null && !member_id.equals("")) 
			member = ms.select(member_id);
		model.addAttribute("member",member);
		System.out.println("mainForm member_id : " + member_id);
		return "/main/mainForm";
	}

	/*
	 * @RequestMapping("mainForm") public String mainForm() { return
	 * "/member/mainForm"; }
	 */
	@RequestMapping("header")
	public String header() {
		return "/main/header";
	}
	@RequestMapping("myPage")
	public String myPage(Model model, HttpSession session) {
		String id = (String)session.getAttribute("member_id");
		Member member = null;
		member = ms.select(id);
		model.addAttribute("member", member);
		return "/member/myPage";
	}
	@RequestMapping("updateForm")
	public String updateForm(Model model, HttpSession session) {
		String id = (String)session.getAttribute("member_id");
		Member member = ms.select(id);
		model.addAttribute("member", member);
		return "/member/updateForm";
	}
	@RequestMapping("update")
	public String update(Member member, Model model, HttpSession session){
		int result = 0;
		result = ms.update(member);
		model.addAttribute("result", result);
		return "/member/update";
	}
	@RequestMapping("deleteid")
	public String delete(Model model, HttpSession session) {
		String id = (String)session.getAttribute("member_id");
		int result = ms.delete(id);
		if (result > 0) session.invalidate();
		model.addAttribute("result", result);
		return "/member/deleteid";
	}
	@RequestMapping("management_main")
	public String management() {
		return "/member/management_main";
	}
	@RequestMapping("mag_member")
	public String mag_member(Member member, Model model) {
		
		List<Member> list = ms.list(member);
		
		model.addAttribute("list", list);
		
		System.out.println("list size : " + list.size());
		
		return "/member/mag_member";
	}
	@RequestMapping("reservation_mcheck")
	public String reservation_mcheck(String member_id, String mbk_month, String mbk_day, String mbk_date, Model model) {
		
		HashMap<String, String> methash = new HashMap<String, String>();
		methash.put("member_id", member_id);
		methash.put("mbk_date", mbk_date);
		Meeting_Book metbook = mts.slcbk(methash);

		model.addAttribute("mbk_date", mbk_date);
		model.addAttribute("mbk_month", mbk_month);
		model.addAttribute("mbk_day", mbk_day);
		model.addAttribute("metbook", metbook);
		model.addAttribute("member_id", member_id);
		
		return "/member/reservation_mcheck";
	}
	@RequestMapping("reservation_wcheck")
	public String reservation_wcheck(String member_id, String wbk_month, String wbk_day, String wbk_date, Model model) {
		
		HashMap<String, String> wedhash = new HashMap<String, String>();
		wedhash.put("member_id", member_id);
		wedhash.put("wbk_date", wbk_date);
		Wedding_Book wedbook = mts.slcwk(wedhash);
		
		model.addAttribute("wbk_month", wbk_month);
		model.addAttribute("wbk_day", wbk_day);
		model.addAttribute("wedbook", wedbook);
		model.addAttribute("member_id", member_id);
		
		return "/member/reservation_wcheck";
	}
	@RequestMapping("reservation_rcheck")
	public String reservation_rcheck(String member_id, String rbk_month, String rbk_day, String booking_date, Model model) {
		
		HashMap<String, String> resthash = new HashMap<String, String>();
		resthash.put("member_id", member_id);
		resthash.put("booking_date", booking_date);
		Booking restbook = mts.slcrk(resthash);
		
		model.addAttribute("booking_date", booking_date);
		model.addAttribute("rbk_month", rbk_month);
		model.addAttribute("rbk_day", rbk_day);
		model.addAttribute("restbook", restbook);
		model.addAttribute("member_id", member_id);
		
		return "/member/reservation_rcheck";
	}
	@RequestMapping("reservation_ocheck")
	public String reservation_ocheck(String member_id, String rm_month, String rm_day, String rcheck_in, Model model) {
		
		HashMap<String, String> romhash = new HashMap<String, String>();
		romhash.put("member_id", member_id);
		romhash.put("rcheck_in", rcheck_in);
		Room_Book roombook = mts.slcok(romhash);

		model.addAttribute("rcheck_in", rcheck_in);
		model.addAttribute("rm_month", rm_month);
		model.addAttribute("rm_day", rm_day);
		model.addAttribute("roombook", roombook);
		model.addAttribute("member_id", member_id);
		
		return "/member/reservation_ocheck";
	}
	@RequestMapping("popup")
	public String popup(String member_id, Model model) {
		Member member = ms.select(member_id);
		
		model.addAttribute("member", member);
		model.addAttribute("member_id", member_id);
		return "/member/popup";
	}
	@RequestMapping("about")
	public String about() {
		return "/member/about";
	}
}
