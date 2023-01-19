<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searchPage</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!-- 헤더 -->
<div class="container">
	<header class="d-flex justify-content-center py-3">
		<h1 style="color: #1E4FFF;">🕊부산로드🕊 &nbsp;&nbsp;&nbsp;</h1>
			<ul class="nav nav-pills">
				<li class="nav-item"><a href="#" class="nav-link">지역별로 보기</a></li>
				<li class="nav-item"><a href="#" class="nav-link">해수욕장</a></li>
				<li class="nav-item"><a href="#" class="nav-link">무장애 여행</a></li>
				<li class="nav-item"><a href="#" class="nav-link">검색</a></li>
				<li class="nav-item"><a href="#" class="nav-link">혼잡도 알아보기</a></li>
			</ul>
	</header>
	<hr>
</div>

<div class="container-fluid text-center">    
    <div class="row content">
      <div class="col-sm-2 sidenav">
      &nbsp;
      </div>
      <form action="textSearch">
	  	<ul>
			<li>
				<input type="text" name="title">
				<button type="submit">검색</button>   
			</li>
	  	</ul>
      </form>
      &nbsp;
		<button type="button" width="250" onclick="init()">이미지 검색 이용</button>
		<div id="webcam-container"></div>
		<div id="label-container"></div>
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>
		<script type="text/javascript">
		    // More API functions here:
		    // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/image
		
		    // the link to your model provided by Teachable Machine export panel
		    const URL = "resources/my_model/";
		
		    let model, webcam, labelContainer, maxPredictions;
		
		    // Load the image model and setup the webcam
		    async function init() {
		        const modelURL = URL + "model.json";
		        const metadataURL = URL + "metadata.json";
		
		        // load the model and metadata
		        // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
		        // or files from your local hard drive
		        // Note: the pose library adds "tmImage" object to your window (window.tmImage)
		        model = await tmImage.load(modelURL, metadataURL);
		        maxPredictions = model.getTotalClasses();
		
		        // Convenience function to setup a webcam
		        const flip = true; // whether to flip the webcam
		        webcam = new tmImage.Webcam(400, 400, flip); // width, height, flip
		        await webcam.setup(); // request access to the webcam
		        await webcam.play();
		        window.requestAnimationFrame(loop);
		
		        // append elements to the DOM
		        document.getElementById("webcam-container").appendChild(webcam.canvas);
		        labelContainer = document.getElementById("label-container");
		        for (let i = 0; i < maxPredictions; i++) { // and class labels
		            labelContainer.appendChild(document.createElement("div"));
		        }
		    }
		
		    async function loop() {
		        webcam.update(); // update the webcam frame
		        await predict();
		        window.requestAnimationFrame(loop);
		    }
		    // run the webcam image through the image model
		    async function predict() {
		        // predict can take in an image, video or canvas html element
		        var result = 0;
		        
		        const prediction = await model.predict(webcam.canvas);
		        console.log(webcam.canvas)
		        for (let i = 0; i < maxPredictions; i++) {
		            const classPrediction =
		                prediction[i].className + ": " + prediction[i].probability.toFixed(2);
		                console.log(prediction[i].className + ": " + prediction[i].probability.toFixed(2))
		                if (prediction[i].probability.toFixed(2) > 0.7){
		                	result = prediction[i].className;
		                }
		            // labelContainer.childNodes[i].innerHTML = classPrediction;
		            console.log(result);
		            /* $(document).ready(function(){
		            	$('result').val(result)
		            }) */
		            document.getElementById("Name").value = result;
		        }
		    }
		</script>
		<form action="textSearch" onload="prediction">
			  	<ul>
					<li>
						<button type="submit" name="title" id="Name">검색</button>   
					</li>
			  	</ul>
		      </form>
      
      <div class="col-sm-2 sidenav">
      &nbsp;
      </div>
    </div>
  </div>

</body>
</html>