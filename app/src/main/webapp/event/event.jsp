<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){	//document ready => function
	$("#btnAdd").bind("click",function(){
		$("#result").append($("<li>").html("JSP")
				.css("backgroundColor","yellow")
				.attr("id","book")	//tag attribute
				.prop("alt","text")	//tag state
				.data("num","10"));	//hidden
	});
	$("ul").bind("click", "li", function(){
		$(event.target).remove();
		console.log(this);
		console.log(event.target);
	})
});

/* $(window).bind("load",function(){
	$("#btnAdd").bind("click",function(){
		$("#result").append($("<li>").html("JSP"));
	});
});
 */
</script>
<script>
	//DOM 객체가 생성 전이라 페이지 로드 이벤트를 걸어줘야함
/* 	window.addEventListener("load", function(event) {
 		document.getElementsByTagName("ul")[0].addEventListener("click", function() {
					//this.remove();
					//this = target
					event.target.parentNode.remove(event.target);
					//target = 실제 실행된 function
				}); */
/*		document.getElementById("btnAdd").addEventListener("click", function() {
			//create li tag
			var li = document.createElement("li");
			li.innerHTML = "자바";
			document.getElementById("result").appendChild(li);
		});

	});
*/
</script>
</head>
<body>
	<button type="button" id="btnAdd">추가</button>
	<ul id="result">
		<li>스프링</li>
	</ul>
</body>
</html>