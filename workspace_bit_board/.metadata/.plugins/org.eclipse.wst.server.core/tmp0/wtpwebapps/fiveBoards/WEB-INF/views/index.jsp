<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>게시판프로젝트</title>
	<style>
		.form-inline{
			align:center;
		}
	</style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-8" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/index.jsp">

<jsp:include page="navbar.jsp"/>

<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-8" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/index.jsp">
	<h1>FiveBoardProject</h1>
	<form action="#" class="form-inline">
		<div class="form-group">
			<select name="select" class="form-control">
			  <option value="all" selected="selected">전체게시판</option>
			  <option value="oneline">한줄게시판</option>
			  <option value="qna" >QnA게시판</option>
			  <option value="free" >자유게시판</option>
			  <option value="notice" >공지게시판</option>
			</select>
		</div>
		<div class="form-group">
			<label for="searchtext">검색 : </label>
			<input type="text" id="searchtext" name="search" class="form-control"/> 
			<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>			
		</div>
	</form>
	<br />
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
