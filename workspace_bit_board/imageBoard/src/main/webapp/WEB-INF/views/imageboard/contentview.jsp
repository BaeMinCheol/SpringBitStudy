<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	img {
		width: 500px;
		height: 500px;
	}
</style>
</head>
<body>

	<div class="jumbotron">
		<h1>${list.bTitle}</h1>
		<span>${list.bUsername}</span>
		<p>${list.bContent}</p>
		
		<br />
		<img src="/board/resources/files/${list.bImage}" alt="123" />
		<br />
		
		<a class="btn btn-primary btn-lg" href="list" role="button">목록</a>
		<a class="btn btn-primary btn-lg" href="update/${list.bId}" role="button">수정</a>
		<a class="btn btn-primary btn-lg" href="delete?bId=${list.bId}" role="button">삭제</a>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>