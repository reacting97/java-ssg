<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>layout2</title>
<style type="text/css">
	#wrap {width: 960px; height: 800px; margin: 0 auto; color: #FFF; text-align: center; font-size: 30px;}
header {width: 960px; height: 100px; line-height: 100px; background-color: #111;}
nav {width: 960px; height: 100px; line-height: 100px; background-color: #222;}
article {width: 360px; height: 500px; line-height: 500px; background-color: #333; float: left;}
section {width: 600px; height: 500px; line-height: 500px; background-color: #444; float: left;}
footer {width: 960px; height: 100px; line-height: 100px; background-color: #555; clear: both;}
</style>
</head>
<body>
	<div id="wrap">
		<header>header</header>
		<nav>nav</nav>
		<article>article</article>
		<section>section</section>
		<footer>footer</footer>
	</div>
</body>
</html>