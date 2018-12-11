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
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-12" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/notice/list.jsp">
	
	<jsp:include page="../navbar.jsp"/>
	
	<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-12" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/notice/list.jsp">
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