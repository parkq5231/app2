<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest Object</h2>
	</div>
	<input id="userId">
	<button type="button" onclick="loadDoc()">Change Content</button>

	<script>
		function loadDoc() {
			//1.XHR 객체 생성
			var xhttp = new XMLHttpRequest();
			//2.callback 함수 실행
			xhttp.onreadystatechange = function() {
				if (this.readyState < 4) {
					document.getElementById("demo").innerHTML = "loading...";
				} else if (this.readyState == 4) { //응답완료
					if (this.status == 200) { //OK
						document.getElementById("demo").innerHTML = this.responseText;//this = xhttp
					} else {
						document.getElementById("demo").innerHTML = this.status	+ "error";
					}
				}
			};
			//3.요청준비(url)
			var param = "userId=" + document.getElementById("userId").value;
			xhttp.open("POST", "../FindName?");//async = true, not async = false
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			//4.요청시작
			xhttp.send(param);
			document.getElementById("demo").innerHTML += "ajax send";
		}
	</script>
</body>
</html>