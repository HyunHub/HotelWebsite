package com.ch.hotel.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ch.hotel.model.Booking;
import com.ch.hotel.model.DateData;
import com.ch.hotel.model.Meeting_Book;
import com.ch.hotel.model.Room_Book;
import com.ch.hotel.model.Wedding_Book;
import com.ch.hotel.service.BookingService;
import com.ch.hotel.service.MeetingService;
import com.ch.hotel.service.RoomService;
import com.ch.hotel.service.WeddingService;

@Controller
public class CalendarController {

	@Autowired
	private MeetingService mts;
	@Autowired
	private WeddingService wds;
	@Autowired
	private BookingService bs;
	@Autowired
	private RoomService rs;
	
	/* @RequestMapping(value = "calendar.do", method = RequestMethod.GET) */
	@RequestMapping("mag_reservation")
	public String calendar(Model model, HttpServletRequest request, DateData dateData, Meeting_Book meeting_book, 
			Wedding_Book wedding_book, Booking booking, Room_Book room_book){
		
		Calendar cal = Calendar.getInstance();
		DateData calendarData;
		//검색 날짜
		if(dateData.getDate().equals("")&&dateData.getMonth().equals("")){
			dateData = new DateData(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),null);
		}
		//검색 날짜 end

		Map<String, Integer> today_info =  dateData.today_info(dateData);
		List<DateData> dateList = new ArrayList<DateData>();
		
		//실질적인 달력 데이터 리스트에 데이터 삽입 시작.
		//일단 시작 인덱스까지 아무것도 없는 데이터 삽입
		for(int i=1; i<today_info.get("start"); i++){
			calendarData= new DateData(null, null, null, null);
			dateList.add(calendarData);
		}
		
		//날짜 삽입
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if(i==today_info.get("today")){
				calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "today");
			}else{
				calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "normal_date");
			}
			dateList.add(calendarData);
		}

		//달력 빈곳 빈 데이터로 삽입
		int index = 7-dateList.size()%7;
		
		if(dateList.size()%7!=0){
			
			for (int i = 0; i < index; i++) {
				calendarData= new DateData(null, null, null, null);
				dateList.add(calendarData);
			}
		}
		System.out.println(dateList);
		
		//meeting_book에서 mbk_date 가져오기
		//list에 목록 저장하기.
		List<Meeting_Book> mb_list = mts.list(meeting_book);
		model.addAttribute("mb_list", mb_list);
		System.out.println("mb_list size : " + mb_list.size());
		
		//wedding_book에서 wbk_date 가져오기
		List<Wedding_Book> wb_list = wds.list(wedding_book);
		model.addAttribute("wb_list", wb_list);
		System.out.println("wb_list size : " + wb_list.size());
		
		//rest booking에서 booking_date 가져오기
		List<Booking> rb_list = bs.list(booking);
		model.addAttribute("rb_list", rb_list);
		System.out.println("rb_list size : " + rb_list.size());
		
		//room_book에서 rcheck_in 가져오기
		List<Room_Book> rm_list = rs.list(room_book);
		model.addAttribute("rm_list", rm_list);
		System.out.println("rm_list size : " + rm_list.size());
		
		//배열에 담음
		model.addAttribute("dateList", dateList);		//날짜 데이터 배열
		model.addAttribute("today_info", today_info);
		return "/member/mag_reservation";
	}
}
