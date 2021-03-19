package com.ch.hotel.service;
import lombok.Data;
@Data
public class PagingBean {
	private int currentPage; 
	private int rowPerPage; // 한페이지 게시글 갯수
	private int total;       
	private int totalPage;  // 한블럭 당 페이지 수
	private int pagePerBlock = 10;
	private int startPage;   private int endPage;
	public PagingBean(int currentPage, int rowPerPage, int total) {
		this.currentPage = currentPage; 
		this.rowPerPage  = rowPerPage;
		this.total = total;
		// Math.ceil 현재 값보다 크거나 같은 정수 중에서 가장 작은 값
		// 그래서 Math.ceil을 사용하면 소숫점 이하에 값이 있으면 1증가
		// double은 정수를 실수로 변경해서 소숫점 이하 값을 보존
		totalPage = (int)Math.ceil((double)total/rowPerPage);
		startPage = currentPage - (currentPage - 1)%pagePerBlock;
		endPage = startPage + pagePerBlock - 1;
		// endPage는 totalPage보다 클 수 없다,마지막 페이지에 게시글이 10개 미만일 경우
		if (endPage > totalPage) endPage = totalPage;
	}
}