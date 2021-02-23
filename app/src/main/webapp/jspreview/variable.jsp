<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	"use strict";//변수선언 필수

	var v1 = 10;
	function f1() {
		{
			//var i1 = 10;
			let i1 = 10;
		}
		v1 = 20;
		console.log(i1);
	}

	function f2() {
		v1 = 30;
		console.log(i1);
	}
</script>
</head>
<body>

</body>
</html>