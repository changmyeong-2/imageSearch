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
      </div>
      <form action="textSearch">
	  	<ul>
			<li>
				<input type="text" name="name">
				<button type="submit">검색</button>   
			</li>
	  	</ul>
      </form>
      &nbsp;
      <table class="table">
		<tr>
			<td>사진</td>
			<td>이름</td>
			<td>주소</td>
			<td>내용</td>
			<td>작성자</td>
		</tr>
		<c:forEach items="${list}" var="vo">
			<tr>
				<td><img src="${vo.img}"></td>
                <td>${vo.title}</td>
                <td>${vo.addr1}</td>
                <td>${vo.mapx}</td>
                <td>${vo.mapy}</td>    
            </tr>
		</c:forEach>
</table>
      <div class="col-sm-2 sidenav">
      </div>
    </div>
  </div>

</body>
</html>