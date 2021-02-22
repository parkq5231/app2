<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<script>
	//id가 img1태그 크기 변경
	function img1width() {
		var img1 = document.getElementById("img1");
		img1.style.width = "100px";
	}
	//class가 backimg 인 첫번째 태그의 크기 변경
	function backimgWidth() {
		var backing = document.getElementsByClassName("backimg");
		backing[0].style.width = "200px";
	}
	//누를때마다 모든 이미지 크기 100px씩 줄이기
	function toSm() {
		//images method 다시 알아보기
		var images = document.images;
		var imgs = document.getElementsByTagName("img");

		for (var i = 0; i < imgs.length; i++) {
			//현재 이미지의 크기를 확인
			var image = images[i].width;
			var img = imgs[i].style.width;
			//크기 100빼서 지정
			image[i].width = parseInt(image) - 100 + "px";
			// imgs[i].style.width = parseInt(img) - 100 + "px";
		}
	}
</script>
<body>
	<button onclick="toSm()">작게</button>
	<button onclick="imgReset()">원래대로</button>
	<button onclick="imgBig()">크게</button>
	<br>

	<img id="img1" style="width: 500px" src="../images/Chrysanthemum.jpg">
	<img class="backimg" style="width: 600px"
		src="../images/Hydrangeas.jpg">
	<img class="backimg" style="width: 700px" src="../images/Jellyfish.jpg">
</body>
</html>