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
		<h1>The XMLHttpRequest Object</h1>
	</div>
	<button type="button" onclick="loadDoc()">Change Content</button>

	<script>
		function loadDoc() {
			var xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				member = JSON.parse(this.responseText);
				console.log(member);
				document.getElementById("demo").innerHTML += member.hobbys[0];
			}
			xhttp.onerror = function() {
				document.getElementById("demo").innerHTML += this.status;
			}
			xhttp.open("GET", "../FindMember");
			//로딩중 ...
			document.getElementById("demo").innerHTML = "error";
			xhttp.send();
		}
	</script>

</body>
</html>