<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Wine Plan</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/button.css" />
<link rel="stylesheet" href="assets/css/noscript.css" />
<link rel="stylesheet" href="assets/css/script.js" />

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
	background: #ffffff;
    position: relative;
    left: 25%;
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
</head>
<body class="is-preload">
	<!-- Wrapper -->
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
				<!-- 주류 추천 페이지로 이동 -->
				<header>

		<div style="font-family: "Source Sans Pro", Helvetica, sans-serif;">
                  <h1 style="text-align: left; color: #585858;position: relative;left: 105px;line-height: 1.4;font-size: 85px;">
                     여러분의 취향에 맞는<br>여러종류의 와인을<br>추천받아 보세요!
                  </h1>
                  <h4
                     style="font-weight: 400; font-size: 30px; line-height: 2; margin: 0px 0 0px 0; letter-spacing: 0; position: relative; left: 121px;bottom: 69px;color: #585858;">
                     당도, 바디감, 가격만 선택하시면 원하시는 와인을 추천해드립니다.</h4>
                  <button class="button1" id="move_wine"
                     style="position: relative; left: 115px; bottom: 17px; border-radius: 23px;">
                     <h1>
                        <a href="elements.html" style="color: white;">추천 받기 →</a>
                     </h1>
                  </button>
               </div>
				
				
				</header>

				<section class="tiles">
					<article class="style1">
						<span class="image"> <img src="images/red.jpg" alt="" />
						</span> <a href="wineKind.jsp?data=레드와인&cnt=0">
							<h2>레드 와인</h2> <!-- <div class="content">
                                 <p>레드 와인 설명글</p>
                              </div> -->
						</a>
					</article>


					<article class="style2">
						<span class="image"> <img src="images/white.jpg" alt="" />
						</span> <a href="wineKind.jsp?data=화이트와인&cnt=0">
							<h2>화이트 와인</h2> <!-- <div class="content">
                                 <p>화이트 와인 설명글</p>
                              </div> -->
						</a>
					</article>

					<article class="style3">
						<span class="image"> <img src="images/sparkling.jpg" alt="" />
						</span> <a href="wineKind.jsp?data=스파클링와인&cnt=0">
							<h2>스파클링 와인</h2> <!-- <div class="content">
                                 <p>스파클링 와인 설명글</p>
                              </div> -->
						</a>
					</article>
					<article class="style4">
						<span class="image"> <img src="images/rose.jpg" alt="" />
						</span> <a href="wineKind.jsp?data=로제와인&cnt=0">
							<h2>로제 와인</h2> <!-- <div class="content">
                                 <p>로제 와인 설명글</p>
                              </div> -->
						</a>
					</article>
					<article class="style5">
						<span class="image"> <img src="images/port.png" alt="" />
						</span> <a href="wineKind.jsp?data=주정강화와인&cnt=0">
							<h2>주정강화 와인</h2> <!-- <div class="content">
                                 <p>주정강화 와인 설명글</p>
                              </div> -->
						</a>
					</article>
					<article class="style6">
						<span class="image"> <img src="images/highGradeWine.jpg"
							alt="" />
						</span> <a href="wineKind.jsp?data=고도주와인&cnt=0">
							<h2>고도주 와인</h2> <!-- <div class="content">
                                 <p>고도주  와인 설명글</p>
                              </div> -->
						</a>
					</article>
					<article class="style2">
						<span class="image"> <img src="images/etc.png" alt="" />
						</span> <a href="wineKind.jsp?data=기타와인&cnt=0">
							<h2>기타 와인</h2>

						</a>
					</article>

				</section>

			</div>
		</div>

		<!-- Footer -->
		<!-- <footer id="footer">
			<div class="inner" style="position: relative; top: 55px; left: 55px;">
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

	Scripts
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
 -->
</body>
</html>