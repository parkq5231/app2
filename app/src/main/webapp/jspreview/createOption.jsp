<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function addFruit() {
		//등록 누르면 input tag의 값을 select의 option태그 만들어서 추가
		var option = document.createElement("option");
		var fruit = document.getElementById("fruit");

		option.innerHTML = fruit.value;
		document.getElementById("list").add(option);

		//table에도 추가하기
		var tbl = document.getElementById("tbl");
		row = tbl.insertRow();
		cell = row.insertCell();
		cell.innerText = fruit.value;

		//input tag value clear
		fruit.value = "";

	}
</script>
</head>
<body>
	<input id="fruit">
	<button type="button" onclick="addFruit()">등록</button>
	<br>
	<select id="list" size=10></select>
	<table id="tbl" border="1"></table>
</body>
</html>