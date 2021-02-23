<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>append.jsp</title>
<style>
div {
	margin: 10px;
	padding: 20px;
	border: 1px solid blue;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		//to do
		//id값이 apple인 사과의 값을 받아와서 div id=choose에 붙이기
	});
</script>
</head>
<body>
	<div id="bucket">
		<div id="apple">사과</div>
		<div id="banana">바나나</div>
		<div id="kiwi">키위</div>
	</div>
	<div id="choose"></div>
</body>
</html>