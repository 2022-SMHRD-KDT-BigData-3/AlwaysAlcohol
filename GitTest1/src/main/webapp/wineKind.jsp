<%@page import="Model.WineDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.WineDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Wine Plan</title>

  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="">

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<link rel="stylesheet" href="assets/css/button.css" />

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="assets/css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="assets/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="assets/css/responsive.css" rel="stylesheet" />

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

</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">

			<section style="position: absolute; top: 2%; left: 2%;">
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
			<div class="inner" style="position: relative;left: 20px;">
				<header>
					<% String data = request.getParameter("data");
		  					String showWine="";
		  					String showWineK="";
		  					if(data.equals("레드와인")){
		  						showWine = "Red Wine";
		  						showWineK = "레드 와인";
		  					}else if(data.equals("화이트와인")){
		  						showWine = "White Wine";
		  						showWineK = "화이트 와인";
		  					}else if(data.equals("스파클링와인")){
		  						showWine = "Sparkling Wine";
		  						showWineK = "스파클링 와인";
		  					}else if(data.equals("로제와인")){
		  						showWine = "Rose Wine";
		  						showWineK = "로제 와인";
		  					}else if(data.equals("주정강화와인")){
		  						showWine = "Fortified Wine";
		  						showWineK = "주정강화 와인";
		  					}else if(data.equals("고도주와인")){
		  						showWine = "High Wine";
		  						showWineK = "고도주 와인";
		  					}else if(data.equals("기타와인")){
		  						showWine = "Other Wine";
		  						showWineK = "기타 와인";
		  					}
		  				WineDAO dao = new WineDAO();
		  				ArrayList<WineDTO> wineList = dao.selectKind(data);
		  			
		  			%>
					<h1><%= showWine %></h1>
					<br>
					<p style="color:#545454;">세계의 모든 <%= showWineK %>, 바로 여기에</p>
				</header>
				
				<!-- <section class="tiles"> -->
					  <section class="food_section layout_padding-bottom">
    <div class="container">
    
<!-- 상단 네임 -->    
<!--       <div class="heading_container heading_center">
        <h2>
          Our Menu
        </h2>
      </div> -->

<!-- 메뉴바 -->
<!--       <ul class="filters_menu">
        <li class="active" data-filter="*">All</li>
        <li data-filter=".burger">Burger</li>
        <li data-filter=".pizza">Pizza</li>
        <li data-filter=".pasta">Pasta</li>
        <li data-filter=".fries">Fries</li>
      </ul> -->
	
      <div class="filters-content">
        <div class="row grid">
<%--         <% int pageNum = 1; %>
         <% 
        	
        	pageNum = Integer.parseInt(request.getParameter("pageNumber")); 
        	%> --%>

  
	
		<% 
		String res = request.getParameter("cnt");
		int cnt = Integer.parseInt(res);
		%>
        	
        <% for(int i = cnt ; i < cnt+12 ; i++) {%>
          <div class="col-sm-6 col-lg-4 all pizza">
            <div class="box">
           <div style="height: 530px;">
                <div class="img-box">
                	<a href = "detail.jsp?wineId=<%=wineList.get(i).getWindId() %>">
                  <img src="./images/WineImg/WineImg<%= wineList.get(i).getWindId() %>.jpg" alt=""/>
                  </a>
                </div>
                <div class="detail-box"">
                  <span>
                 	<%= wineList.get(i).getWineName() %>
                  </span>
                  <p>
                    <br>
                    원산지 : <%= wineList.get(i).getCountry() %><br>
                    당도 : <%= wineList.get(i).getSweet() %><br>
                    도수 : <%= wineList.get(i).getProof() %>
                  </p>
                  
                  <div class="options">
                    <h9>
                    <%= wineList.get(i).getPrice() %>
                    </h9>
                    <!-- <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <% } %>
     <!--      <div class="col-sm-6 col-lg-4 all">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/wine.jpg" alt="">
                </div>
                <div class="detail-box">
                  <span>
                    G7 까베르네 소비뇽 2016
                  </span>
                  <p>
                    <br>
                    원산지 : 프랑스<br>
                    당도 : 낮음<br>
                    가격 : 25,000원
                  </p>
                  <div class="options">
                    <h9>
                      15 %alc
                    </h9>
                    <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/wine.jpg" alt="">
                </div>
                <div class="detail-box">
                  <span>
                    G7 까베르네 소비뇽 2016
                  </span>
                  <p>
                    <br>
                    원산지 : 프랑스<br>
                    당도 : 낮음<br>
                    가격 : 25,000원
                  </p>
                  <div class="options">
                    <h9>
                      15 %alc
                    </h9>
                    <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/wine.jpg" alt="">
                </div>
                <div class="detail-box">
                  <span>
                    G7 까베르네 소비뇽 2016
                  </span>
                  <p>
                    <br>
                    원산지 : 프랑스<br>
                    당도 : 낮음<br>
                    가격 : 25,000원
                  </p>
                  <div class="options">
                    <h9>
                      15 %alc
                    </h9>
                    <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/wine.jpg" alt="">
                </div>
                <div class="detail-box">
                  <span>
                    G7 까베르네 소비뇽 2016
                  </span>
                  <p>
                    <br>
                    원산지 : 프랑스<br>
                    당도 : 낮음<br>
                    가격 : 25,000원
                  </p>
                  <div class="options">
                    <h9>
                      15 %alc
                    </h9>
                    <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/wine.jpg" alt="">
                </div>
                <div class="detail-box">
                  <span>
                    G7 까베르네 소비뇽 2016
                  </span>
                  <p>
                    <br>
                    원산지 : 프랑스<br>
                    당도 : 낮음<br>
                    가격 : 25,000원
                  </p>
                  <div class="options">
                    <h9>
                      15 %alc
                    </h9>
                    <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/wine.jpg" alt="">
                </div>
                <div class="detail-box">
                  <span>
                    G7 까베르네 소비뇽 2016
                  </span>
                  <p>
                    <br>
                    원산지 : 프랑스<br>
                    당도 : 낮음<br>
                    가격 : 25,000원
                  </p>
                  <div class="options">
                    <h9>
                      15 %alc
                    </h9>
                    <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/wine.jpg" alt="">
                </div>
                <div class="detail-box">
                  <span>
                    G7 까베르네 소비뇽 2016
                  </span>
                  <p>
                    <br>
                    원산지 : 프랑스<br>
                    당도 : 낮음<br>
                    가격 : 25,000원
                  </p>
                  <div class="options">
                    <h9>
                      15 %alc
                    </h9>
                    <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/wine.jpg" alt="">
                </div>
                <div class="detail-box">
                  <span>
                    G7 까베르네 소비뇽 2016
                  </span>
                  <p>
                    <br>
                    원산지 : 프랑스<br>
                    당도 : 낮음<br>
                    가격 : 25,000원
                  </p>
                  <div class="options">
                    <h9>
                      15 %alc
                    </h9>
                    <a href="">
                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     -->  
<!--       더보기
      <div class="btn-box">
        <a href="">
          View More
        </a>
      </div> -->
      
    </div>
  </section>
					
				</section>
			</div>
		</div>

		<!-- 페이지 이동  -->
		<nav aria-label="Page navigation example" style="position: relative;right: 23%;">
			<ul class="pagination">
			<!-- 이전으로 -->
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				

				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=0"">1</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=12">2</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=24">3</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=36">4</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=48">5</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=60">6</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=72">7</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=84">8</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=96">9</a></li>
				<li class="page-item"><a class="page-link" href="wineKind.jsp?data=<%=data%>&cnt=108">10</a></li>

				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>

		<!-- Footer -->
		<!-- <footer id="footer">
			<div class="inner" style="margin: 46px;padding: 0 90px; position: relative; right: 20px;">
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