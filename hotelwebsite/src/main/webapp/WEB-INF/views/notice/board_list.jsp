<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="link.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice list</title>
<link rel="stylesheet" type="text/css" href="resources/css/board_style.css">
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<h2 style="padding-left:200px">Notice</h2>
<br>
<div style="padding-left:200px">
<c:if test="${member_id == 'admin'}">
	<a id="bd_title" href="board_insertForm.do?bd_num=0&pageNum=1&member_id=${member_id }">공지사항 등록</a>
</c:if>
</div>
<br>
<div class="container" align="center">
<table class="table table-hover" align="center">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>조회수</th>
		<th>작성일</th>
	</tr>
<c:if test="${empty list }">
	<tr><th colspan="5">게시글이 없습니다</th></tr>
</c:if>
<c:if test="${not empty list }">
	<c:forEach var="board" items="${list }">
		<tr><td id="item1">${board.bd_num}</td>
		<c:if test="${board.bd_del == 'y' }">
			<td colspan="4">삭제된 글입니다</td>
		</c:if>
	<c:if test="${board.bd_del != 'y' }">
			<td id="item2">
				<a id="bd_title" href="board_view.do?bd_num=${board.bd_num}&pageNum=${pb.currentPage}">${board.bd_title}</a>
			</td>
			<td id="item1">${board.member_id }</td>
			<td id="item1">${board.bd_count }</td>
			<td id="item3">${board.bd_date }</td>
	</c:if></tr>
  </c:forEach>
</c:if>
</table>
<div style="text-align:center">
	<ul class="pagination justify-content-center">
		<c:if test="${pb.startPage > pb.pagePerBlock }">
			<li><a id="page" href="board_list.do?pageNum=1&search=${board.search }&keyword=${board.keyword}">
				[PREV]
			</a></li>
			<li><a id="page" href="board_list.do?pageNum=${pb.startPage-1 }&search=${board.search }&keyword=${board.keyword}">
				<
			</a></li>
		</c:if>
		<c:forEach var="i" begin="${pb.startPage}" end="${pb.endPage}">
			<c:if test="${pb.currentPage == i }">
				<li class="active"><a id="page" href="board_list.do?pageNum=${i}&search=${board.search }&keyword=${board.keyword}">${i}</a></li>
			</c:if>
			<c:if test="${pb.currentPage != i }">
				<li><a id="page" href="board_list.do?pageNum=${i}&search=${board.search }&keyword=${board.keyword}">${i}</a></li>
			</c:if>			
		</c:forEach>
		<c:if test="${pb.endPage < pb.totalPage }">
			<li><a id="page" href="board_list.do?pageNum=${pb.endPage+1}&search=${board.search }&keyword=${board.keyword}">
				>
			</a></li>
			<li><a id="page" href="board_list.do?pageNum=${pb.totalPage}&search=${board.search }&keyword=${board.keyword}">
				[FIN]
			</a></li>
		</c:if>
	</ul>	
</div>
<div class="search-wrap">
<form action="board_list.do">
	<input type="hidden" name="pageNum" value="1">
<!--<select name="search">
		<option value="writer">작성자</option>
		<option value="subject">제목</option>
		<option value="content">내용</option>
	</select> -->
	<select name="search">
		<c:forTokens var="sh" items="member_id,bd_title,bd_content,subcon" delims="," varStatus="i">
		<!-- 전에 선택했던 검색 조건을 유지 -->
		<!-- selected="selected" select태그에서 맨 위에 보이는 것을 선택 -->
			<c:if test="${sh==board.search }">
				<option value="${sh}" selected="selected">${tit[i.index]}</option>
			</c:if>
		<!-- option에서 value search에 담아가는 값
			<option>값</option> option사이에 있는 값은 화면에 보이는 값 -->
			<c:if test="${sh!=board.search }">
				<option value="${sh}">${tit[i.index]}</option>
			</c:if>
		</c:forTokens>
	</select>
	<input type="text" name="keyword" value="${board.keyword }">
	<input type="submit" value="검색" style="background-color : white; border:none;">
</form>
</div>
</div>

<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>