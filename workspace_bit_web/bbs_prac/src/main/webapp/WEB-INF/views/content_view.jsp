<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
	.jumbotron {
		text-align:center;
	}
</style>
</head>
<body>
	<div class="jumbotron">
		<h3>${list.bTitle}</h3>
		<h2>${list.bUsername}</h2>
		조회수<p>${list.bCount}</p>
		작성일자<p><fmt:formatDate value="${list.bDate}" pattern="yyyy-MM-dd HH:mm"/></p>
	</div>
	<div class="jumbotron">
		<p>${list.bContent}</p>
		<img src="${list.bImage}" width="30" height="30"/>
	</div>
	<div class="jumbotron">
		<a href="list" class="btn btn-primary btn-lg" role="button">목록</a>
		<a href="update_view?bId=${list.bId}" class="btn btn-primary btn-lg" role="button">수정</a>
		<a href="uploadForm" class="btn btn-primary btn-lg">이미지 추가하기</a>
	</div>>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>