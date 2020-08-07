<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link rel="shortcut icon" href="./images/favicon.ico">


        <!-- font-family: 'Noto Sans KR', sans-serif; -->
        <style>
            @font-face {
                font-family: "IBMPlexSansKR-Regular";
                src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff")
                    format("woff");
                font-weight: normal;
                font-style: normal;
            }

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
                height: 700px;
                margin: 0 auto;
                z-index: 10000 !important;
            }
            #middle1,
            #middle2 {
                /* border: 1px solid black; */
                width: 1600px;
                margin: 0 auto;
            }
            #bottom {
                /* border: 1px solid black; */
                min-width: 1600px;
                height: 250px;
                background-color: #eee;
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
                border-bottom: 1px solid #BBB;
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

            #topmenu {
                /* border: 1px solid white; */
                background-color: transparent;
                width: 100%;
                height: 40px;
                color: white;
                text-align: center;
                font-size: 18px;
                font-weight: bold;
                padding: 40px 0;
                position: absolute;
                z-index: 999 !important;
            }
            .menubar {
                margin: 0 5px;
                cursor: pointer;
            }
            .switch {
                /* border: 1px solid white; */
                position: relative;
                top: 50%;
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
                border-bottom: 1px solid white;
                background-color: transparent;
                outline: none;
                color: white;
                font-weight: normal;
            }
            .img {
                width: 230px;
                height: 330px;
                /* border: 1px solid black; */
                background-color: cornflowerblue;
                display: inline-block;
                margin: 10px 0 0 10px;
                cursor: pointer;
            }
            #banner {
                background-color: #f19b00;
            }
            #bannerimg {
                /* border: 1px solid black; */
                height: 400px;
                background-image: url("./images//banner.png");
                background-repeat: no-repeat;
                background-position: center center;
                margin-top: 20px;
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
                bottom: 40px;
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
            #movebottom {
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
            #movebottom:hover {
                background-color: orange;
                cursor: pointer;
            }
            #frogue-container,
            .frogue-chat {
                position: absolute;
                left: 70px;
                bottom: 0px;
            }
            .img-cover {
                position: absolute;
                width: 420px;
                height: 675px;
                background-color: rgba(0, 0, 0, 0.7);
                z-index: 1;
            }
            .text {
                /* border: 1px solid white; */
                position: absolute;
                text-align: center;
                color: white;
                margin-left: 150px;
                margin-top: 300px;
                z-index: 2;
            }
            .img-cover1 {
                display: inline-block;
                position: relative;
                width: 230px;
                height: 330px;
                background-color: rgba(0, 0, 0, 0.7);
                z-index: 1;
            }
            .text1 {
                display: inline-block;
                /* border: 1px solid white; */
                position: absolute;
                color: white;
                margin-top: 100px;
                margin-left: -70px;
                z-index: 2;
            }

            #bigimg {
                background-image: url("./images/big_consert.jpeg");
                /* position: relative; */
                transform: scale(0.97);
                transition: all 0.5s;
            }
            .img1 {
                background-image: url("./images/consert1.jpeg");
                background-size: contain;
                transform: scale(0.97);
                transition: all 0.5s;
            }
            .img2 {
                background-image: url("./images/consert2.jpeg");
                background-size: contain;
                transform: scale(0.97);
                transition: all 0.5s;
            }
            .img3 {
                background-image: url("./images/consert3.jpeg");
                background-size: contain;
                transform: scale(0.97);
                transition: all 0.5s;
            }
            .img4 {
                background-image: url("./images/consert4.jpeg");
                background-size: contain;
                transform: scale(0.97);
                transition: all 0.5s;
            }
            .img5 {
                background-image: url("./images/consert5.jpeg");
                background-size: contain;
                transform: scale(0.97);
                transition: all 0.5s;
            }
            .img6 {
                background-image: url("./images/consert6.jpeg");
                background-size: contain;
                transform: scale(0.97);
                transition: all 0.5s;
            }
            .opne1 {
                background-image: url("./images/notice1.jpg");
                background-size: contain;
            }
            .opne2 {
                background-image: url("./images/notice2.jpg");
                background-size: contain;
            }
            .opne3 {
                background-image: url("./images/notice3.jpg");
                background-size: contain;
            }
            .opne4 {
                background-image: url("./images/notice4.jpg");
                background-size: contain;
            }
            .opne5 {
                background-image: url("./images/noticeimage.jpg");
                background-size: contain;
            }
            .rank1 {
                background-image: url("./images/rank1.jpeg");
                background-size: contain;
            }
            .rank2 {
                background-image: url("./images/rank2.jpeg");
                background-size: contain;
            }
            .rank3 {
                background-image: url("./images/rank3.jpeg");
                background-size: contain;
            }
            .musicimg1 {
                background-image: url("./images/music1.jpeg");
                background-size: contain;
            }
            .musicimg2 {
                background-image: url("./images/music2.jpeg");
                background-size: contain;
            }
            .musicimg3 {
                background-image: url("./images/music3.jpeg");
                background-size: contain;
            }
            .musicimg4 {
                background-image: url("./images/music4.jpeg");
                background-size: contain;
            }
            .musicimg5 {
                background-image: url("./images/music5.jpeg");
                background-size: contain;
            }
            .musicimg6 {
                background-image: url("./images/music6.jpeg");
                background-size: contain;
            }
            .consertimg1 {
                background-image: url("./images/consert1.jpeg");
                background-size: contain;
            }
            .consertimg2 {
                background-image: url("./images/consert2.jpeg");
                background-size: contain;
            }
            .consertimg3 {
                background-image: url("./images/consert3.jpeg");
                background-size: contain;
            }
            .consertimg4 {
                background-image: url("./images/consert4.jpeg");
                background-size: contain;
            }
            .consertimg5 {
                background-image: url("./images/consert5.jpeg");
                background-size: contain;
            }
            .consertimg6 {
                background-image: url("./images/consert6.jpeg");
                background-size: contain;
            }
            .dpimg1 {
                background-image: url("./images/Exhibition1.jpeg");
                background-size: contain;
            }
            .dpimg2 {
                background-image: url("./images/Exhibition2.jpeg");
                background-size: contain;
            }
            .dpimg3 {
                background-image: url("./images/Exhibition3.jpeg");
                background-size: contain;
            }
            .dpimg4 {
                background-image: url("./images/Exhibition4.jpeg");
                background-size: contain;
            }
            .dpimg5 {
                background-image: url("./images/Exhibition5.jpeg");
                background-size: contain;
            }
            .dpimg6 {
                background-image: url("./images/Exhibition6.jpeg");
                background-size: contain;
            }
            .img-cover1 {
                opacity: 0;
            }
            .img-cover {
                opacity: 0;
            }
            .text1 {
                opacity: 0;
            }
            .rect {
                width: 450px;
                color: white;
                font-weight: bold;
                position: absolute;
                left: 380px;
                top: 190px;
                display: none;
            }
            .rect h2 {
                font-size: 1.8em;
                letter-spacing: -2px;
            }
            .rect h1 {
                font-size: 5.5em;
                font-weight: bold;
                line-height: 1.3em;
                letter-spacing: -5px;
            }
            .rect h3 {
                font-size: 1.2em;
                letter-spacing: -1px;
            }
            #rect7,
            #rect8 {
                left: 420px;
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
                <div id="topmenu">
                    <!-- 상단메뉴 좌측(메인화면으로 돌아가기) -->
                    <a href="main.html" id="topleft"></a>
                    <!-- 상단메뉴 센터(콘서트, 뮤지컬, 연극, 클래식, 전시) -->
                    <div id="topcenter">
                        <span data-lo="user_concert.html" class="menubar"
                            >콘서트</span
                        >
                        <span data-lo="user_musical.html" class="menubar"
                            >뮤지컬</span
                        >
                        <span data-lo="user_theater.html" class="menubar"
                            >연극</span
                        >
                        <span data-lo="user_classic.html" class="menubar"
                            >클래식</span
                        >
                        <span data-lo="user_Exhibition.html" class="menubar"
                            >전시</span
                        >
                    </div>
                    <!-- 상단메뉴 우측(랭킹, 이벤트, 검색창, 마이페이지) -->
                    <div id="topright">
                        <span data-lo="user_ranking.html" class="menubar"
                            >랭킹</span
                        >
                        <span data-lo="user_event.html" class="menubar"
                            >이벤트</span
                        >
                        <input
                            type="text"
                            value=""
                            id="search"
                            autocomplete="off"
                        />
                        <label
                            for="search"
                            class="glyphicon glyphicon-search"
                            style="font-size: 14px; cursor: pointer;"
                        ></label>
                        <c:if test = "${not empty userid}">
                        <div
                            class="glyphicon glyphicon-user"
                            id="mypage"
                            style="
                                font-size: 14px;
                                cursor: pointer;
                                margin: 0 10px;
                            "
                        ></div>
                        </c:if>
                    </div>

                    <!-- 검색 팝업 -->
                    <div id="tagsearch">
                        <div id="tag">
                            <span>태그 검색어 </span>
                            <label
                                id="tagremove"
                                class="glyphicon glyphicon-remove"
                            ></label>
                        </div>
                        <a href="#">#연극</a>
                        <a href="#">#뮤지컬</a>
                        <a href="#">#캣츠</a>
                        <a href="#">#00</a>
                        <a href="#">#서울 전시</a>
                        <a href="#">#서울 전시</a>
                        <a href="#">#서울 전시</a>
                        <span>2020.07.23 기준</span>
                    </div>
                </div>
                <!-- 메인화면 좌우로 넘기는 버튼 -->
                <div class="switch">
                    <img src="./images/slide-dir-prev.png" class="prev" />
                    <img src="./images/slide-dir-next.png" class="after" />
                </div>
                <div class="rect" id="rect1">
                    <h2>아름다운 가을의 서울숲에서 즐기는</h2>
                    <h1>서울숲<br />재즈페스티벌</h1>
                    <h3>2020.10.09 ~ 2020.10.11 서울숲공원 일대</h3>
                </div>
                <div class="rect" id="rect2">
                    <h2>4년 만에 돌아온</h2>
                    <h1>뮤지컬<br />머더 발라드</h1>
                    <h3>2020.08.11 ~ 2020.10.25 세종문화회관 S씨어터</h3>
                </div>
                <div class="rect" id="rect3" style="color: black;">
                    <h2>5년의 기다림, 그리고 20주년!</h2>
                    <h1>뮤지컬<br />베르테르</h1>
                    <h3>7월23일(목) 오후 2시 2차 티켓오픈</h3>
                </div>
                <div class="rect" id="rect6" style="color: black;">
                    <h2>서로에게 빛이 되어준 위로의 이야기</h2>
                    <h1>뮤지컬<br />라 루미에르</h1>
                    <h3>2020.09.11 ~ 2020.10.25 대학로 유니플렉스 2관</h3>
                </div>
                <div class="rect" id="rect7" style="color: black;">
                    <h2>Ah, ah, ah, ah What can I do?</h2>
                    <h1>SURL (설)<br />concert</h1>
                    <h3>2020.08.15 ~ 2020.08.16 노들섬 라이브하우스</h3>
                </div>
                <div class="rect" id="rect8">
                    <h2>비지정석 최대 50% 할인</h2>
                    <h1 style="letter-spacing: -6px;">
                        오페라의 유령<br />월드투어
                    </h1>
                    <h3>
                        2020.08.19 ~ 2020.09.27 대구 계명아트센터<br />2020.03.14
                        ~ 2020.08.07 블루스퀘어 인터파크홀
                    </h3>
                </div>
                <div class="rect" id="rect9">
                    <h2>3천원 할인쿠폰 증정</h2>
                    <h1 style="font-size: 5em;">
                        그랜드 민트<br />페스티벌 2020
                    </h1>
                    <h3>2020.10.24 ~ 2020.10.25 올림픽공원 내</h3>
                </div>
            </div>
            <!-------------------------------- 내용부분 -------------------------------->
            <div id="middle1">
                <div id="submenu">
                    <ul>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-list-alt"
                            ></span>
                            <br />
                            <a class="subfont" href="user_notice.html"
                                >공지사항</a
                            >
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-pencil"
                            ></span>
                            <br />
                            <a class="subfont" href="user_localboard.html"
                                >커뮤니티</a
                            >
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-search"
                            ></span>
                            <br />
                            <a class="subfont" href="user_concerthall.html"
                                >공연장 검색</a
                            >
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-map-marker"
                            ></span>
                            <br />
                            <a class="subfont" href="user_local.html"
                                >지역 검색</a
                            >
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-question-sign"
                            ></span>
                            <br />
                            <a class="subfont" href="user_qna.html">Q & A</a>
                        </li>
                        <%-- <% if (session.getAttribute("userid") == null) {%> --%>
                        <c:if test = "${empty userid}"><!-- 여기에 이런식으로 처리 해주는 이유는 -> 로그인을 하면 또 로그인을 할 필요가 없기 때문이다. -->
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-off"
                            ></span>
                            <br/>
                            
                            <a class="subfont" id="login"
                                >로그인</a>
                        </li>
                        </c:if>
                        
                        <c:if test = "${!empty userid}"><!-- 여기에 이런식으로 처리 해주는 이유는 -> 로그인을 하면 또 로그인을 할 필요가 없기 때문이다. -->
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-off"
                            ></span>
                            <br/>
                            
                            <a class="subfont" id="logout"
                                >로그아웃</a>
                        </li>
                        </c:if>                   
                        
                        
                        <%-- <%} %> --%>
                    </ul>
                </div>
                <br />
                <!-- 최신, 인기 공연 목록(순위별) -->
                <div style="text-align: center;">
                    <h1>WHAT'S HOT</h1>
                    <div style="padding: 10px 0;">
                        <div
                            class="img"
                            id="bigimg"
                            style="
                                width: 420px;
                                height: 675px;
                                display: inline-block;
                            "
                            value="temp"
                        >
                            <div class="img-cover cover" value="cover">
                                <div class="text temp">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div style="display: inline-block;">
                            <div class="img img1" value="temp1">
                                <div class="img-cover1 cover1" value="cover1">
                                    <div class="text1 temp1">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img2" value="temp2">
                                <div class="img-cover1 cover2" value="cover2">
                                    <div class="text1 temp2">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img3" value="temp3">
                                <div class="img-cover1 cover3" value="cover3">
                                    <div class="text1 temp3">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div style="display: block;"></div>
                            <div class="img img4" value="temp4">
                                <div class="img-cover1 cover4" value="cover4">
                                    <div class="text1 temp4">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img5" value="temp5">
                                <div class="img-cover1 cover5" value="cover5">
                                    <div class="text1 temp5">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img6" value="temp6">
                                <div class="img-cover1 cover6" value="cover6">
                                    <div class="text1 temp6">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <!-- 오픈 예정 티켓 목록 -->
                <div style="text-align: center;">
                    <h1>TICKET OPEN</h1>
                    <div>
                        <div class="img opne1" value="temp7">
                            <div class="img-cover1 cover7" value="cover7">
                                <div class="text1 temp7">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img opne2" value="temp8">
                            <div class="img-cover1 cover8" value="cover8">
                                <div class="text1 temp8">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img opne3" value="temp9">
                            <div class="img-cover1 cover9" value="cover9">
                                <div class="text1 temp9">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img opne4" value="temp10">
                            <div class="img-cover1 cover10" value="cover10">
                                <div class="text1 temp10">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img opne5" value="temp11">
                            <div class="img-cover1 cover11" value="cover11">
                                <div class="text1 temp11">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 티켓오픈 더보기 버튼 -->
                    <input
                        type="button"
                        value="티켓오픈 더보기"
                        class="btn btn-default"
                        id="btnticket"
                        style="margin-top: 20px;"
                        onclick="location.href='user_notice.html'"
                    />
                </div>
                <hr />
            </div>
            <!-- 배너 이미지 -->
            <div id="banner">
                <div id="bannerimg"></div>
            </div>
            <div id="middle2">
                <hr />
                <div style="text-align: center;">
                    <h1>RANKING</h1>
                    <!-- 랭킹 해시태그 버튼 -->
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#뮤지컬"
                        id="hashmusical"
                        onclick="location.href='user_ranking.html'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#콘서트"
                        id="hashconcert"
                        onclick="location.href='user_ranking.html'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#연극"
                        id="hashplay"
                        onclick="location.href='user_ranking.html'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#클래식"
                        id="hashclassic"
                        onclick="location.href='user_ranking.html'"
                    />
                    <input
                        type="button"
                        class="btn btn-default"
                        value="#전시"
                        id="hashexhibition"
                        onclick="location.href='user_ranking.html'"
                    />
                    <!-- 랭킹 이미지 -->
                    <div style="margin-top: 20px;">
                        <div class="img rank1" value="temp12">
                            <div class="img-cover1 cover12" value="cover12">
                                <div class="text1 temp12">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img rank2" value="temp13">
                            <div class="img-cover1 cover13" value="cover13">
                                <div class="text1 temp13">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img rank3" value="temp14">
                            <div class="img-cover1 cover14" value="cover14">
                                <div class="text1 temp11">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 랭킹 더보기 버튼 -->
                    <input
                        type="button"
                        value="랭킹 더보기"
                        class="btn btn-default"
                        id="btnrank"
                        style="margin-top: 20px;"
                        onclick="location.href='user_ranking.html'"
                    />
                </div>
                <hr />
                <!-- 뮤지컬, 연극 목록 -->
                <div style="text-align: center;">
                    <h1>MUSICAL & PLAY</h1>
                    <div>
                        <div class="img musicimg1" value="temp15">
                            <div class="img-cover1 cover15" value="cover15">
                                <div class="text1 temp15">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg2" value="temp16">
                            <div class="img-cover1 cover16" value="cover16">
                                <div class="text1 temp16">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg3" value="temp17">
                            <div class="img-cover1 cover17" value="cover17">
                                <div class="text1 temp17">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg4" value="temp18">
                            <div class="img-cover1 cover18" value="cover18">
                                <div class="text1 temp18">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg5" value="temp19">
                            <div class="img-cover1 cover19" value="cover19">
                                <div class="text1 temp19">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img musicimg6" value="temp20">
                            <div class="img-cover1 cover20" value="cover20">
                                <div class="text1 temp20">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <!-- 콘서트, 클래식 목록 -->
                <div style="text-align: center;">
                    <h1>CONCERT & CLASSIC</h1>
                    <div>
                        <div class="img consertimg1" value="temp21">
                            <div class="img-cover1 cover21" value="cover21">
                                <div class="text1 temp21">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg2" value="temp22">
                            <div class="img-cover1 cover22" value="cover22">
                                <div class="text1 temp22">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg3" value="temp23">
                            <div class="img-cover1 cover23" value="cover23">
                                <div class="text1 temp23">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg4" value="temp24">
                            <div class="img-cover1 cover24" value="cover24">
                                <div class="text1 temp24">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg5" value="temp25">
                            <div class="img-cover1 cover25" value="cover25">
                                <div class="text1 temp25">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img consertimg6" value="temp26">
                            <div class="img-cover1 cover26" value="cover26">
                                <div class="text1 temp26">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <!-- 전시 목록 -->
                <div style="text-align: center; margin-bottom: 30px;">
                    <h1>EXHIBITION</h1>
                    <div>
                        <div class="img dpimg1" value="temp27">
                            <div class="img-cover1 cover27" value="cover27">
                                <div class="text1 temp27">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg2" value="temp28">
                            <div class="img-cover1 cover28" value="cover28">
                                <div class="text1 temp28">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg3" value="temp29">
                            <div class="img-cover1 cover29" value="cover29">
                                <div class="text1 temp29">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg4" value="temp30">
                            <div class="img-cover1 cover30" value="cover30">
                                <div class="text1 temp30">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg5" value="temp31">
                            <div class="img-cover1 cover31" value="cover31">
                                <div class="text1 temp31">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img dpimg6" value="temp32">
                            <div class="img-cover1 cover32" value="cover32">
                                <div class="text1 temp31">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <!-- 챗봇 : 단비봇 -->
                <div
                    id="frogue-container"
                    class="position-right-bottom"
                    data-chatbot="e4957de9-dad9-448d-a709-e43eeb644f63"
                    data-user="사용자ID"
                    data-init-key="value"
                ></div>
                <!-- data-init-식별키=값 으로 셋팅하면 챗플로우에 파라미터와 연동가능. 식별키는 소문자만 가능 -->
                <script>
                    (function (d, s, id) {
                        var js,
                            fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) {
                            return;
                        }
                        js = d.createElement(s);
                        js.id = id;
                        js.src =
                            "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
                        fjs.parentNode.insertBefore(js, fjs);
                    })(document, "script", "frogue-embed");
                </script>
                <!-- 제일 위로 돌아가기 버튼 -->
                <div id="movetop">↑</div>
                <div id="movebottom">↓</div>
            </div>
            <!-------------------------------- 화면 하단부 -------------------------------->
            <div id="bottom">
                <div>
                    <!-- 회사 마크 -->
                    <img src="./images/title2.png"/>
                </div>
                <div class="txt">
                    <p class="black">At-Ticket (주)</p>
                    <p>서울시 강남구 역삼동 한독빌딩 8층 대표: 한시연 | 개인정보보호책임자: 한시연</p>
                    <p>it1234@atticket.com 사업자등록번호 229-81-37000</p>
                    <p class="black">Copyright &copy; At-Tickey Corp. All Rights Reserved.</p>
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

        <script>
            //상단 메뉴 css
            $(".menubar").mouseover(function () {
                $(this).css("border-bottom", "5px solid orange");
            });
            $(".menubar").mouseout(function () {
                $(this).css("border-bottom", "");
            });
            //상단 메뉴 클릭시
            $(".menubar").click(function () {
                location.href = $(this).data("lo");
            });

            $(document).scroll(function () {
                //메뉴가 시야에서 사라지는 순간 -> 메뉴를 붙박이로 만들기
                if ($(document).scrollTop() > $("#middle1").position().top) {
                    $("#topmenu").css({
                        width: "100%",
                        position: "fixed",
                        top: "0px",
                        bottom: "",
                        zIndex: "1",
                        "background-color": "white",
                        color: "black",
                        "border-bottom": "1px solid #ddd",
                    });
                    $("#search").css({
                        "border-bottom-color": "black",
                        color: "black",
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
                        zIndex: "5"
                    });
                }

                //상단 헤더(top)이 눈에 보일때 쯤
                if ($(document).scrollTop() <= $("#middle1").position().top) {
                    $("#topmenu").css({
                        position: "absolute",
                        top: "0px",
                        bottom: "",
                        color: "white",
                        "background-color": "transparent",
                        "border-bottom": "0",
                    });
                    $("#search").css({
                        "border-bottom-color": "white",
                        color: "white",
                    });
                    $("#submenu").css({
                        display: "none",
                    });
                }
            });

            //검색창 커서 있을때 팝업 띄우기
            $("#search").focusin(function () {
                $("#tagsearch").css("display", "block");
                $("#search").css("border-bottom", "2px solid black");
            });
            //검색창 팝업 닫기
            $("#search").focusout(function () {
                $("#tagsearch").css("display", "none");
            });
            $("#tagremove").click(function () {
                $("#tagsearch").css("display", "none");
            });

            //top에있는 그림 자동 슬라이드
            $("#top").backstretch(
                [
                    "./images/bg1.jpg",
                    "./images/bg2.jpg",
                    "./images/bg3.jpg",
                    "./images/bg4.jpg",
                    "./images/bg5.jpg",
                    "./images/bg6.jpg",
                    "./images/bg7.jpg",
                    "./images/bg8.jpg",
                    "./images/bg9.jpg",
                ],
                { duration: 3000, fade: 1000 }
            );

            var timer;
            //top에있는 그림 슬라이드시 글 추가
            $(window).on("backstretch.after", function (e, instance, index) {
                $(".rect").css("display", "none");
                console.log(index);
                index++;
                $(`#rect${index}`).fadeIn("slow");

                timer = setTimeout(function () {
                    $(".rect").css("display", "none");
                }, 3100);
            });

            //top에있는 그림 이전으로
            $(".prev").click(function () {
                $("#top").backstretch("prev");
                $(".rect").css("display", "none");
                clearTimeout(timer);
            });
            //top에있는 그림 다음으로
            $(".after").click(function () {
                $("#top").backstretch("next");
                $(".rect").css("display", "none");
                clearTimeout(timer);
            });

            //이미지에 마우스 올릴때
            $(".img-cover1").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0.7");
            });
            $(".img-cover").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0.7");
            });
            //이미지에 마우스 올릴때
            $(".img-cover1").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0");
            });
            $(".img-cover").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(this).css("box-shadow", "1px 1px 1px 2px gray");
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

            //마이페이지 클릭시 이동
            $("#mypage").click(function () {
                location.href = "/AtTicketProject/usermypage.do";
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
            //페이지 하단으로 내려가기
            $("#movebottom").click(function () {
                //<a> 본연의 기능을 제거
                event.preventDefault();

                $("html,body").animate(
                    {
                        scrollTop: $(document).height(),
                    },
                    1000
                );
            });

            //팝업창 가운데 배치
            var popupWidth = 600;
            var popupheight = 400;
            var popupX = (window.screen.width / 2) - (popupWidth / 2);
            var popupY = (window.screen.height / 2) - (popupheight / 2);
            //관심 공연 담기 팝업창
            
            //var loginUrl = "/AtTicketProject/userlogin.do";//jsp 로 넘어가기 위함임
            //var logoutUrl = "/AtTicketProject/userlogout.do";
            
            //***여기가 좀 문제가 보이기 때문에 나중에 처리를 하도록 해보자
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
			//로그인 팝업창
        </script>
    </body>
</html>
