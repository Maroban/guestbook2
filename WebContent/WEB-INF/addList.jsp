
<%@page import="com.javaex.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
// attribute() 데이터 가져오기
List<GuestbookVo> guestList = (List<GuestbookVo>)request.getAttribute("gList");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/guestbook2/gbc" method="post">
		<table border="1" width="550">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="pw" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="10" cols="73" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">확인</button></td>
			</tr>
		</table>
		<input type="hidden" name="action" value="insert">
	</form>
	<br>
	<br>
	<br>

	<%
	for (int i = 0; i < guestList.size(); i++) {
	%>
	<form action="" method="post">
		<table border="1" width="550">
			<tr>
				<td><%=guestList.get(i).getNo()%></td>
				<td><%=guestList.get(i).getName()%></td>
				<td><%=guestList.get(i).getReg_date()%></td>
				<td><a href="/guestbook2/gbc?action=dform&no=<%=guestList.get(i).getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4"><%=guestList.get(i).getContent()%></td>
			</tr>
		</table>
	</form>
	<br>
	<%
	}
	%>

</body>
</html>