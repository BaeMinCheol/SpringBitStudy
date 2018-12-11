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
<title>게시글 작성</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-21" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/replyboard/write_view.jsp">



	<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-21" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/replyboard/write_view.jsp">
		<form action="write">
			<table class="table">
				<tr>
					<th colspan=3>제목<input type="text" name="bTitle"></th>
				</tr>
				<tr>
					<td colspan=3>내용<input type="text" name=bContent></td>
				</tr>
				<tr>
					<td>닉네임<input type="text" name="bUsername"></td>
					<td>비밀번호<input type="text" name="bPassword"></td>
					<td><input type="submit" value="글쓰기"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>