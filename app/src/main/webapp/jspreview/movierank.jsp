<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button id="btn" onclick="loadMovie()">박스오피스 조회</button>
	<div id="result"></div>
	<div id="info"></div>
	<script>
		function loadInfo(movieCd){
			console.log(movieCd);
			//코드에 해당하는 영화의 상세정보를 조회-감독,출연배우 나오도록
			
		}
		function loadMovie() {
			var xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				//document.getElementById("result").innerHTML = xhttp.responseText;
				//parse
				var rank = JSON.parse(xhttp.responseText);
				//이름만 출력
				var list = rank.boxOfficeResult.dailyBoxOfficeList;
				for(movie of list){
					document.getElementById("result").innerHTML +=
						"<div onclick=loadInfo('" + movie.movieCd + "')>"+
						movie.movieNm+":"+movie.movieCd+"</div>";
					//document.getElementById("result").append(movieNm);
				}
				// console.log(movie.boxOfficeResult.dailyBoxOfficeList[0].movieNm);

			};//정상 응답시 실행할 callback
			var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
			xhttp.open("get", url);
			xhttp.send();
		}
	</script>
</body>
</html>