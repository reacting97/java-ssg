<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style type="text/css">
*{
	margin:0;
	padding:0;
	box-sizing:border-box;
}

body{
	background-color: darkslateblue;
}

.wrap{
	position :absolute;
	top:50%;
	left:50%;
	transform: translate(-50%, -50%);
	color: white;
	text-align: center;
}

.material-icons{
	font-size:10rem;
}

.lg-text{
	font-size:2rem;
	font-weight: bold;
	margin-bottom: 5px;
}

.sm-text{
	font-size:1.5rem;
}

#dynamic{
	position: relative;
	display: inline-block;
	
}

#dynamic::after{
	content:"";
	display: block;
	position: absolute;
	top:0;
	right:-10px;
	width:4px;
	height: 100%;
	background-color: white;
}

#dynamic.active::after{
	display: none;
}
</style>
<script type="text/javascript">
let target = document.querySelector("#dynamic");
let stringArr = ["Learn to HTML","Learn to CSS","Learn to Javascript","Learn to Python","Learn to Java"];
let selectString = stringArr[Math.floor(Math.random() * stringArr.length)];
console.log(selectString);
function blink(){
	target.classList.toggle("active");
}
setInterval(blink, 500);
</script>
</head>
<body>
	<div class="wrap">
		<h1>
			<span class="material-icons">language</span>
		</h1>
		<p id="dynamic" class="lg-text">
			Learn to HTML
		</p>
		<p class="sm-text">SUCODING | 100 Sub</p>
	</div>
</body>
</html>