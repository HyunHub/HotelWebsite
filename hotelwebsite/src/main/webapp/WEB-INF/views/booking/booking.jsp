<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("레스토랑 예약 완료");
		history.go(-2);
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("레스토랑 예약 실패");
		history.go(-1);
	</script>
</c:if>
</body>
</html>