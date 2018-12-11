<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>게시판 리스트</title>
<style>
	.container{
		align:center;
	}
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-1" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/freeboard/list.jsp">

	<jsp:include page="../navbar.jsp"/>

	<br  data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-1" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/freeboard/list.jsp"/>
	
	<div class="container">
		<form action="" class="form-inline">
			<div class="form-group">
				<select name="select" class="form-control">
				  <option value="all" selected="selected">전체</option>
				  <option value="writer">작성자</option>
				  <option value="title" >글제목</option>
				  <option value="content" >글내용</option>
				</select>
			</div>
			<div class="form-group">
				<label for="searchtext">검색 : </label>
				<input type="text" id="searchtext" name="search" class="form-control"/> 
				<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>			
			</div>
		</form>
	</div>

	<br />
		
	<div class="container">
		<table class="table table-hover">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>수정하기</th>
				<th>삭제하기</th>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.bId}</td>
					<td><a href="${list.bId}">${list.bTitle}</a></td>
					<td><fmt:formatDate value="${list.bDate}" pattern="yyyy-MM-dd"/></td>
					<td>${list.bUsername}</td>
					<td>${list.bCount}</td>
					<td><a href="update/${list.bId}" class="btn btn-default" role="button">수정하기</a></td>
					<td><a href="delete?bId=${list.bId}" class="btn btn-default" role="button">삭제하기</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="writeview" class="btn btn-default" role="button">글쓰기</a>
	</div>
	<br />
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
</body>
</html>