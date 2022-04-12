<%@page import="Model.WineDTO"%>
<%@page import="Model.WineDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Wine Plan</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		
				<style type="text/css">
* {
	border: 0;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

:root {
	font-size: calc(16px + ( 24 - 16)*(100vw- 320px)/(1920- 320));
}

body, button, input {
	font: 1em Hind, sans-serif;
	line-height: 1.5em;
}

body, input {
	color: #171717;
}

body, .search-bar {
	display: flex;
}

body {
	background: #f1f1f1;
	height: 100vh;
}

.search-bar input, .search-btn, .search-btn:before, .search-btn:after {
	transition: all 0.25s ease-out;
}


.search-bar input, .search-btn {
	width: 3em;
	height: 3em;
}

.search-bar input:invalid:not(:focus), .search-btn {
	cursor: pointer;
}

.search-bar, .search-bar input:focus, .search-bar input:valid {
	width: 50%;
}

.search-bar input:focus, .search-bar input:not(:focus)+.search-btn:focus
	{
	outline: transparent;
}

.search-bar {
	justify-content: flex-end;
    max-width: 30em;
    position: absolute;
    left: 55%;
    bottom: 91%;
}

.search-bar input {
	background: transparent;
	border-radius: 1.5em;
	box-shadow: 0 0 0 0.4em #171717 inset;
	padding: 0.75em;
	transform: translate(0.5em, 0.5em) scale(0.5);
	transform-origin: 100% 0;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.search-bar input::-webkit-search-decoration {
	-webkit-appearance: none;
}

.search-bar input:focus, .search-bar input:valid {
	background: #fff;
	border-radius: 0.375em 0 0 0.375em;
	box-shadow: 0 0 0 0.1em #d9d9d9 inset;
	transform: scale(1);
}

.search-btn {
	background: #171717;
	border-radius: 0 0.75em 0.75em 0/0 1.5em 1.5em 0;
	padding: 0.75em;
	position: relative;
	transform: translate(0.25em, 0.25em) rotate(45deg) scale(0.25, 0.125);
	transform-origin: 0 50%;
}

.search-btn:before, .search-btn:after {
	content: "";
	display: block;
	opacity: 0;
	position: absolute;
}

.search-btn:before {
	border-radius: 50%;
	box-shadow: 0 0 0 0.2em #f1f1f1 inset;
	top: 0.75em;
	left: 0.75em;
	width: 1.2em;
	height: 1.2em;
}

.search-btn:after {
	background: #f1f1f1;
	border-radius: 0 0.25em 0.25em 0;
	top: 51%;
	left: 51%;
	width: 0.75em;
	height: 0.25em;
	transform: translate(0.2em, 0) rotate(45deg);
	transform-origin: 0 50%;
}

.search-btn span {
	display: inline-block;
	overflow: hidden;
	width: 1px;
	height: 1px;
}

/* Active state */
.search-bar input:focus+.search-btn, .search-bar input:valid+.search-btn
	{
	background: black;
	border-radius: 0 0.375em 0.375em 0;
	transform: scale(1);
}

.search-bar input:focus+.search-btn:before, .search-bar input:focus+.search-btn:after,
	.search-bar input:valid+.search-btn:before, .search-bar input:valid+.search-btn:after
	{
	opacity: 1;
}

.search-bar input:focus+.search-btn:hover, .search-bar input:valid+.search-btn:hover,
	.search-bar input:valid:not(:focus)+.search-btn:focus {
	background: black;
}

.search-bar input:focus+.search-btn:active, .search-bar input:valid+.search-btn:active
	{
	transform: translateY(1px);
}

@media screen and (prefers-color-scheme: dark) {
	body, input {
		color: #f1f1f1;
	}
	body {
		background: #171717;
	}
	.search-bar input {
		box-shadow: 0 0 0 0.4em #f1f1f1 inset;
	}
	.search-bar input:focus, .search-bar input:valid {
		background: #3d3d3d;
		box-shadow: 0 0 0 0.1em #3d3d3d inset;
	}
	.search-btn {
		background: #f1f1f1;
	}
	
	html,body,#wrapper{
		width: 100%;
		height: 100%;
	}
	
	
</style>
	</head>
	<body class="is-preload" style="display: flex;justify-content: center; width: 100%; height: 100%;">
	
	<%
		String res = request.getParameter("result");
		int result = Integer.parseInt(res);
		
		WineDAO dao = new WineDAO();
		WineDTO dto = dao.selectWine(result);
		
		System.out.println(result+3);
	%>
	
	<div id="wrapper">

		<!-- Header -->
		<header id="header">

			<section style="position: absolute; top: 2%; left: 10%;">
				<!-- Logo -->
				<a href="index.jsp" class="logo"> <span class="symbol"><img
						src="images/logo.png" alt="" /></span><span class="title">Wine
						Plan</span>
				</a>
			</section>

							
								<!-- 검색창 -->
			<div class="container">
				<form action="SearchWine.jsp" class="search-bar">
					<input type="search" name="search" pattern=".*\S.*" required>
					<button class="search-btn" type="submit">
						<span>Search</span>
					</button>
				</form>
			</div>
					</header>


				<!-- Main -->
					<div id="main">
						<div class="inner">
				<section>
				<h1 style="position: absolute;top: 10%;left: 12%;">와인정보</h1>
					<div class="box alt">
						
				</section>

			
							<!-- Table -->
								<section>
									<form action="#" >
									<div>
									<span class="image fit"><img style="width: 500px; height: 713px; float: left; position: fixed; left: 9%; margin: 2%;bottom: 19%;" src="./images/WineImg/WineImg<%= result %>.jpg"alt="" /></span>
									</div>
									
									<div class="table-wrapper">
										<table style="text-align:center; position: absolute;left: 33%;width: 40%;bottom: 22%;margin: 0 auto;height: 58%;font-size: large;">
											<thead>
												<tr>
													<th>이름</th>
													<td><%= dto.getWineName() %></td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th>종류</th>
													<td><%= dto.getKind() %></td>
												</tr>
												<tr>
													<th>생산국</th>
													<td><%= dto.getCountry() %></td>
												</tr>
												<tr>
													<th>품종</th>
													<td><%= dto.getCultivar() %></td>
												</tr>
												<tr>
													<th>당도</th>
													<td><%= dto.getSweet() %></td>
												</tr><tr>
													<th>산도</th>
													<td><%= dto.getAcid() %></td>
												</tr>
												<tr>
													<th>바디</th>
													<td><%= dto.getBody() %></td>
												</tr>
												<tr>
													<th>타닌</th>
													<td><%= dto.getTanin() %></td>
												</tr>
												<tr>
													<th>도수</th>
													<td><%= dto.getProof() %></td>
												</tr><tr>
													<th>가격</th>
													<td><%= dto.getPrice() %></td>
												</tr>
											</tbody>
										</table>
									</div>
									</form>
								</section>

	</body>
</html>