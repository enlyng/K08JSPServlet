<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="./common/jquery/jquery-3.6.0.js"></script>
<script src="https://kit.fontawesome.com/54b3b8eebf.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>
    /* Whole */
    a {
      text-decoration: none;
    }

    /* Header */
    .header {
      padding-top: 9px;
      padding-bottom: 8px;
      padding-right: 200px;
      text-align: right;
      /* max-width: 1550px; */
      font-size: 14px;
      height: 42px;
    }
    .header a {
      padding: 4px;
      padding-left: 20px;
    }

    /* subHeader */
    ul li a.main_logo {
      padding-left: 70px;
      display: inline-block;
      padding-top: 13px;
      /* border: 1px solid red; */
    }
    .subHeader {
      display: inline-block;
      position: relative;
      padding-left: 0;
      /* border: 1px solid red; */
    }
    a.subHeader_Menu {
      font-size: 22px;
      color: black;
      padding: 17px;
      display: inline-block;
    }
    button li::marker {
      color: lightgray;
    }
    #move1 {
      position: relative;
      bottom: 65px;
    }
    #move2 {
      position: relative;
      bottom: 150px;
    }
    .under_menu1:hover {
      background-color: rgb(99, 99, 223);
      color: white;
    }
    .fa-xmark-large {
      /* line-height: 30px; */
      color: rgb(255, 255, 255);
      background-color: rgb(109, 145, 255);
    }
    .fa-magnifying-glass {
      /* line-height: 30px; */
    }
    #inputpart::-webkit-input-placeholder {
      color: white;
    }
    #inputpart {
      /* width: 560px; */
      text-align: left;
    }
	div.whole_menu ul{
		list-style-type: '-';
	}
	input#b{
	border: 0;
	background-color: #f0f3f9;
	}
	input.m01_main{
		border: 1px solid #5973E1; 
		text-align: center; 
		background-color: white; 
		font-size: 1.3em; 
		font-weight: bold; 
		padding: 10px 0 10px 0px; 
		margin-bottom: 3px;
		width: 230px
	}
	div.m01 input{
		margin: 0 0 5px 0;
		padding: 10px 0 10px 0;
	}
	ul.m_item a {
		color: black;
		margin-left: 5px;
	}
	ul.m_item a:hover {
		color: #5973E1;
		text-decoration: underline;
	}
	div.m01:hover input.m01_main{
		border: 3px solid #5973E1;
	}
	div.m01_parent01:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m01_parent02:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m01_parent03:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m01_parent04:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m01_parent05:hover {
		background-color: #5973E1;
	}
	div.m01_parent05:hover #b{
		background-color: #5973E1;
		color: white;
	}
	input.m02_main{
		border: 1px solid #5973E1; 
		text-align: center; 
		background-color: white; 
		font-size: 1.3em; 
		font-weight: bold; 
		padding: 10px 0px 10px 0; 
		margin-bottom: 3px;
		width: 230px
	}
	div.m02 input{
		margin: 0 0 5px 0;
		padding: 10px 0 10px 0;
	}
	div.m02-1:hover input.m02_main{
		border: 3px solid #5973E1;
	}
	div.m02_parent01:hover{
		background-color: #5973E1;
	}
	div.m02_parent01:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m02_parent02:hover {
		background-color: #5973E1;
	}
	div.m02_parent02:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m02_parent03:hover {
		background-color: #5973E1;
	}
	div.m02_parent03:hover #b{
		background-color: #5973E1;
		color: white;
	}
	input.m02_main-1{
		border: 1px solid #5973E1; 
		text-align: center; 
		background-color: white; 
		font-size: 1.3em; 
		font-weight: bold; 
		padding: 10px 0px 10px 0; 
		margin-bottom: 3px;
		width: 230px
	}
	input.m02_main-1:hover{
		border: 3px solid #5973E1;
	}
	input.m03_main{
		border: 1px solid #5973E1; 
		text-align: center; 
		background-color: white; 
		font-size: 1.3em; 
		font-weight: bold; 
		padding: 10px 0px 10px 0; 
		margin-bottom: 3px;
		width: 230px
	}
	div.m03 input{
		margin: 0 0 5px 0;
		padding: 10px 0 10px 0;
	}
	div.m03:hover input.m03_main{
		border: 3px solid #5973E1;
	}
	div.m03_parent01:hover {
		background-color: #5973E1;
	}
	div.m03_parent01:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m03_parent02:hover {
		background-color: #5973E1;
	}
	div.m03_parent02:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m03_parent03:hover #b{
		background-color: #5973E1;
		color: white;
	}
	input.m04_main{
		border: 1px solid #5973E1; 
		text-align: center; 
		background-color: white; 
		font-size: 1.3em; 
		font-weight: bold; 
		padding: 10px 0px 10px 0; 
		margin-bottom: 3px;
		width: 230px
	}
	div.m04 input{
		margin: 0 0 5px 0;
		padding: 10px 0 10px 0;
	}
	div.m04:hover input.m04_main{
		border: 3px solid #5973E1;
	}
	div.m04_parent01:hover{
		background-color: #5973E1;
	}
	div.m04_parent01:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m04_parent02:hover {
		background-color: #5973E1;
	}
	div.m04_parent02:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m04_parent03:hover {
		background-color: #5973E1;
	}
	div.m04_parent03:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m04_parent04:hover {
		background-color: #5973E1;
	}
	div.m04_parent04:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m04_parent05:hover {
		background-color: #5973E1;
	}
	div.m04_parent05:hover #b{
		background-color: #5973E1;
		color: white;
	}
	input.m05_main{
		border: 1px solid #5973E1; 
		text-align: center; 
		background-color: white; 
		font-size: 1.3em; 
		font-weight: bold; 
		padding: 10px 0px 10px 0; 
		margin-bottom: 3px;
		width: 230px
	}
	input.m05_main:hover{
		border: 3px solid #5973E1;
	}
	div.m05 input{
		margin: 0 0 5px 0;
		padding: 10px 0 10px 0;
	}
	div.m05-1:hover input.m05_main-1{
		border: 3px solid #5973E1;
	}
	div.m05_parent01:hover{
		background-color: #5973E1;
	}
	div.m05_parent01:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m05_parent02:hover {
		background-color: #5973E1;
	}
	div.m05_parent02:hover #b{
		background-color: #5973E1;
		color: white;
	}
	div.m05_parent03:hover {
		background-color: #5973E1;
	}
	div.m05_parent03:hover #b{
		background-color: #5973E1;
		color: white;
	}
	input.m05_main-1{
		border: 1px solid #5973E1; 
		text-align: center; 
		background-color: white; 
		font-size: 1.3em; 
		font-weight: bold; 
		padding: 10px 0px 10px 0; 
		margin-bottom: 3px;
		width: 230px
	}
	
    /* Sub_Menu_01 */
    .subMenu {
      width: 250px;
      height: 163px;
      padding-top: 20px;
      position: relative;
      margin-right: 60px;
    }
    @keyframes ani01 {
      50% {
        transform: scale(1.1);
      }
      100% {
        transform: scale(1);
      }
    }
    a.sub {
      width: 250px;
      height: 163px;
      display: inline-block;
      padding-top: 20px;
      position: absolute;
      top: 0;
      left: 0;
    }
    a.sub:hover img {
      animation: ani01 1s infinite;
    }
    a strong {
      color: #ffffff;
      font-size: 21px;
      font-weight: 400;
      display: inline-block;
      position: relative;
    }
    a strong:before,
    a strong:after {
      content: '';
      border-bottom: 1px solid #fff;
      position: absolute;
      bottom: 0;
      width: 0;
    }
    a strong:before {
      left: 0px;
    }
    a strong:after {
      right: 0px;
    }
    a:hover strong:before,
    a:hover strong:after {
      width: 50%;
    }
    a strong:before,
    a strong:after {
      transition: 0.3s ease;
      transition: 0.3s ease;
    }

    /* Sub_Menu_02 */
    .Sub_Menu_02 {
      padding-right: 58px;
      padding-top: 30px;
    }
    #semiBtn {
      border: 1px solid rgb(175, 175, 175);
      font-size: 1em;
      width: 200.5px;
      display: inline-block;
      height: 50px;
      margin-left: -3px;
      margin-right: -3px;
    }
    @keyframes ani02 {
      100% {
        transform: rotateY(360deg);
      }
    }
    div p.semi {
      margin: 0;
      display: inline-block;
    }
    #semiBtn:hover .semi_btn_icon {
      animation: ani02 1s infinite;
    }
    #semiBtn:hover p.semi {
      transform: scale(1.05);
    }

    /* Sub_Menu_03 */
    .Sub_Menu_03 {
      margin: 0 auto;
      background-color: rgb(230, 230, 230);
      margin-top: 30px;
      width: 1205px;
      margin-right: 75px;
    }
    .under_bar {
      display: inline;
      padding-right: 55px;
    }
    .ne,
    .pr {
      width: 20px;
      height: 20px;
    }
    i.fa-play {
      border: 0;
      background-color: #e6e6e6;
      color: black;
    }
  </style>
<body>
	<!-- Header -->
	<nav class="navbar header navbar-expand-sm"
		style="background-color: #696a70">
		<div class="container-fluid">
			<div class="container">
				<%
				if (session.getAttribute("UserId") == null) {
					// session ????????? ????????? ???????????? ????????? ???????????? ????????????.
					// ???????????? ????????? ?????? ????????? ??????????????? ??????.
				%>
				<ul class="navbar-nav" style="padding-left: 900px">
					<li class="nav-item top_menu "><a
						href="memberLogin.jsp" class="text-white Header_Menu">?????????</a></li>
					<li class="nav-item"><a href="memberRegist.jsp"
						class="text-white Header_Menu">????????????</a></li>
					<li class="nav-item"><a href="" class="text-white Header_Menu">????????????</a>
					</li>
					<li class="nav-item"><a href="" class="text-white Header_Menu">&nbsp;<i
							class="bi bi-globe"></i> Foreign Language
					</a></li>
				</ul>
				<%
				} else {
				// session ????????? ????????? ???????????? ????????? ????????? ??? ???????????????
				// ?????? ?????? ??? ???????????? ????????? ????????? ????????????.
				%>
				<span style="color: white"> ${ sessionScope.UserName } ???, ?????????
					???????????????. </span> <a href="Logout.jsp" style="color: white">[????????????]</a>
				<%
				}
				%>
			</div>
		</div>
	</nav>
	<!-- subHeader -->
	<div class="container-fluid" style="padding-left: 0; padding-right: 0">
		<div class="container">
			<nav class="navbar subHeader navbar-expand-sm bg-white pt-1 pb-0">
				<div class="container">
					<a href="Main_Ver01.jsp" class="main_logo navbar-brand"> <img
						src="./images/epeople_logo.png" width="230" alt="epeople_logo" />
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#mynavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="mynavbar">
						<ul class="nav nav-tabs">
							<li class="nav-item"><a href="#menu1"
								class="nav-link subHeader_Menu" data-bs-toggle="tab">??????</a></li>
							<li class="nav-item"><a href="#menu2"
								class="nav-link subHeader_Menu" data-bs-toggle="tab">????????????</a></li>
							<li class="nav-item"><a href="#menu3"
								class="nav-link subHeader_Menu" data-bs-toggle="tab">????????????</a></li>
							<li class="nav-item"><a href="#menu4"
								class="nav-link subHeader_Menu" data-bs-toggle="tab">???????????????</a></li>
							<li class="nav-item"><a href="#menu5"
								class="nav-link subHeader_Menu" data-bs-toggle="tab">&nbsp;????????????</a>
							</li>
							<li class="nav-item"><a href="#menu6"
								class="nav-link subHeader_Menu" data-bs-toggle="tab">??????????????????</a>
							</li>
							<li class="nav-item"><a href="#menu7"
								class="nav-link subHeader_Menu" data-bs-toggle="tab">&nbsp;<i
									class="fa-solid fa-magnifying-glass"></i>&nbsp;
							</a></li>
							<li class="nav-item"><a href="#menu8"
								class="nav-link subHeader_Menu" data-bs-toggle="tab">&nbsp;<i
									class="fa-solid fa-bars"></i>&nbsp;
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="container-fluid Main_img"
			style="height: 340px; position: absolute; z-index: 1"></div>
		<!-- subHeader under_bar -->
		<div class="container-fluid tab-content" id="subHeader_under_bar"
			style="position: absolute; z-index: 3; background-color: #f0f3f9; padding-left: 0; padding-right: 0">
			<div class="tab-pane container active" id="home">
				<a href="http://localhost:8081/Main_Ver02.html"></a>
			</div>
			<!-- ?????? ????????? -->
			<div class="tab-pane container fade" id="menu1"
				style="padding-top: 40px; background-color: #f0f3f9">
				<div style="display: inline-block; width: 350px; padding-left: 80px">
					<div style="border-top: 5px solid #00b7ff; width: 70px"></div>
					<h1>??????</h1>
					<div style="width: 150px; height: 230px">
						????????? ?????? ????????? ????????? ????????? <br /> ?????? ???????????? <img
							src="./images/?????? ????????? ?????????.png" alt="????????? ?????????"
							style="width: 100px; margin-left: 70px" />
					</div>
				</div>
				<div style="display: inline-block; padding-right: 20px">
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>???????????? ????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>???????????? ????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>???????????? ????????????</li>
						</button>
					</div>
				</div>

				<div style="display: inline-block; padding-right: 20px">
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>???????????? ??????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>???????????? ??????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>?????????????????? ??????</li>
						</button>
					</div>
				</div>
			</div>

			<!-- ???????????? ????????? -->
			<div class="tab-pane container fade" id="menu2"
				style="padding-top: 40px; background-color: #f0f3f9">
				<div style="display: inline-block; width: 350px; padding-left: 80px">
					<div style="border-top: 5px solid #00b7ff; width: 70px"></div>
					<h1>????????????</h1>
					<div style="width: 150px; height: 217px">
						<img src="./images/???????????? ????????? ?????????.png" alt="???????????? ?????????"
							style="width: 100px; margin-left: 70px" />
					</div>
				</div>

				<div style="display: inline-block; padding-right: 20px">
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>??????????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>???????????? ????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>???????????? ??????</li>
						</button>
					</div>
				</div>
			</div>

			<!-- ???????????? ????????? -->
			<div class="tab-pane container fade" id="menu3"
				style="padding-top: 40px; background-color: #f0f3f9">
				<div style="display: inline-block; width: 350px; padding-left: 80px">
					<div style="border-top: 5px solid #00b7ff; width: 70px"></div>
					<h1>????????????</h1>
					<div style="width: 150px; height: 230px">
						????????? ????????? <br /> ????????????????????? <br /> ????????? <img
							src="./images/???????????? ????????? ?????????.png" alt="???????????? ?????????"
							style="width: 100px; margin-left: 70px" />
					</div>
				</div>
				<div style="display: inline-block; padding-right: 20px">
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
				</div>

				<div style="display: inline-block; padding-right: 20px" id="move2">
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>???????????? ??????</li>
						</button>
					</div>
				</div>
			</div>
			<!-- ??????????????? -->
			<div class="tab-pane container fade" id="menu4"></div>
			<!-- ???????????? ????????? -->
			<div class="tab-pane container fade" id="menu5"
				style="padding-top: 40px; background-color: #f0f3f9">
				<div style="display: inline-block; width: 350px; padding-left: 80px">
					<div style="border-top: 5px solid #00b7ff; width: 70px"></div>
					<h1>????????????</h1>
					<div style="width: 150px; height: 230px">
						?????? ???????????? <br /> ????????? ????????? <br /> ??????????????????. <img
							src="./images/???????????? ????????? ?????????.png" alt="???????????? ?????????"
							style="width: 100px; margin-left: 70px" />
					</div>
				</div>
				<!-- move1 position:relative -->
				<div style="display: inline-block; padding-right: 20px" id="move1">
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
					<div>
						<button type="button" class="btn under_menu1 btn-light p-2 mb-2 rounded-0"
							style="width: 220px; text-align: left; border: 1px solid #cccccc">
							<li>????????????</li>
						</button>
					</div>
				</div>
			</div>
			<!-- ?????????????????? -->
			<div class="tab-pane container fade" id="menu6"></div>
			<!-- ????????? ????????? -->
			<div class="tab-pane container-fluid fade" id="menu7"
				style="background-color: #5193f6">
				<div class="container pb-5">
					<div
						style="display: inline-block; width: 620px; margin-left: 250px"
						class="border-bottom border-3 border-white pt-5">
						<input id="inputpart" type="text"
							style="outline-style: none; border: 0; font-size: 25px; color: white; background-color: #5193f6; width: 570px; padding-left: 20px;"
							placeholder="???????????? ???????????? ???????????????" />
						<a href="#"><i class="bi bi-search"
							style="font-size: 30px; color: white; position: relative"></i></a>
					</div>
				</div>
			</div>
			<!-- ?????? ?????? -->
			<div class="tab-pane container fade" id="menu8" style="padding-top: 40px; background-color: #f0f3f9">
				<div class="contanier whole_menu">
					<div class="row">
						<div class="col-sm-2 m-0 p-0" style="width:0"></div>
						<div class="col-sm-2 m-0 p-0 m01" style="width: 230px">
							<input type="button" class="m01_main" value="??????"/>
							<div class="m01_parent01" style="border-bottom: 1px solid lightgray">
								<input type="button" id="b" class="m01_sub01" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								<ul class="m_item" style="margin-bottom: 3px;">
									<li>
										<a href="">????????????</a>
									</li>
									<li>
										<a href="">????????????????????????????????</a>
									</li>
									<li>
										<a href="">?????? ????????????</a>
									</li>
								</ul>
							</div>
							<div class="m01_parent02" style="border-bottom: 1px solid lightgray">
								<input type="button" id="b" class="m01_sub02" value="???????????? ????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								<ul class="m_item" style="margin-bottom: 3px;">
									<li>
										<a href="">???????????? ??????</a>
									</li>
									<li>
										<a href="">???????????? ??????</a>
									</li>
								</ul>
							</div>
							<div class="m01_parent03" style="border-bottom: 1px solid lightgray">
								<input type="button" id="b" class="m01_sub03" value="???????????? ????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								<ul class="m_item" style="margin-bottom: 3px;">
									<li>
										<a href="">???????????? ??????</a>
									</li>
									<li>
										<a href="">???????????? ??????</a>
									</li>
									<li>
										<a href="">???????????? ?????????</a>
									</li>
									<li>
										<a href="">???????????????????? ??????</a>
									</li>
								</ul>
							</div>
							<div class="m01_parent04" style="border-bottom: 1px solid lightgray">
								<input type="button" id="b" class="m01_sub04" value="???????????? ????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								<ul class="m_item" style="margin-bottom: 3px;">
									<li>
										<a href="">???????????? ???????????? ??????</a>
									</li>
									<li>
										<a href="">?????????????????? ??????</a>
									</li>
								</ul>
							</div>
							<div class="m01_parent05" style="border-bottom: 1px solid lightgray; margin-bottom: 50px">
								<input type="button" id="b" class="m01_sub05" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
							</div>
						</div>
						<div class="col-sm-2 p-0 m02" style="width: 230px; height: 200px ; margin-left: 30px">
							<div class="m02-1">
								<input type="button" class="m02_main" value="????????????" />
								<div class="m02_parent01" style="border-bottom: 1px solid lightgray;">
									<input type="button" id="b" class="m02_sub01" value="???????????? ??????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								</div>
								<div class="m02_parent02" style="border-bottom: 1px solid lightgray;">
									<input type="button" id="b" class="m02_sub02" value="???????????? ????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								</div>
								<div class="m02_parent03" style="border-bottom: 1px solid lightgray; margin: 0 0 150px 0">
									<input type="button" id="b" class="m02_sub03" value="???????????? ??????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								</div>
							</div>
							<input type="button" class="m02_main-1" value="??????????????????" style=" height: 55px"/>							
						</div>
						<div class="col-sm-2 p-0 m03" style="width: 230px; height: 100%; margin-left: 30px">
							<input type="button" class="m03_main" value="????????????" />
							<div class="m03_parent01" style="border-bottom: 1px solid lightgray;">
								<input type="button" id="b" class="m03_sub01" value="???????????? ??????" style="width: 230px; text-align: left; padding-left: 20px;"/>
							</div>
							<div class="m03_parent02" style="border-bottom: 1px solid lightgray;">
								<input type="button" id="b" class="m03_sub02" value="???????????? ??????" style="width: 230px; text-align: left; padding-left: 20px;"/>
							</div>
							<div class="m03_parent03" style="border-bottom: 1px solid lightgray;">
								<input type="button" id="b" class="m03_sub03" value="?????????????????? ??????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								<ul class="m_item" style="margin-bottom: 3px;">
									<li>
										<a href="">????????????????????????</a>
									</li>
									<li>
										<a href="">?????????????????????</a>
									</li>
									<li>
										<a href="">????????????</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-sm-2 p-0 m04" style="width: 230px; height: 100%; margin-left: 30px">
							<input type="button" class="m04_main" value="????????????" />
							<div class="m04_parent01" style="border-bottom: 1px solid lightgray;">
								<input type="button" id="b" class="m04_sub01" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
							</div>
							<div class="m04_parent02" style="border-bottom: 1px solid lightgray;">
								<input type="button" id="b" class="m04_sub02" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
							</div>
							<div class="m04_parent03" style="border-bottom: 1px solid lightgray;">
								<input type="button" id="b" class="m04_sub03" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
							</div>
							<div class="m04_parent04" style="border-bottom: 1px solid lightgray;">
								<input type="button" id="b" class="m04_sub04" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
							</div>
							<div class="m04_parent05" style="border-bottom: 1px solid lightgray;">
								<input type="button" id="b" class="m04_sub05" value="???????????? ??????" style="width: 230px; text-align: left; padding-left: 20px;"/>
							</div>
						</div>
						<div class="col-sm-2 p-0 m05" style="width: 230px; margin-left: 30px">
							<input type="button" class="m05_main" value="???????????????" style="margin-bottom: 50px"/>
							<div class="m05-1">
								<input type="button" class="m05_main-1" value="????????????" />
								<div class="m05_parent01" style="border-bottom: 1px solid lightgray;">
									<input type="button" id="b" class="m05_sub01" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								</div>
								<div class="m05_parent02" style="border-bottom: 1px solid lightgray;">
									<input type="button" id="b" class="m05_sub02" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								</div>
								<div class="m05_parent03" style="border-bottom: 1px solid lightgray;">
									<input type="button" id="b" class="m05_sub03" value="????????????" style="width: 230px; text-align: left; padding-left: 20px;"/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>