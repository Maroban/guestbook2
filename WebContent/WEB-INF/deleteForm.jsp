<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/guestbook2/gbc" method="post">
		<label>비밀번호</label>
		<input type="password" name="pass" value="">
		<button type="submit">확인</button>
		<input type="hidden" name="no" value="${no}">
		<input type="hidden" name="action" value="delete">
	</form>

	<a href="/guestbook2/gbc?action=addList">메인으로 돌아가기</a>
</body>
</html>