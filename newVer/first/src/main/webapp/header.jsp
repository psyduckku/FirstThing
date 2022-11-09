<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/header1.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<header>
			<nav>
				<div class="logo">
					<ul>
					 	<li><a href="index.jsp?filePath=home">LOGO</a></li>
					</ul>
				</div>
				<div class="menu">
					<ul> 
						<li><a href="#">소개</a></li>
						<li><a href="index.jsp?filePath=doTogether">함께가치</a></li>
						<li><a href="#">함께장터</a></li>
						<li><a href="#">더보기</a></li>
					 </ul>
				 </div>
				 <div class="right_icon">
					 <ul>
					 <c:choose>
					 	<c:when test="${loginUser!=null}">
					 		<li><a href="#">${loginUser.name}</a>님 환영합니다.</li>
					 	</c:when>
					 	<c:otherwise>					 
							<li><a href="login.jsp">로그인</a></li>
						</c:otherwise>
					</c:choose> 
						<li id="explor"><a href="#">Search</a> </li>
					 </ul>
				 </div>
			</nav>
	</header>
</div>
</body>
</html>