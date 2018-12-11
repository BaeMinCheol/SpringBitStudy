<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>contentView</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-10" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/notice/contentView.jsp">

<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-10" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/notice/contentView.jsp">
<table width="500" cellpadding="0" cellspacing="0" border="1" class="table table-hover">
		<form action="updateForm" method="post">
			<input type="hidden" name="bId" value="${contentView.bId}">
			<tr>
				<td> 번호 </td>
				<td> ${contentView.bId} </td>
			</tr>
			<tr>
				<td> 조회수 </td>
				<td> ${contentView.bCount} </td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="bUsername" value="${contentView.bUsername}"></td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="bTitle" value="${contentView.bTitle}"></td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="bContent" >${contentView.bContent}</textarea></td>
			</tr>
			<tr >
				<td colspan="2"> <input type="submit" class="btn btn-default" value="수정하기"> &nbsp;&nbsp; <a href="list" class="btn btn-default">목록보기</a> &nbsp;&nbsp; <a href="delete?bId=${contentView.bId}" class="btn btn-default">삭제하기</a></td>
			</tr>
		</form>
	</table>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>
</html>