<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#btnAdd").on("click", function() {
			//input 값을 읽어서 select 태그에 추가
			//버튼 클릭하면 option태그 생성해서 추가
			$("#list").append($("<option>").html($("#fruit").val()));

		});
	});
</script>
</head>
<body>
	<input id="fruit">
	<button type="button" id="btnAdd">등록</button>
	<br>
	<select id="list" size=10></select>
	<table id="tbl" border="1"></table>
</body>
</html>