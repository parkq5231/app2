<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<style>
</style>
</head>
<body>
	<h2>Hello World!</h2>
	<div id="result">event test</div>
	<div id="result2">아무거나</div>

	<script>
		var div = document.getElementById("result");
		var div2 = document.getElementById("result2");
		//type			//handler		
		div.onclick = clickHandler;
		div2.onclick = clickHandler;

		function clickHandler(e) { //e = event 객체(이벤트와 관련된 모든 정보)
			//target = 이벤트가 발생한 대상 태그
			console.log(e.target.id, e.clientX, e.clientY);
		}
	</script> 
</body>
</html>
