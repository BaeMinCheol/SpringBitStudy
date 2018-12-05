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
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"14922",secure:"14931"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/bbs_prac/src/main/webapp/WEB-INF/views/content_view.jsp">
	<div class="jumbotron" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/bbs_prac/src/main/webapp/WEB-INF/views/content_view.jsp">
		<h3>${list.bTitle}</h3>
		<h2>${list.bUsername}</h2>
	</div>
	<div class="jumbotron">
		<p>${list.bContent}</p>
		<img src="${list.bImage}" width="30" height="30"/>
	</div>
	<div class="jumbotron">
		<a class="btn btn-primary btn-lg" href="list" role="button">목록</a>
		<a href="update_view?bId=${list.bId}" class="btn btn-primary btn-lg" role="button">수정</a>
	</div>>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>