<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value='/'/>js/jquery-1.11.0.js"></script>
<script type="text/javascript">

	$(function() {

		$("#uploadSubmit").bind("click", function() {

			$("#uploadForm").submit();

		});
	});
</script>
</head>
<body>
	<form name="uploadForm" id="uploadForm" method="post" action="uploadForm" enctype="multipart/form-data">
		<input type="file" name="file">
		<input type="submit" value="업로드">
	</form>
</body>
</html>