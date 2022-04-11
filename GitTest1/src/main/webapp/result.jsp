<%@page import="Model.WineDTO"%>
<%@page import="Model.WineDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Wine Plan</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload" style="position: relative;left: 25%;">
	
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

			<section style="position: absolute; top: 2%; left: 4%;">
				<!-- Logo -->
				<a href="index.jsp" class="logo"> <span class="symbol"><img
						src="images/logo.png" alt="" /></span><span class="title">Wine
						Plan</span>
				</a>
			</section>

							<!-- Nav -->
								<nav>
								<!-- 검색창 보류 -->
								
								</nav>
						</div>
					</header>


				<!-- Main -->
					<div id="main">
						<div class="inner">
				<section>
					<h1 style="position: relative;left: 102px;">와인정보</h1>
					<div class="box alt">
						
				</section>

			
							<!-- Table -->
								<section>
									<form action="#" style="padding: 0 5% 0 5%;position: relative;right: 70px;">
									<div>
									<span class="image fit"><img style="width: 38%; height: 604px; float:left; margin: 0% 5% 0% 5%;" src="./images/WineImg/WineImg<%= result %>.jpg"alt="" /></span>
									</div>
									
									<div class="table-wrapper">
										<table style="width: 90%; text-align: center; margin-inline: auto;">
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

					<!-- Footer -->
	<!-- 				<footer id="footer">
						<div class="inner" style="margin: 153px;position: relative;top: -85px;">
							<section>
								<h2>Get in touch</h2>
								<form method="post" action="#">
									<div class="fields">
										<div class="field half">
											<input type="text" name="name" id="name" placeholder="Name" />
										</div>
										<div class="field half">
											<input type="email" name="email" id="email" placeholder="Email" />
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
									<li><a href="#" class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon brands style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon brands style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon solid style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon solid style2 fa-envelope"><span class="label">Email</span></a></li>
								</ul>
							</section>
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>
			</div>

		Scripts
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body> -->
</html>