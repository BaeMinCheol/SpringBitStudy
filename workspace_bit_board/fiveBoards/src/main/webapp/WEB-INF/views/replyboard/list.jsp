<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link	rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
		integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>게시판 리스트</title>
</head>
<body>

	<jsp:include page="../navbar.jsp"/>

	<br />
	
	<div class="search">
		<form action="search">
			<select name="searchOption">
				<option value="byTitleContent">제목+내용</option>
				<option value="byUsername">작성자</option>
			</select>
			<input type="text" name="searchWord" placeholder="현재 게시판에서 검색하기" required>
			<input type="submit" value="검색">
		</form>
	</div>
	
	<div class="container">
		<a href="write_view" class="btn btn-default" role="button">글쓰기</a>
		<table class="table table-hover">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>수정하기</th>
				<th>삭제하기</th>
			</tr>
			<c:forEach items="${list }" var="hereList">
<%-- 			<c:forEach items="${list }"> 에러 발생 --%> 
				<tr>
					<td>${hereList.bId}</td>
					<td><a href="content_view?bId=${hereList.bId}">${hereList.bTitle}</a></td>
					<td>
						${hereList.bDate}
						<fmt:formatDate value="${hereList.bDate}" pattern="yyyy-MM-dd HH:mm" />
					</td>
					<td>${hereList.bCount}</td>
					
					<td><a href="update_view?bId=${hereList.bId}"
						class="btn btn-default" role="button">수정하기</a></td>
					<td><a href="delete?bId=${hereList.bId}" class="btn btn-default"
						role="button">삭제하기</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>