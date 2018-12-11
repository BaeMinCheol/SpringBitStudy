<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-0" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/freeboard/contentview.jsp">

	<div class="jumbotron" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-0" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/freeboard/contentview.jsp">
		<h1>${list.bTitle}</h1>
		<span>${list.bUsername}</span>
		<p>${list.bContent}</p>
		<%-- ${list.bFile} --%>
		<br />
		
		<c:if test="${list.bFile ne null}">
			<img src="/board/resources/files/${list.bFile}"/>
		</c:if>

		<br />
		
		<a class="btn btn-primary btn-lg" href="./" role="button">목록</a>
		<a class="btn btn-primary btn-lg" href="./update/${list.bId}" role="button">수정</a>
		<a class="btn btn-primary btn-lg" href="./delete?bId=${list.bId}" role="button">삭제</a>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
</body>
</html>