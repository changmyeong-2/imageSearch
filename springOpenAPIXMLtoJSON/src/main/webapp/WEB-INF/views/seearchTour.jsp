<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- ν€λ -->
<div class="container">
	<header class="d-flex justify-content-center py-3">
		<h1 style="color: #1E4FFF;">πλΆμ°λ‘λπ &nbsp;&nbsp;&nbsp;</h1>
			<ul class="nav nav-pills">
				<li class="nav-item"><a href="#" class="nav-link">μ§μ­λ³λ‘ λ³΄κΈ°</a></li>
				<li class="nav-item"><a href="#" class="nav-link">ν΄μμμ₯</a></li>
				<li class="nav-item"><a href="#" class="nav-link">λ¬΄μ₯μ  μ¬ν</a></li>
				<li class="nav-item"><a href="#" class="nav-link">κ²μ</a></li>
				<li class="nav-item"><a href="#" class="nav-link">νΌμ‘λ μμλ³΄κΈ°</a></li>
			</ul>
	</header>
	<hr>
</div>

<div class="container-fluid text-center">    
    <div class="row content">
      <div class="col-sm-2 sidenav">
      </div>
      <form action="textSearch">
	  	<ul>
			<li>
				<input type="text" name="name">
				<button type="submit">κ²μ</button>   
			</li>
	  	</ul>
      </form>
      &nbsp;
      <table class="table">
		<tr>
			<td>μ¬μ§</td>
			<td>μ΄λ¦</td>
			<td>μ£Όμ</td>
			<td>λ΄μ©</td>
			<td>μμ±μ</td>
		</tr>
			<tr>
				<td><a href="${vo.img}"><img src="${vo.img}" alt="λ‘λ© μ€ν¨"></a></td>
                <td>${vo.title}</td>
                <td>${vo.addr1}</td>
                <td>${vo.mapx}</td>
                <td>${vo.mapy}</td>    
            </tr>
		</table>
      <div class="col-sm-2 sidenav">
      </div>
    </div>
  </div>

</body>
</html>