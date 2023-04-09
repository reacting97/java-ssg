<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>layout1 - html4</title>
<style type="text/css">
#wrap {width: 960px; height: 800px; margin: 0 auto; color: #FFF; text-align: center; font-size: 30px;}
#header {width: 960px; height: 100px; line-height: 100px; background-color: #111;}
#nav {width: 960px; height: 100px; line-height: 100px; background-color: #222;}
#sidebar {width: 360px; height: 500px; line-height: 500px; background-color: #333; float: left;}
#contents {width: 600px; height: 500px; line-height: 500px; background-color: #444; float: left;}
#footer {width: 960px; height: 100px; line-height: 100px; background-color: #555; clear: both;}
</style>
</head>
<body>
	<div id="wrap">
		<div id="header">header</div>
		<div id="nav">nav</div>
		<div id="sidebar">sidebar</div>
		<div id="contents">contents</div>
		<div id="footer">footer</div>
	</div>
</body>
</html>