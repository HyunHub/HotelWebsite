<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="link.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice board view</title>
<link rel="stylesheet" type="text/css" href="resources/css/view_style.css">
<script type="text/javascript">
	function del() {
		var con = confirm("공지사항을 삭제 하시겠습니까?");
		if (con) location.href="board_delete.do?bd_num=${board.bd_num}";
		else {
			alert("공지사항 삭제가 취소 되었습니다");
			return;
		}
	}
</script>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<div class="container" align="center">
<table class="view_table" align="center">
	<tr><td id="item1">제목</td><td colspan="5">${board.bd_title}</td></tr>
	<tr><td id="item1">작성자</td><td>${board.member_id}</td><td id="item1">조회수</td><td>${board.bd_count}</td>
		<td id="item1">작성일</td><td id="item2">${board.bd_date}</td></tr>
	<tr><td id="item1">내용</td><td colspan="5"><pre style="background-color:white; height:100%; border:none;">${board.bd_content}</pre></td></tr>
</table>
<div class="board-wrap">
	<button id="board-btn" onclick="location.href='board_list.do?pageNum=${pageNum}'">게시글 목록</button>
	<c:if test="${member_id == 'admin' }">
		<button id="board-btn" onclick="location.href='board_updateForm.do?bd_num=${board.bd_num }&pageNum=${pageNum}'">수정</button>
		<button id="board-btn" onclick="del()">삭제</button>
	</c:if>
</div>
</div>

<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</body>
</html>