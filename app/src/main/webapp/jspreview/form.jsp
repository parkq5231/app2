<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function validateForm() {
		var x = document.forms["myForm"]["fname"].value;
		if (x == "") {
			alert("Name must be filled out");
			document.forms.myForm.fname.focus();
			return false;
		}
		// value, selectedIndex
		// var job = document.forms.myForm.job.value;
		// var job = document.forms[0].elements[1].value;
		// var job = document.getElementsByName("job")[0].value;
		// index or name property
		var job = document.myForm.job.selectedIndex;
		if (job <= 0) { //0번인 경우 no select = -1
			alert("Job must be selected");
			document.forms.myForm.job.focus();
			return false;
		}
		// 채크박스 과제
		// 채크된 갯수가 하나 이상인지 채크 for 사용
		// document.myForm.hobby.length
		//console에선 잘 되는데 jsp 파일에선 안됨 이유를 모르겠음
		var hobby = document.myForm.hobby;
		for(var i = 0 ; i < hobby.length;i++){
			if(hobby[i].checked = false){
			alert("hobby must be checked");
			document.forms.myForm.hobby.focus();
			return false;
			}
		}			
		//
		document.forms["myForm"].submit();
	}//end of function
</script>
</head>
<body>
	<form name="myForm" action="action_page.jsp" method="post">

		Name: <input type="text" name="fname"><br>
		<select name="job">
			<option value="">선택</option>
			<option value="dgn">디자이너</option>
			<option value="pgm">프로그래머</option>
		</select> <br>
		취미
		<input type="checkbox" name="hobby" value="read">독서
		<input type="checkbox" name="hobby" value="jog">달리기 <br>
		<button type="button" onclick="validateForm()">등록</button>
	</form>
</body>
</html>