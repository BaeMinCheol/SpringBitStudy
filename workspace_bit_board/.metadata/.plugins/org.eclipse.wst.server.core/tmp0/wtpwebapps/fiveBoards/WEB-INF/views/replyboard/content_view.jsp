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
<title>게시글 뷰</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-16" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/replyboard/content_view.jsp">



	<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-16" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/replyboard/content_view.jsp">
		<table class="table table-hover">
			<tr>
				<th colspan=3>${contentView.bTitle }</th>
			</tr>
			<tr>
				<td>${contentView.bUsername }</td>
				<td>${contentView.bCount}</td>
				<td>
<%-- 					${contentView.bDate}  --%>
					<fmt:formatDate value="${contentView.bDate}" pattern="yyyy-MM-dd HH:mm" />
				</td>
			</tr>
			<tr>
				<td colspan=3>${contentView.bContent }</td>
			</tr>
			<tr>
				<td><a href="write_view" class="btn btn-default" role="button">글쓰기</a></td>
				<td><a href="update_view?bId=${contentView.bId}" class="btn btn-default" role="button
				">수정하기</a></td>
				<td><a href="delete?bId=${contentView.bId}" class="btn btn-default" role="button">삭제하기</a></td>
			</tr>
		</table>
		<a href="reply_view?bId=${contentView.bId}">답글쓰기</a>
		<a href="list">목록 보기</a>
	</div>

</body>
</html>