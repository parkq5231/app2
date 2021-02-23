<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#btn").on("click", function() {
			var url = "../FindName";
			var param = "userId=" + $("#userId").val();
			//1.load
			// $("#demo").load(url + "?" + param); //userId=?userId;
			//2.post,get
			$.get(url + "?" + param, function(response) { //응답결과가 1번째 인수
				// $("#demo").append("get:" + response);
			});
			//
			param = {
				userId : $("#userId").val(),
				dept : "IT_DEV"
			};// ?userId=userId&dept=IT_DEV
			$.post(url, param, function(response) {
				$("#demo").append("post:" + response);
			});
			//3.ajax
			$.ajax(url, {
				async : true, //비동기
				data : param,
				success : function(response) {
					$("#demo").append("ajax:" + response);
				}
			});
			//
		});
	});
</script>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest Object</h2>
	</div>
	<input id="userId">
	<button type="button" id="btn">Change Content</button>
</body>
</html>