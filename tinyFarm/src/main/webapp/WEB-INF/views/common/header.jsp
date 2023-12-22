<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>작은농장</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/favicon.ico">
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="resources/style.css">
    
     <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@400;600&display=swap" rel="stylesheet">
	 <style>
		a,p{
			font-family: 'Noto Sans KR', sans-serif !important;
		}
		.h1, .h3, .h4, .h5, .h6, h1, h4, h5, h6{
			font-family: 'Noto Sans KR', sans-serif !important;
		}
		.plantImg,.plantName:hover{
			cursor : pointer;
		}
		

		
	</style>
</head>

<body>
	<!-- contextPath 설정 -->
	<c:set var="contextPath" value="<%=request.getContextPath()%>" scope="session"/>
	
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-circle"></div>
        <div class="preloader-img">
            <img src="resources/img/core-img/leaf.png" alt="">
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- ***** Top Header Area ***** -->
        <div class="top-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="top-header-content d-flex align-items-center justify-content-between">
                            <!-- Top Header Content -->
                            <div class="top-header-meta"></div>

                            
								<!-- Top Header Content -->
								<div class="top-header-meta d-flex">
									<!-- Login -->
									<div class="login">
										<c:choose>
											<c:when test="${empty loginUser}">
												<a href="loginGo.me"> <i class="fa fa-user" aria-hidden="true"></i>
													<span>Login</span>
												</a>
												<a href="join.me">회원가입</a>
											</c:when>
											<c:otherwise>
												<a><i class="fa fa-user" aria-hidden="true"></i> <span>${loginUser.userName } 님</span></a>
												<c:if test="${loginUser.userId == 'admin'}">
													<!-- 관리자 로그인시 -->
													<a href="main.ad" class="px-2">관리페이지</a>
												</c:if>
												<c:if test="${loginUser.userId != 'admin'}">
													<a href="mypage.me" class="px-2">마이페이지</a>
												</c:if>
												<a href="logout.me" class="px-2"><i class="fa fa-sign-out" aria-hidden="true"></i>로그아웃</a>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Navbar Area ***** -->
        <div class="alazea-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="alazeaNav">

                        <!-- Nav Brand -->
                        <a href="/tinyfarm" class="nav-brand"><img src="resources/img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>
                        
                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Navbar Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="">식물 정보</a>
                                        <ul class="dropdown">
                                            <li><a href="inGardenPlantList.pp">실내식물 정보</a></li>
                                            <li><a href="gardeningList.pp?category=채소">채소 정보</a></li>
                                            <li><a href="gardeningList.pp?category=실내농업">실내농업 관련 정보</a> </li>
                                            <li><a href="gardeningList.pp?category=기능별 텃밭">기능별 텃밭 정보</a> </li>
                                            <li><a href="makeInGarden.pp">실내정원 만들기</a> </li>
                                            <li><a href="season.re">계절별 텃밭 가꾸는법</a> </li>
                                        </ul>
                                    </li>
                                    <li><a href="about.html">체험활동</a></li>
                                    
                                    <li><a href="moveList.bo">커뮤니티</a></li>
                                    <li><a href="plist.bo">작물거래</a></li>
                                    <li><a href="noticeList.no">공지사항</a></li>
                                    <li><a href="qnaList.qa">1:1 문의</a></li>
                                </ul>

                                <!-- Search Icon -->
                                <div id="searchIcon">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>

                            </div>
                            <!-- Navbar End -->
                        </div>
                    </nav>

                    <!-- Search Form -->
                    <div class="search-form">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="Type keywords &amp; press enter...">
                            <button type="submit" class="d-none"></button>
                        </form>
                        <!-- Close Icon -->
                        <div class="closeIcon"><i class="fa fa-times" aria-hidden="true"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- nav 바 뒤 그림부분 시작-->
	
    <!-- nav 바 뒤 그림부분 끝 -->
  
     <script type="text/javascript">
    
    	const alertMsg = "${alertMsg}";
    	
    	console.log(alertMsg);
    	
    	if(alertMsg != null && alertMsg != ""){
    		alert(alertMsg);
    		<c:remove var="alertMsg" scope="session" />
    	}
    	
    </script>

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <!-- <script src="resources/js/jquery/jquery-2.2.4.min.js"></script> -->
    <!-- Popper js -->
    <script src="resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="resources/js/active.js"></script>

    
</body>

</html>