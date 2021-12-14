<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.my.app.board.BoardDAO, com.my.app.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/lib/w3.css">
<link rel="stylesheet" href="/lib/bootstrap.min.css">
<title>Main</title>
<style>
body {
	background-image: linear-gradient(to right, #ffecd2 0%, #fcb69f 100%);
}
</style>
</head>
<body>

	<!-- 페이지 전체 Container -->
	<div class="w3-content w3-margin-top" style="max-width: 1400px;">

		<!-- 배너 -->
		<div class="banner">
			<div
				class="navbar w3-white w3-wide w3-padding w3-card-4 w3-round-xlarge">
				<a href="#" onclick="location.href='main'"
					class="w3-tag w3-button w3-hover-none w3-white w3-xlarge w3-hover-text-blue w3-round-large">
					GRADE MANAGER</a>
				<!-- 오른쪽으로 정렬하고 작아지면 숨기는 기능 -->
				<div class="w3-right w3-hide-small">
					<a href="#" onclick="location.href='member'"
						class="w3-bar-item w3-button w3-hover-none w3-hover-text-blue w3-mobile">MEMBER</a>
					<a href="#" onclick="location.href='main'"
						class="w3-bar-item w3-button w3-hover-none w3-hover-text-blue w3-mobile">BOARD</a>
					<a href="#" onclick="location.href='about'"
						class="w3-bar-item w3-button w3-hover-none w3-hover-text-blue w3-mobile">ABOUT</a>
				</div>
			</div>
		</div>

		<div class="row">
			<!-- 가운데 메인 화면 구성 -->
			<div class="col-sm-2 w3-margin-top"
				style="width: 100%; height: 100%;">
				<div class="w3-white w3-black w3-card-4 w3-round-large">
					<p>
						<span
							class="w3-tag w3-margin-left w3-margin-top  w3-xlarge w3-padding w3-round-large"
							style="width: 85%;"><i class="fa fa-list-ul" aria-hidden="true"></i> Function </span>
					</p>
					<p>
						<a href="#" onclick="location.href='member'"> <span
							class="w3-tag w3-white w3-hover-red w3-margin-left  w3-xlarge w3-padding w3-round-large w3-center"
							style="width: 85%;"> Member </span>
						</a>
					</p>
					<p>
						<a href="#" onclick="location.href='main'"> <span
							class="w3-tag w3-white w3-margin-left w3-hover-red w3-xlarge w3-padding w3-round-large w3-center"
							style="width: 85%;"> Board </span>
						</a>
					</p>
					<p>
						<a href="#" onclick="location.href='about'"> <span
							class="w3-tag w3-white w3-margin-left w3-hover-red w3-xlarge w3-padding w3-round-large w3-center"
							style="width: 85%;"> About </span>
						</a>
					</p>
					<p>
						<a href="#" onclick="location.href='func1'"> <span
							class="w3-tag w3-white w3-margin-left w3-hover-red w3-xlarge w3-padding w3-round-large w3-center"
							style="width: 85%;"> Function1 </span>
						</a>
					</p>
					<p>
						<a href="#" onclick="location.href='func2'"> <span
							class="w3-tag w3-white w3-margin-bottom w3-hover-red w3-margin-left  w3-xlarge w3-padding w3-round-large w3-center"
							style="width: 85%;"> Function2 </span>
						</a>
					</p>
				</div>
			</div>
			<div class="col-sm-10 w3-margin-top w3-margin-bottom">

				<!-- 메인 화면 베너 구성 -->
				<div class="w3-white w3-text-grey w3-card-4 w3-round-large"
					style="width: 100%; height: 100%;">
					<p>
						<span class="w3-tag w3-margin-left w3-margin-top w3-xxlarge w3-padding w3-round-large w3-center">
							ABOUT </span>
							<span class="w3-tag w3-margin-left w3-margin-right w3-margin-bottom w3-xlarge w3-padding w3-round-large w3-center">
							개인 성적 관리 & 회원 관리 프로젝트</span>
							
							
							<span class="w3-tag w3-margin-left w3-margin-right w3-margin-top  w3-xlarge w3-padding w3-round-large w3-center">
							<i class="fa fa-hand-paper-o" aria-hidden="true"></i> 서비스 목적 및 개발 이유 (Purpose and Motivation)</span>
							
							
							<span class="w3-tag w3-light-grey w3-margin-left w3-margin-right  w3-xMedium w3-padding w3-round-large w3-center">
							서비스 목적 : "성적관리" 를 꾸준히 하지 못하는 학생들을 위해 간편히 성적기록을 도움
							</span>
							<span class="w3-tag w3-light-grey w3-margin-left w3-margin-right w3-margin-top w3-xMedium w3-padding w3-round-large w3-center">
							개발 이유 : CRUD 기능을 이용해 삶이 좀 더 편해지기 위함</span>
							<span class="w3-tag" style="width: 100%";></span>
							
							<span class="w3-tag w3-margin-left w3-margin-right w3-margin-top w3-xlarge w3-padding w3-round-large w3-center">
							<i class="fa fa-handshake-o" aria-hidden="true"></i> 팀원 (Team Member)</span>
							<span class="w3-tag" style="width: 100%";></span>
							
							<span class="w3-tag w3-light-grey w3-margin-left w3-margin-right w3-xMedium w3-padding w3-round-large w3-center">
							김현욱 21800201<br>
							김형진 21800203</span>
							<span class="w3-tag" style="width: 100%";></span>
							
							<div class="row">
								<div class="col-sm-6">
									<span class="w3-tag w3-margin-left w3-margin-right w3-margin-top w3-xlarge w3-padding w3-round-large w3-center">
									<i class="fa fa-check-square" aria-hidden="true"></i> 팀원 별 역할 분담 (Role Distribution)</span>
									<span class="w3-tag" style="width: 100%";></span>
									
									<span class="w3-tag w3-light-grey w3-margin-left w3-margin-right  w3-xMedium w3-padding w3-round-large w3-left-align">
										1. Table 만들기<br>
										2. 벡 엔드(Back-end) 구현<br>
										3. 프론트 엔드(Front-end)꾸미기<br>
										4. 필요한 기능 정리하기<br>
										5. 로그인 페이지 구상 및 의논하기<br>
										6. 등등<br>
									</span>
								</div>
								<div class="col-sm-6">
									<span class="w3-tag w3-margin-left w3-margin-right w3-margin-top w3-xlarge w3-padding w3-round-large w3-center">
									<i class="fa fa-check-square" aria-hidden="true"></i> 구현한 기능 (Function)</span>
									<span class="w3-tag" style="width: 100%";></span>
									
									<span class="w3-tag w3-light-grey w3-margin-left w3-margin-right  w3-xMedium w3-padding w3-round-large w3-left-align">
										1. Table 만들기<br>
										2. 벡 엔드(Back-end) 구현<br>
										3. 프론트 엔드(Front-end)꾸미기<br>
										4. 필요한 기능 정리하기<br>
										5. 로그인 페이지 구상 및 의논하기<br>
										6. 등등<br>
									</span>
								</div>
							</div>
						<span class="w3-tag" style="width: 100%";></span>
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>