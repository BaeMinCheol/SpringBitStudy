<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>list</title>
</head>
<body>
	
	<div class="container">
		<ul class="nav nav-tabs">
		  <li role="presentation"><a href="/board/onelineboard">한줄게시판(김찬영)</a></li>
		  <li role="presentation"><a href="/board/qnaboard/list">QnA 게시판(이미연)</a></li>
		  <li role="presentation"><a href="/board/freeboard/">자유게시판(조준희)</a></li>
		  <li role="presentation"><a href="/board/photoboard/list">사진게시판(배민철)</a></li>
		  <li role="presentation"><a href="/board/noticeboard/list">공지게시판(권민희)</a></li>
		</ul>
	</div>
	
	<div class="container">
	<h1>공지사항 게시판</h1><br/>
		<table class="table table-hover">
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.bId}</td>
					<td>${list.bUsername}</td>
					<td><a href="contentView?bId=${list.bId}">${list.bTitle}</a></td>
					<td><%-- ${list.bDate} --%> <fmt:formatDate value="${list.bDate}" pattern="yyyy-MM-dd HH:mm"/></td>
					<td>${list.bCount}</td>
					</tr>
			</c:forEach>
		</table>
		<a href="writeForm" class="btn btn-default" role="button">글쓰기</a>
	<br />
	<br/>
	<br/>
	<select name="searchType">
		<option value="n"></option>
		<option value="t">제목</option>
		<option value="c">내용</option>
		<option value="w">작성자</option>	
		<option value="tc">제목+내용</option>
		<option value="cw">내용+작성자</option>
		<option value="tw">제목+작성자</option>
		<option value="tcw">제목+내용+작성자</option>
	</select>
	<input type="text" name="keyword"/>
	<button type"button" id="searchBtn" class="btn btn-default">검색</button>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
</body>
</html>