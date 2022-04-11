<%@page import="Model.WineDTO"%>
<%@page import="Model.WineDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    left: 48%;
    bottom: 82%;
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
	

</style>
<html>
	<head>
		<title>Wine Plan</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<section style="position:absolute;top: 2%; left: 2%;">
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
			
		</header>



		<!-- Main -->
		<div id="main">
			<div class="inner">
				<section>
					<h1>와인정보</h1>
					<div class="box alt">
				</section>
				<% 
						String res = request.getParameter("wineId");
						int wineId = Integer.parseInt(res);
			
						WineDAO dao = new WineDAO();
						WineDTO dto = dao.selectWine(wineId);
					%>

				<!-- Table -->
				<section>
					<form action="#">
						<div>
							<span class="image fit"><img
								style="width: 38%; height: 604px; float: left; margin: 0% 5% 0% 5%;"
								src="./images/WineImg/WineImg<%= wineId %>.jpg" alt="" /></span>
						</div>

						<div class="table-wrapper">
							<table
								style="width: 90%; text-align: center; margin-inline: auto;">
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
									</tr>
									<tr>
										<th>산도</th>
										<td><%= dto.getAcid() %></td>
									</tr>
									<tr>
										<th>바디</th>
										<td>조금 가벼운 바디</td>
									</tr>
									<tr>
										<th>타닌</th>
										<td><%= dto.getTanin() %></td>
									</tr>
									<tr>
										<th>도수</th>
										<td><%= dto.getProof() %></td>
									</tr>
									<tr>
										<th>가격</th>
										<td><%= dto.getPrice() %></td>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<div class="inner" style="margin: 0px 0px 0px 268px;position: relative;right: 8%;">
						<section>
							<h2>Get in touch</h2>
							<form method="post" action="#">
								<div class="fields">
									<div class="field half">
										<input type="text" name="name" id="name" placeholder="Name" />
									</div>
									<div class="field half">
										<input type="email" name="email" id="email"
											placeholder="Email" />
									</div>
									<div class="field">
										<textarea name="message" id="message" placeholder="Message"></textarea>
									</div>
								</div>
								<ul class="actions">
									<li><input type="submit" value="Send" class="primary" /></li>
								</ul>
							</form>
						</section>
						<section>
							<h2>Follow</h2>
							<ul class="icons">
								<li><a href="#" class="icon brands style2 fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands style2 fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands style2 fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands style2 fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon brands style2 fa-github"><span
										class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands style2 fa-500px"><span
										class="label">500px</span></a></li>
								<li><a href="#" class="icon solid style2 fa-phone"><span
										class="label">Phone</span></a></li>
								<li><a href="#" class="icon solid style2 fa-envelope"><span
										class="label">Email</span></a></li>
							</ul>
						</section>
						<ul class="copyright">
							<li>&copy; Untitled. All rights reserved</li>
							<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</footer>
			</div>

			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>