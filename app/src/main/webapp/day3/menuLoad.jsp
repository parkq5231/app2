<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>class.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
ul, li {
	padding: 0px;
	margine: 0px;
}

.menu {
	border: 1px solid blue;
	background-color: gray;
	display: inline;
}

.active {
	background-color: yellowgreen;
}
</style>
<script>
	$(function() {
		//menu class click => data-url에 해당하는 페이지를 요청하고 
		//결과를 div result에 출력하기
		//load,ajax사용 상관없음
		//html type data는 생략가능
		$("li.menu").on("click", function() {
			//active 변환시키는 거
			$("li.menu").removeClass("active");
			$(this).addClass("active");
			//console.log($(this).data("url"));

			//ajax
			$.ajax({
				url : $(this).data("url") + ".jsp",
				success : function(result) {
					$("#result").append(result);
				},
				dataType : "html"
			})
		});
	})
</script>
</head>
<body>
	<ul>
		<li class="menu" data-url="board">게시판</li>
		<li class="menu" data-url="member">회원가입</li>
		<li class="menu active" data-url="login">로그인</li>
	</ul>
	<div id="result">페이지 조회</div>
</body>
</html>