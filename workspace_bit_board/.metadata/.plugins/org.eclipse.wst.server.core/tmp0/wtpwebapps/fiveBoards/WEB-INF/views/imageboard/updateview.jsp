<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.ckeditor.com/ckeditor5/11.1.1/classic/ckeditor.js"></script>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-6" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/imageboard/updateview.jsp">
	<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-6" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/imageboard/updateview.jsp">
		<form action="../updateAction" method="POST" enctype="multipart/form-data">
			<div class="form-group">
				<label for="btitle">글 제목</label>
				<input type="text" class="form-control" id="bTitle" name="bTitle" value="${list.bTitle}" />
			</div>
			<div class="form-group">
				<label for="btitle">작성자</label>
				<input type="text" class="form-control" id="bUsername" name="bUsername" value="${list.bUsername}" />
			</div>
			<div class="form-group">
				<label for="bContent">글 내용</label>
				<textarea name="bContent" id="bContent" class="form-control">${list.bContent}</textarea>
			</div>
			<div class="form-group">
				<label for="bFile">파일 업로드</label>
				<input type="file" name="uploadfile" id="bFile" class="form-control"/>
			</div>
			<input type="hidden" name="bId" value="${list.bId}" />
			<button type="submit" class="btn btn-default">수정하기</button>
			<a class="btn btn-default" href="list" >목록</a>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>