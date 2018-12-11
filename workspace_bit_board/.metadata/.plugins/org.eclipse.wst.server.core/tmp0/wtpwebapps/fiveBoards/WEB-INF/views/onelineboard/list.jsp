<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>게시판 리스트</title>
<style>
ul.oneline_board {
	width: 50%;
	margin-left: auto;
	margin-right: auto;
	padding-inline-start: 0px;
}

p {
	background-color: rgb(206, 252, 1);
	width: 25%;
	display: inline-block;
	margin: 5px 0px;
}

li.line {
	list-style: none;
	padding-left: 0px;
	border: 1px solid black;
	margin-bottom: -1px;
}

.write_box {
	width: 50%;
	margin-left: auto;
	margin-right: auto;
	border-color: #e9e9e9;
	border-width: 1px;
	border-top-style: solid;
	border-bottom-style: solid;
	margin-top: 5px;
	background-color: #f7f7f7;
	font-family: 굴림, gulim, tahoma, sans-serif;
	font-size: 12px;
}

textarea {
	width: 90%;
}

dt {
	width: 20%;
	display: inline-block;
}

dd {
	width: 75%;
	margin: 5px px 5px 0px;
	float: right;
	margin-inline-start: 10px;
}

.content_block {
	font-size: 14px;
}

.bContent {
	margin: 5px 5px;
}

.button_view {
	float: right;
}

a {
	margin: 5px;
}

.clear {
	clear: both;
	height: 0;
	overflow: hidden;
}

.container{
	align:center;
}
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13074",secure:"13083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-15" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/onelineboard/list.jsp">

	<jsp:include page="../navbar.jsp"/>

	<h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-15" data-genuitec-path="/fiveBoards/src/main/webapp/WEB-INF/views/onelineboard/list.jsp">여기는 한줄보드</h1>
	
	<div class="write_box">
		<form action="write" method="post">
			닉네임 : <input type="text" name="bUsername" maxlength="20"><br />
			<textarea class="bContent" name="bContent" placeholder="입력해주세요"></textarea>
			<input type="submit" value="등록">
		</form>
	</div>
	
	<ul class="oneline_board">
		<c:forEach items="${list}" var="list">
			<li class="line">
				<dl>
					<dt class="checkbox_block">
						<span class="check">
							<input type="checkbox" name="bId" value="${list.bId}">
						</span>
						<span name="bId">${list.bId}</span>
					</dt>

					<dd id=${list.bId} class="content_block" style="display:inline-block">
						<div class="line_mini">
							<p class="bUsername">${list.bUsername}</p>
							<span class="bDate">${list.bDate}</span>
						</div>

						<div class="content_view">
							<div>
								<div class="bContent_view">${list.bContent}</div>
							</div>
								<a href="#">수정</a> <a href="delete?bId=${list.bId}">삭제</a>
						</div>		
			
						<div class="content_edit" style="display:none">
							<form action="update?bId=${list.bId}" method="post">
									<textarea class="bContent_edit" name="bContent">${list.bContent}</textarea>
									<input type="submit" value="등록"> <input type="button" value="취소">
							</form>
						</div>
					</dd>

					<p class="clear"></p>
				</dl>


			</li>
		</c:forEach>

	</ul>

	<br />
	<br />
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script>
		$('.content_block').on('click', function (event) {
			var id = event.currentTarget.id;
				console.log(event.target);
			if (event.target.innerHTML == '수정') {				
				$('#'+id+' .content_view').hide();
				$('#'+id+' .content_edit').show();
			} else if (event.target.value == '취소') {
				$('#'+id+' .content_view').show();
				$('#'+id+' .content_edit').hide();				
			}
		});

	</script>
</body>
</html>