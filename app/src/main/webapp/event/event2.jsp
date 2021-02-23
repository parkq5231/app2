<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event2.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	//onload 방식
	$(function() {
		$("#result").on("click", function() {
			alert($(this).html())
		}).on("click", function() {
			alert("two click!!!")
		});
	});
</script>
</head>
<body>
	<div id="result">event test</div>
	<!-- <script>
		//onload로 바꿔보기
		result.addEventListener("click", function() {
			alert(this.innerHTML);
		});
		result.addEventListener("click", function() {
			alert("two click!!!");
		});
	</script> -->
</body>
</html>