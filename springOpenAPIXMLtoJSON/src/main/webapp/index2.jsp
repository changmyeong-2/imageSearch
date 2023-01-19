<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Load the latest version of TensorFlow.js -->
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow-models/mobilenet"></script>
<title>Insert title here</title>
<body>
<!-- <a href="tourAAA">call</a> -->
<a href="tourAAA">main</a>
<a href="main">search</a>
    <div id="console"></div>
    <!-- Add an image that we will use to test -->
    <img id="img" crossorigin src="https://i.imgur.com/JlUvsxa.jpg" width="227" height="227"/>
    <!-- Load index.js after the content of the page -->
    <script src="resources/js/index.js"></script>
</body>
</html>