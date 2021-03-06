<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <%@include file="/WEB-INF/views/inc/asset.jsp" %>
        
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
            rel="stylesheet"
        />
        <link rel="stylesheet" href="css/slick-theme.css" />
        <link rel="stylesheet" href="css/slick.css" />
        <link rel="shortcut icon" href="./images/favicon.ico" />
        
    <style>
            * {
                outline: none;
            }
            body {
                margin: 0 auto;
            }
            h1 {
                font-family: "Noto Sans KR", sans-serif;
                font-size: 2em;
                margin: 30px 0;
            }
            #main {
                width: 100%;
            }
            #top {
                /* border: 1px solid black; */
                min-width: 1600px;
                height: 650px;
                margin: 0 auto;
            }
            #middle1,
            #middle2 {
                /* border: 1px solid black; */
                min-width: 1600px;
                margin: 0 auto;
            }
            #bottom {
                /* border: 1px solid black; */
                height: 200px;
                background-color: #eee;
                color: #333333;
            }
            #topmenu {
                border-bottom: 1px solid #ddd;
                background-color: transparent;
                width: 100%;
                min-width: 1600px;
                height: 40px;
                color: black;
                text-align: center;
                font-size: 18px;
                font-weight: bold;
                padding: 40px 0;
                position: absolute;
            }
            .menubar {
                margin: 0 5px;
                cursor: pointer;
            }
            #topleft {
                display: inline-block;
                /* border: 1px solid white; */
                width: 100px;
                height: 65px;
                background-image: url("./images//title.png");
                background-repeat: no-repeat;
                background-position: center center;
                position: absolute;
                left: 10px;
                top: 10px;
                cursor: pointer;
            }
            #topright {
                font-size: 13px;
                position: absolute;
                right: 5px;
                top: 42px;
                cursor: pointer;
            }
            .prev {
                float: left;
                padding-left: 20px;
                cursor: pointer;
            }
            .after {
                float: right;
                padding-right: 20px;
                cursor: pointer;
            }
            #search {
                border: 0;
                border-bottom: 1px solid black;
                background-color: transparent;
                outline: none;
                color: black;
            }
            .img {
                width: 230px;
                height: 325px;
                /* border: 1px solid black; */
                background-color: #eee;
                display: inline-block;
                margin: 10px 0 0 10px;
                cursor: pointer;
            }
            #banner {
                min-width: 1600px;
                height: 250px;
                margin-top: 20px;
                text-align: center;
                background-position: center center;
                background-repeat: no-repeat;
                background-size: cover;
            }
            #bannerimg {
                width: 286px;
                height: 400px;
                display: inline-block;
                margin-right: 160px;
            }
            #middle1 input,
            #middle2 input {
                outline: none;
            }
            #movetop {
                width: 40px;
                height: 40px;
                background-color: gray;
                position: fixed;
                bottom: 0;
                right: 0;
                text-align: center;
                padding-top: 3px;
                text-decoration: none;
                color: white;
                font-weight: bold;
                font-size: 1.5em;
            }
            #movetop:hover {
                background-color: orange;
                cursor: pointer;
            }
            #frogue-container,
            .frogue-chat {
                position: absolute;
                left: 20px;
                bottom: 0;
            }
            .slider {
                margin: 0px auto;
                position: relative;
                top: 150px;
            }
            .slick-slide img {
                transform: scale(0.9);
                transition: all 0.5s;
            }
            .slick-center img {
                transform: scale(1);
                transition: all 0.5s;
            }

            .img-cover {
                position: absolute;
                width: 420px;
                height: 675px;
                background-color: rgba(0, 0, 0, 0.7);
                z-index: 1;
                opacity: 0;
            }
            .text {
                /* border: 1px solid white; */
                position: absolute;
                color: white;
                top: 50%;
			    left: 50%;
			    text-align: center;
			    transform: translate(-50%, -50%);
                z-index: 2;
                opacity: 0;
            }
            .img-cover1 {
                display: inline-block;
                position: relative;
                width: 230px;
                height: 325px;
                background-color: rgba(0, 0, 0, 0.7);
                z-index: 1;
                opacity: 0;
            }
            .text1 {
                display: inline-block;
                /* border: 1px solid white; */
                position: absolute;
                color: white;
                top: 50%;
			    left: 50%;
			    text-align: center;
			    transform: translate(-50%, -50%);
                z-index: 2;
                opacity: 0;
            }
            .img1, .img2, .img3, .img4, .img5, .img6
            , .atimg1, .atimg2, .atimg3, .atimg4, .atimg5, .atimg6 {
                background-size: contain;
            }

            #submenu {
                border: 1px solid rgb(202, 202, 202);
                background-color: rgb(82, 82, 82);
                border-radius: 5px;
                color: white;
                position: fixed;
                left: 20px;
                top: 100px;

                width: 120px;
                text-align: center;
                display: none;
                box-shadow: 1px 1px 4px rgb(158, 158, 158);
            }
            #submenu > ul {
                list-style-type: none;
                padding: 10px;
                margin: 0;
            }
            #submenu > ul > li {
                padding: 15px 5px;
                cursor: pointer;
            }
            .subfont {
                color: white;
            }
            #bottom > div {
                float: left;
                position: relative;
                left: 12%;
                top: 22%;
            }
            #bottom .txt {
                margin-left: 30px;
                line-height: 1.1em;
                color: #666;
                top: 28%;
            }
            #bottom .txt .black {
                color: black;
            }
            #bottom #service {
                margin-left: 250px;
                top: 18%;
            }
            #bottom #service p:first-child {
                border-bottom: 1px solid #bbb;
                padding: 0 0 5px 20px;
                font-weight: bold;
                font-size: 1.1em;
            }
            #bottom #service p > span {
                color: #444;
                font-size: 1.3em;
            }
            #bottom #service p:nth-child(2) {
                text-align: center;
                font-size: 3em;
                padding-left: 10px;
            }
            #bottom #service p {
                margin-bottom: -2px;
                padding-left: 20px;
            }
            
			#tagsearch {
			    border: 1px solid #111;
			    width: 170px;
			    height: 205px;
			    position: relative;
			    float: right;
			    background-color: white;
			    margin-right: 60px;
			    /* text-align: center; */
			
			    display: none;
			}
			#tagsearch::after {
			    content: "";
			    display: none;
			    clear: both;
			}
			#tag {
			    width: 168px;
			    /* background-color: rgb(253, 236, 236); */
			    background-color: #f6f6f6;
			    height: 25px;
			}
			#tag > span {
			    color: #222;
			    font-size: 14px;
			    width: 50px;
			    height: 30px;
			    font-weight: normal;
			    font-family: "IBMPlexSansKR-Regular";
			    position: relative;
			    left: -20px;
			}
			
			#tag > label {
			    color: #111;
			    float: right;
			    cursor: pointer;
			    font-size: 20px;
			    font-weight: 100;
			}
			#tagsearch > a {
			    display: block;
			    color: #555;
			    font-size: 14px;
			    font-family: "IBMPlexSansKR-Regular";
			    font-weight: normal;
			    text-align: left;
			    margin-left: 20px;
			    margin-top: 2px;
			}
			#tagsearch > span {
			    font-size: 12px;
			    color: #999;
			    font-weight: normal;
			    font-family: "IBMPlexSansKR-Regular";
			
			    float: right;
			    margin-top: 5px;
			    margin-right: 5px;
			}
        </style>
    </head>
    <body>
        <div id="main">
            <!-------------------------------- 화면 상단부 -------------------------------->
            <div id="top">
                <%@include file="/WEB-INF/views/inc/usertopbar.jsp" %>
                
                <!-- 메인화면 슬라이더 -->
                <div class="slider">
                  <c:forEach items="${map}" var="map">
                  <div><img src="./images/${map.value}" /></div>
              	</c:forEach>
              </div>
            </div>
            <!-- <hr /> -->
            <!-------------------------------- 내용부분 -------------------------------->
            <div id="middle1">
                <%@include file="/WEB-INF/views/inc/usersidebar.jsp" %>
                
                <hr>
                <div
                    style="width: 1300px; margin: 0px auto; text-align: center;"
                >
                    <h1>Focus On</h1>
                    <div
                        style="
                            display: inline-block;
                            border: 1px solid #eeeeee;
                        "
                    >
                        <div
                            style="
                                display: inline-block;
                                border: 1px solid #eeeeee;
                            "
                        >
                            <img src="./images/focus1.jpeg" alt="" />
                        </div>
                        <div
                            style="
                                display: inline-block;
                                border: 1px solid #eeeeee;
                                float: left;
                            "
                        >
                            <img src="./images/focus2.jpeg" alt="" />
                        </div>
                        <div
                            style="
                                display: inline-block;
                                border: 1px solid #eeeeee;
                                float: left;
                            "
                        >
                            <img src="./images/focus3.jpeg" alt="" />
                        </div>
                    </div>
                </div>
                <hr>
                <!-- 최신, 인기 공연 목록(순위별) -->
                <div style="text-align: center;">
                    <h1>WHAT'S HOT</h1>
                    <div style="padding: 10px 0;">
                        <div
                            class="img img0"
                            id="bigimg"
                            style="
                                width: 420px;
                                height: 675px;
                                display: inline-block;
                                background-image: url(./images/${hot.get(0).img});
                            "
                            value="temp0"
                        >
                            <div class="img-cover cover0" value="cover0">
                                <div class="text temp0">
                                    <h4>${hot.get(0).genre}</h4>
                                    <span>${hot.get(0).name}</span>
                                </div>
                            </div>
                        </div>
                        <div style="display: inline-block; width: 730px;">
                        
                        <c:set var="i" value="1" />
                        <c:forEach items="${hot}" var="hot" begin="1" end="6" step="1">
                        	<div class="img img${i}" value="temp${i}" style="background-image: url(./images/${hot.img});">
                                <div class="img-cover1 cover${i}" value="cover${i}">
                                    <div class="text1 temp${i}">
	                                    <h4>${hot.genre}</h4>
	                                    <span>${hot.name}</span>
                                    </div>
                                </div>
                            </div>
                        <c:set var="i" value="${i + 1}" />
                        </c:forEach>
                        
                        </div>
                    </div>
                </div>
                <hr />
            </div>
            <!-- 동영상 들어갈 자리 -->
            <div id="banner">
                <img
                    style="height: 250px;"
                    src="./images/${banner.img}"
                    alt=""
                />
            </div>
            <div id="middle2">
                <!-- 주간 랭킹, 지역별 추천 -->
                <!-- <div style="text-align: center; background-color: #FBFBFB;">
                    
                </div> -->
                <hr />
                <!-- 뮤지컬, 연극 목록 -->
                <div style="text-align: center; margin-bottom: 50px;">
                    <h1>AT'S PICKS</h1>
                    <div>
                        
						<c:set var="i" value="1" />
                            <c:forEach items="${atspick}" var="atspick">
                            	<div class="img atimg${i}" value="temp${i+6}" style="background-image: url(./images/${atspick.img})">
		                            <div class="img-cover1 cover${i+6}" value="cover${i+6}">
		                                <div class="text1 temp${i+6}">
		                                    <h4>${atspick.genre}</h4>
		                                    <span>${atspick.name}</span>
		                                </div>
		                            </div>
		                        </div>
                            <c:set var="i" value="${i + 1}" />
                        </c:forEach>

                    </div>
                </div>
                <hr />
                <!-- 챗봇 : 단비봇 -->
                <%@include file="/WEB-INF/views/inc/userchat.jsp" %>
                
                <!-- 제일 위로 돌아가기 버튼 -->
                <div id="movetop">↑</div>
            </div>
            <!-------------------------------- 화면 하단부 -------------------------------->
            <div id="bottom">
                <div>
                    <!-- 회사 마크 -->
                    <img src="./images/title2.png" />
                </div>
                <div class="txt">
                    <p class="black">At-Ticket (주)</p>
                    <p>
                        서울시 강남구 역삼동 한독빌딩 8층 대표: 한시연 |
                        개인정보보호책임자: 한시연
                    </p>
                    <p>it1234@atticket.com 사업자등록번호 229-81-37000</p>
                    <p class="black">
                        Copyright &copy; At-Tickey Corp. All Rights Reserved.
                    </p>
                </div>
                <div id="service">
                    <p><span>☎</span> 고객센터 전화상담</p>
                    <p>1544-6399</p>
                    <p>평일 09:00 ~ 18:00</p>
                    <p>토요일 09:00 ~ 17:00</p>
                    <p>일요일 공휴일 휴무</p>
                </div>
            </div>
        </div>

        <script src="js/slick.min.js"></script>
        <script>

            $(document).scroll(function () {
                //메뉴가 시야에서 사라지는 순간 -> 메뉴를 붙박이로 만들기
                if ($(document).scrollTop() > $("#middle1").position().top) {
                    $("#topmenu").css({
                        width: "100%",
                        "min-width": "0px",
                        position: "fixed",
                        top: "0px",
                        bottom: "",
                        zIndex: "1",
                        "background-color": "white",
                    });
                    $(window).resize(function () {
                        if ($(window).width() < 970) {
                            // console.log($(window).width());
                            $("#topcenter").css(
                                "transform",
                                "translate(-100px, 0)"
                            );
                        } else {
                            $("#topcenter").css("transform", "translate(0, 0)");
                        }
                    });
                    $("#submenu").css({
                        display: "block",
                        position: "fixed",
                        left: "50px",
                        top: "200px",
                        zIndex: "5",
                    });
                }

                //상단 헤더(top)이 눈에 보일때 쯤
                if ($(document).scrollTop() <= $("#middle1").position().top) {
                    $("#topmenu").css({
                        "min-width": "1600px",
                        position: "absolute",
                        top: "0px",
                        bottom: "",
                        "background-color": "transparent",
                    });
                    $("#submenu").css({
                        display: "none",
                    });
                }
            });

            //이미지에 마우스 올릴때
            $(".img-cover, .img-cover1").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "1");
            });
            //이미지에 마우스 뗄때
            $(".img-cover, .img-cover1").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0");
            });

            //이미지에 마우스 올릴때
            $(".img").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(add).css("opacity", "1");
                $(this).css("transform", "scale(1)");
            });

            //이미지에 마우스 뗄때
            $(".img").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(add).css("opacity", "0");
                $(this).css("transform", "scale(0.97)");
            });

            //이미지 클릭시 이동
            $(".img").click(function () {
                location.href = "#";
            });

            //상단 이미지 슬라이더
            $(".slider").slick({
                centerMode: true,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 3000,
                dots: true,
                dotsClass: "slick-dots",
                centerPadding: "180px",
                slidesToShow: 3,
                responsive: [
                    {
                        breakpoint: 768,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: "180px",
                            slidesToShow: 3,
                        },
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: "180px",
                            slidesToShow: 1,
                        },
                    },
                ],
            });

            //movetop
            $("#movetop").click(function () {
                event.preventDefault();
                $("html, body").animate(
                    {
                        scrollTop: 0,
                    },
                    1000
                );
            });

          	//로그인 java 로 이동
            $("#login").click(function() {
                location.href = "/AtTicketProject/userlogin.do";
            	//window.open(loginUrl,"_black",`left=${popupX}, top=${popupY}, width=${popupWidth}, height=${popupheight};`);
            	//window.open(loginUrl,"_black");
            });
            
            //로그아웃 java 로 이동
            $("#logout").click(function() {
                location.href = "/AtTicketProject/userlogout.do";
            });

        </script>
    </body>
</html>
