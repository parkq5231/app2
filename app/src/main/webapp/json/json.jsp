<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="result"></div>
	<div id="result2"></div>
	<script>
		var empList = [
			{id:100, name:"scott", hiredate:"2021/01/01"},
			{id:101, name:"홍길동", hiredate:"2021/01/02"},
			{id:102, name:"김유신", hiredate:"2021/01/03"},
					];
		
		var emp = {id:100, name:"scott", hiredate:"2021/01/01"};
		var arr = [ "John", "Peter", "Sally", "Jane" ];
		//Json타입 String 출력
		//사원의 이름을 div에 출력
		var id = document.getElementById("result");
		//id.innerHTML=empList.name;
		
		//normal for
		for(i=0;i<empList.length;i++){
			//id.innerHTML += empList[i].name+"<br>";
			//var br = document.createElement("br");
			//id.append(empList[i].name);
			//id.append(br);
		}		
		// expansion for
		for(emp of empList){
		//	id.innerHTML += emp.name+"<br>";
		}		
		//JSON stringify test		
		var id2 = document.getElementById("result2");
		var myJSON = JSON.stringify(emp);
		//id2.innerHTML=myJSON;
		//JSON stringify test2	
		var myJSON2 = JSON.stringify(arr);
		//id2.innerHTML=myJSON2;

		//부서정보를 저장
		var depts = [
			{department_id : 10, department_name : "Administration",
			manager_id : 200, location_id : 1700} ,
			{department_id : 20, department_name : "Marketing",
			manager_id : 201, location_id : 1800}
					];
		var member = { name:"hong", hobbys:["독서",'명상','달리기']};
		//첫번째 취미 출력해보기
		var result = document.getElementById("result")
		result.innerHTML="<br>취미:" + member.hobbys[0];
		//배열 접근
		var members = [
			{ name:"hong", hobbys:["독서",'명상','달리기'] },
			{ name:"kang", hobbys:["스키",'달리기'] }
					];
		result.innerHTML="<br>두번째 회원의 취미:"+members[1].hobbys[0];
		
	</script>
</body>
</html>