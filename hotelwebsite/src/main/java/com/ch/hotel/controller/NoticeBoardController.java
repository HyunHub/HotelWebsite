package com.ch.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.hotel.service.PagingBean;
import com.ch.hotel.model.Member;
import com.ch.hotel.model.NoticeBoard;
import com.ch.hotel.service.NoticeBoardService;

@Controller
public class NoticeBoardController {
	
	@Autowired
	private NoticeBoardService ns;
	
	@RequestMapping("board_list")
	public String list(String pageNum, NoticeBoard board, String member_id, Model model) {
		if (pageNum == null || pageNum.equals("")) pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10; //  한 화면에 게시글 10개
//		int total = ns.getTotal();
		int total = ns.getTotal(board);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
//		List<Board> list = bs.list(startRow, endRow);
		board.setStartRow(startRow);
		board.setEndRow(endRow);
// board에는 startRow, endRow, search, keyword
		List<NoticeBoard> list = ns.list(board);
		int no = total - startRow + 1; // 1p:150-1 + 1 2p:150-11+1
		PagingBean pb = new PagingBean(currentPage, rowPerPage,total);
		String[] tit = {"작성자","제목","내용","제목+내용"};
		model.addAttribute("tit", tit);
		model.addAttribute("pb", pb);
		model.addAttribute("no", no);
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("member_id", member_id);
		System.out.println("list member_id : " + member_id);
		return "/notice/board_list";
	}
	@RequestMapping("board_view")
	public String view(int bd_num, String pageNum, Model model) {
		ns.updateReadCount(bd_num); //조회수 증가
		NoticeBoard board = ns.select(bd_num);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("board", board);
		return "/notice/board_view";
	}
	@RequestMapping("board_updateForm")
	public String updateForm(int bd_num, String pageNum, Model model) {
		NoticeBoard board = ns.select(bd_num);
		model.addAttribute("board",board);
		model.addAttribute("pageNum", pageNum);
		return "/notice/board_updateForm";
	}
	@RequestMapping("board_update")
	public String update(NoticeBoard board, String pageNum, Model model) {
		int result = ns.update(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/notice/board_update";
	}
	@RequestMapping("board_insertForm")
	public String insertForm(int bd_num, String pageNum, String member_id, Model model) {

		model.addAttribute("member_id", member_id);
		model.addAttribute("bd_num", bd_num);
		model.addAttribute("pageNum", pageNum);
		System.out.println("insert board_id : " + member_id);
		return "/notice/board_insertForm";
	}
	@RequestMapping("board_insert")
	public String insert(NoticeBoard board, String pageNum, Model model, HttpServletRequest request) {
		
		int number = ns.maxNum();
		board.setBd_num(number);
		int result = ns.insert(board);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		System.out.println("controller insert result : " + result);
		return "/notice/board_insert";
	}
	@RequestMapping("board_delete")
	public String delete(int bd_num, Model model, HttpSession session) {
		int result = ns.delete(bd_num);
		if (result > 0) session.invalidate();
		model.addAttribute("result", result);
		return "/notice/board_delete";
	}
}
