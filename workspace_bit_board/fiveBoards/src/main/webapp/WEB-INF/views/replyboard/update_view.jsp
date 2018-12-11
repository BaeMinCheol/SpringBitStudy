<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link	rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  -->
<!-- 		integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
<title>게시글 수정</title>
</head>
<body>



	<div class="container">
		<form action="update">
			<table class="table">
				<tr>
					<th colspan=2>제목<input type="text" name="bTitle" value="${updateView.bTitle}"></th>
				</tr>
				<tr>
					<td colspan=2>내용<input type="text" name="bContent" value="${updateView.bContent}"></td>
				</tr>
				<tr>
<!-- 					<td>닉네임<input type="text" name="bUsername"></td> -->
					<td>비밀번호<input type="text" name="bPassword" value="${updateView.bPassword}"></td>
					<td><input type="submit" value="수정하기"><input type="hidden" name="bId" value="${updateView.bId }"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>