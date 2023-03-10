<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Load the latest version of TensorFlow.js -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Import the webpage's stylesheet -->
<link rel="stylesheet" href="resources/css/style.css">
<title>Insert title here</title>
<body>
<h1>Make your own "Teachable Machine" using Transfer Learning with MobileNet v3 in TensorFlow.js using saved graph model from TFHub.</h1>

    <p id="status">Awaiting TF.js load</p>

    <video id="webcam" autoplay muted></video>

    <button id="enableCam">Enable Webcam</button>
    <button class="dataCollector" data-1hot="0" data-name="Class 1">Gather Class 1 Data</button>
    <button class="dataCollector" data-1hot="1" data-name="Class 2">Gather Class 2 Data</button>
    <button id="train">Train &amp; Predict!</button>
    <button id="reset">Reset</button>

    <!-- Import TensorFlow.js library -->
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@3.11.0/dist/tf.min.js" type="text/javascript"></script>

    <!-- Import the page's JavaScript to do some stuff -->
    <script type="module" src="resources/js/script.js"></script>
</body>
</html>