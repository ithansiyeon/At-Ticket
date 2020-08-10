<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/AtTicketProject/css/adminbanner.css">

<meta charset="UTF-8">
<title>Insert title here</title>


<style>
		
		#left {
           position: absolute;
           left: 0px;
           top: 0px;
           width: 250px;
           height: 6000px;
           /* border: 1px solid black; */
           background-color: #444;
           text-align: center;
           z-index: 10;
       }
	    /* 최상단 타이틀 */
        #title{ 
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }
		
		
    	/* 배너 타이틀 제목 -> 어떤 배너인지 구분해주는 것임 */
        .titlebanner {
            margin-top : 50px;
            margin-left : 280px;
            font-size: 1.6em;
            font-weight: bold;
        }

        .splitHr {
            border: 1px solid #ddd;
            width : 1500px;
            margin-left: 280px;
            margin-top: 40px;
            margin-bottom: 40px;
        }
        /* --------------------상단배너 시작----------------------- */
        /* 상단배너 */
        #topbanner {
            /* border: 1px solid red; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 500px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 50px;
        }
        /* 사진들을 감싸는 객체 */
        #topcover {
            /* border : 1px solid blue; */
            width : 1400px;
            overflow: hidden;
        }
        /*상단배너 자식*/
        #topbaby {
            position : relative;
            /* border: 1px solid green; */
            height : 400px;
            width : 13000px;
            transition: all 1.3s;
        }
        /* 상단배너 자식 floating 시킨다. */
        #topbaby div {
            float: left;
            width : 1400px;
            height : 400px;
        }
        /* 상단배너 배경의 속성 */
        .topsetting {
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }

        
        /* 상단배너 prev */
        #mainprev {
            position : absolute;
            top : 430px;
            left : 280px;
        }
        #mainprev:hover {
            cursor : pointer;
        }
        
        /* 상단배너 next */
        #mainnext {
            position : absolute;
            top : 430px;
            left : 1730px;
        }
        #mainnext:hover {
            cursor:pointer;
        }
        
        /* 전체 배너 선택들의 길이조정 너비조정 */
        .bannerTool {
            /* border : 1px solid red; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 330px;

        }
        /* 상단배너 그림 url 가져오기 */
        #topBannerSelect {
            border: 1px solid blue;
            width : 1000px;
            margin : 0px auto;
            

        }
        #topBannerSelect td {
            border: 2px solid #ddd;
            height : 55px;
        }
        #topBannerSelect td:nth-child(1) {
            padding-left : 20px;
            background-color: #f0f0f0;
        }
        #topBannerSelect td:nth-child(2) {
            padding-left : 20px;
        }
        /* 상단배너 이미지 이름 prev next 할때마다 바뀔것이다. */
        #topImgName {
            margin:10px;
            margin-left : 600px;
            font-size: 1.2em;
            font-weight: bold;
        }
        .topBannerInputType {
            width : 98%;
            height : 60%;
            border: 0px;
            
        }
        /* --------------------상단배너 끝----------------------- */


</style>

</head>
<body>

	
	
	<!-- 메인배너 관리하는 페이지 -->
	
    <div id = "title">
        <h1 id = "rltitle">배너관리 <small id = "mainHome"> > 메인배너 관리  </small></h1>
    </div>

	<!-- ------------------------상단배너 관리 시작-------------------------------------------->

    
    <div class = "titlebanner">TOP배너 관리</div>
    <div id = "topbanner">
        <div id = "topcover">
            <div id = "topbaby">
                <div class = "topsetting" style = "background-image: url(../images/bg1.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/bg2.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/bg3.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/bg4.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/bg5.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/bg6.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/bg7.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/bg8.jpg);"></div>
                <div class = "topsetting" style = "background-image: url(../images/bg9.jpg);"></div>
            </div>
        </div>
        <div id = "topImgName">상단배너 1 번째 사진</div>
    </div>
    
    <div><img src="<%= request.getContextPath() %>/images/slide-dir-prev.png" alt="" id = "mainprev"></div>
    <div><img src="<%= request.getContextPath() %>/images/slide-dir-next.png" alt="" id = "mainnext"></div>
    
    
    <!-- 사진 움직이게 하려는 컨트롤 -->
    <script>

        var positionTopX = 0;//look 의 x좌표
        var clickCountTop = 0;//페이지가 계속 넘어가면 안되므로 제한을 걸어준다
        // 다음 페이지를 눌렀을 때
        $("#mainnext").click(function(){
            console.log("asd");
                if (clickCountTop < 8) {
                     positionTopX -= 1400;
                    $("#topbaby").css("transform","translate(" + positionTopX + "px,0px)");
                    //$("#topImgName").text(`상단배너 ${clickCountTop + 2} 번째 사진`);
                    //$("#topImgName").text("${clickCountTop}");
                    var sta1 = "상단배너 ";
                    var one = clickCountTop + 2
                   	var sta2 = " 번째 사진";
                    $("#topImgName").text(sta1 + one + sta2);
                    $("#nthPicNum").text(clickCountTop + 2);
                    clickCountTop++;
                }
        });
        //이전페이지를 눌렀을 때
        $("#mainprev").click(function(){
                if (clickCountTop > 0) {
                     positionTopX += 1400;
                    $("#topbaby").css("transform","translate(" + positionTopX + "px,0px)");
                    //$("#topImgName").text(`상단배너 ${clickCountTop} 번째 사진`);
                   	var sta1 = "상단배너 ";
                    var one = clickCountTop;
                   	var sta2 = " 번째 사진";
                   	$("#topImgName").text(sta1 + one + sta2);
                    $("#nthPicNum").text(clickCountTop);
                    clickCountTop--;
                }
        });
        
    </script>
    <!-- 상단배너 그림을 고르기 -->
    <div class = "bannerTool" style = "margin-left: 330px; width : 1400px">
        <table id = "topBannerSelect">
            <tr>
                <td>상단배너 <span id = "nthPicNum">1</span>번째 사진 선택</td>
                <td style = "padding-top : 5px;"><input type="file" class = "topBannerInputType"></td>
            </tr>
            <tr>
                <td>상단 기입 내용</td>
                <td><input type="text" class = "topBannerInputType"></td>
            </tr>
            <tr>
                <td>중간 기입 내용</td>
                <td style = "height: 100px; padding-top : 5px;"><textarea name="" id="" cols="30" rows="3" style = "resize : none; width : 97%; height : 80%; border : 0px;"></textarea></td>
            </tr>
            <tr>
                <td>하단 기입 내용</td>
                <td><input type="text" class = "topBannerInputType"></td>
            </tr>
            <tr>
                <td>기입 내용 글자색 지정</td>
                <td><input type="color" style = "width : 300px;" ></td>
            </tr>
          
        </table>
    </div>

    <style>

        #topImgContent {
            border: 1px solid red;
            margin-top : 20px;

        }
        
                /* 상단배너 prev */
        #mainprev {
            position : absolute;
            top : 430px;
            left : 280px;
        }
        #mainprev:hover {
            cursor : pointer;
        }
        
        /* 상단배너 next */
        #mainnext {
            position : absolute;
            top : 430px;
            left : 1730px;
        }
        #mainnext:hover {
            cursor:pointer;
        }
        
        /* 전체 배너 선택들의 길이조정 너비조정 */
        .bannerTool {
            /* border : 1px solid red; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 330px;

        }
        /* 상단배너 그림 url 가져오기 */
        #topBannerSelect {
            border: 1px solid blue;
            width : 1000px;
            margin : 0px auto;
            

        }
        #topBannerSelect td {
            border: 2px solid #ddd;
            height : 55px;
        }
        #topBannerSelect td:nth-child(1) {
            padding-left : 20px;
            background-color: #f0f0f0;
        }
        #topBannerSelect td:nth-child(2) {
            padding-left : 20px;
        }
        /* 상단배너 이미지 이름 prev next 할때마다 바뀔것이다. */
        #topImgName {
            margin:10px;
            margin-left : 600px;
            font-size: 1.2em;
            font-weight: bold;
        }
        .topBannerInputType {
            width : 98%;
            height : 60%;
            border: 0px;
            
        }
        
    </style>

    <hr class = "splitHr">

    

    <!--------------------------- 상단배너 관리 끝------------------------------------------------->





    <!--------------------------- WHAT'S HOT 시작------------------------------------------------->
    <style>
        /* WHAT'S HOT 배경 */
        #whatsHotPic {
            /* border: 1px solid black; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 800px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 50px;
        }


        /* 큰사진 */
        #bigPic {
            /* border : 1px solid red; */
            width : 500px;
            height : 700px;
            float: left;
            background-color: black;
            /* transition: all 1s; */
        }

        #bigPic > img {
            transition: all 1s;
        }

        .whatrow {
            width : 280px;
            height : 345px;
            float: left;
            margin-left : 20px;
            margin-bottom: 10px;
            /* border: 1px solid red; */
            background-color: black;
        }

        .whatrow img {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        
        .whatModify {
            /* border: 1px solid yellow; */
            height : 0px;
        }
        
        /* 이미지 내의 수정 버튼 */
        .whatModify button {
            /* border: 1px solid red; */
            position : relative;
            top : -190px;
            left : 37px;
            border: 1px solid #ddd;
            width : 200px;
            height : 60px;
            visibility: hidden;
        }
        /* 이미지 내의 수정버튼에 호버를 했을때 */
        .whatModify button:hover {
            background-color: #ddd;
            font-weight: bold;
        }
        
    </style>

    <div class = "titlebanner">WHAT'S HOT 배너 관리</div>
    <div id = "whatsHotPic">
        <div id= "bigPic" >
            <img src="../images/big_consert.jpeg" style = "width : 100%; height : 100%;"alt="">
            <div class = "whatModify" style= "margin-top : -200px; margin-left : 110px"><button id = "whatHotBtn1">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic1">
            <img src="<%= request.getContextPath() %>/images/consert1.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn2">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic2">
            <img src="<%= request.getContextPath() %>/images/consert2.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn3">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic3">
            <img src="<%= request.getContextPath() %>/images/big_consert.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn4">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic4">
            <img src="<%= request.getContextPath() %>/images/consert4.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn5">수정하기</button></div> 
        </div>
        <div class = "whatrow" id = "smallpic5">
            <img src="<%= request.getContextPath() %>/images/consert5.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn6">수정하기</button></div>
        </div>
        <div class = "whatrow" id = "smallpic6">
            <img src="<%= request.getContextPath() %>/images/consert6.jpeg" alt="">
            <div class = "whatModify"><button id = "whatHotBtn7">수정하기</button></div>
        </div>
    </div>

    <!-- 사진위에 커서를 올릴때 처리해줄것 -->
    <script>


        // // 큰 이미지에 커서 대면 검은색으로 바탕이 변함
        $("#bigPic").mouseenter(function(){
            $("#bigPic button").css("visibility","visible");
            $("#bigPic > img").css("opacity",".2");
        });
        
        $("#whatHotBtn1").click(function(){
            console.log($(this)[0].id);
        });

        // 큰 이미지에서 커서 때면
        $("#bigPic").mouseleave(function(){
            $("#bigPic button").css("visibility","hidden");
            $("#bigPic > img").css("opacity","1");
        });


        //작은 이미지 처리
        for (var i = 1; i <= 6; i++) {
            //$(`#smallpic${i}`).mouseenter(function(){
            $("#smallpic"+i).mouseenter(function(){
                $("#" + $(this).context.id + " button").css("visibility","visible");
                $("#" + $(this).context.id + " img").css("opacity",".2");
            });
            
            // 클릭했을 경우~
            //$(`#whatHotBtn${i+1}`).click(function(){
           	$("#whatHotBtn"+(i+1)).click(function() {
                console.log($(this)[0].id);
            });
            
            //$(`#smallpic${i}`).mouseleave(function(){
            $("#smallpic"+i).mouseleave(function(){
            	$("#" + $(this).context.id + " button").css("visibility","hidden");
                $("#" + $(this).context.id + " img").css("opacity","1");

                
            });  
        }
    </script>
    
    <hr class = "splitHr">

    <!--------------------------- WHAT'S HOT 끝------------------------------------------------->





    <!--------------------------- TICKET OPEN 시작------------------------------------------------->
    <style>
        #tobanner {
            /* border: 1px solid black; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 440px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 50px;
        }

        .toPicture {
            /* border: 1px solid red; */
            margin-left:20px;
            width : 256px;
            height : 340px;
            /* height : 100px; */
            float: left;
            background-color: black;
        }

        .toPicture img {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        /* 이미지 내 수정 버튼 */
        .toEditBtn {
            position : relative;
            /* border: 1px solid orange; */
            top : -180px;
            left : 0px;
        }
        .toEditBtn button {
            width : 200px;
            height : 60px;
            margin-left: 25px;
            visibility: hidden;
        }
        /* 수정 버튼에 커서를 올렸을떄 */
        .toEditBtn button:hover {
            background-color: #ddd;
            font-weight: bold;
        }
    </style>
    <div class = "titlebanner">TICKET OPEN 배너 관리</div>    
    
    <div id = "tobanner">
        <div class = "toPicture" id = "TcOpen1">
            <img src="<%= request.getContextPath() %>/images/notice1.jpg" alt="">
            <div class = "toEditBtn"><button id = "toBtn1">수정하기</button></div>
        </div>
        <div class = "toPicture" id = "TcOpen2">
            <img src="<%= request.getContextPath() %>/images/rankbest1.jpg" alt="">
            <div class = "toEditBtn"><button id = "toBtn2">수정하기</button></div>
        </div>
        <div class = "toPicture" id = "TcOpen3">
            <img src="<%= request.getContextPath() %>/images/notice3.jpg" alt="">
            <div class = "toEditBtn"><button id = "toBtn3">수정하기</button></div>
        </div>
        <div class = "toPicture" id = "TcOpen4">
            <img src="<%= request.getContextPath() %>/images/notice4.jpg" alt="">
            <div class = "toEditBtn"><button id = "toBtn4">수정하기</button></div>
        </div>
        <div class = "toPicture" id = "TcOpen5">
            <img src="<%= request.getContextPath() %>/images/rankbest3.jpg" alt="">
            <div class = "toEditBtn"><button id = "toBtn5">수정하기</button></div>
        </div>
    </div>

    <!-- 이미지위에 올리면 수정버튼이 떠야한다 -->
    <script>
        
    
        for (var i = 1; i <= 5; i++) {
            //사진 영역 내에 마우스 커서를 올렸을 때
            //$(`#TcOpen${i}`).mouseenter(function(){
           	$("#TcOpen" + i).mouseenter(function(){
                console.log($(this).context.id);
                // console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","visible")
                $("#" + $(this).context.id + " img").css("opacity",".2");

                console.log($(this).context.children[1].children[0].id);
            });

            // 수정 버튼을 클릭했을때
            //$(`#toBtn${i}`).click(function(){
            $("#toBtn" + i).click(function(){
                console.log($(this)[0].id);
            })
            //사진 영역 내에 마우스 커서를 똇을 때
            //$(`#TcOpen${i}`).mouseleave(function(){
            $("#TcOpen"+i).mouseleave(function(){
                console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","hidden");
                $("#" + $(this).context.id + " img").css("opacity","1");
            }); 
            

        }

    </script>

    <hr class = "splitHr">
    <!--------------------------- TICKET OPEN 끝------------------------------------------------->









    <!--------------------------- 중간배너 시작------------------------------------------------->
    <style>
        /* 중간배너 */
        #middleBanner {
            /* border: 1px solid black; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 440px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 50px;
        }
        /* 중간배너에 들어가는 이미지 컨테이너 */
        #middleImg {
            /* border: 1px solid red; */
            width: 1400px;
            height : 320px;
            margin-top : 10px;
            background-color: black;
        }

        #middleImg img {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        /* 중간배너 수정버튼 */
        #mdBtn {
            position : relative;
            border: 1px solid #ddd;
            top : -180px;
            left : 575px;
            width : 200px;
            height : 60px;
            margin-left: 25px;
            visibility: hidden;
        }
        /* 수정버튼에 마우스 대면  */
        #mdBtn:hover {
            font-weight: bold;
            background-color: #ddd;
        }
        
        
    </style>
    
    <div class = "titlebanner"> MIDDLE 배너 관리</div>  
    <div id = "middleBanner">
        <div id = "middleImg">
            <img src="<%= request.getContextPath() %>/images/middleBanner.png" alt="" id = "middlePic">
            <div id = "mdEditBtn"><button id = "mdBtn">수정하기</button></div>  
        </div>
    </div>


    <script>

        //이미지 box 내에 마우스를 넣었을때 수정버튼이 보여야한다 -> 배경색도 어둡게 처리
        $("#middleImg").mouseenter(function(){
            $("#mdBtn").css("visibility","visible");
            $("#middlePic").css("opacity",".2");
            
        });

        //마우스 뗏을때 
        $("#middleImg").mouseleave(function(){
            $("#mdBtn").css("visibility","hidden");
            $("#middlePic").css("opacity","1");
        }); 


        // 마우스 클릭 했을 때 -> 나중에 서버때문에 일단 만들어둠
        $("#mdBtn").click(function(){
            console.log("클릭함");
        }); 
    </script>

    <hr class = "splitHr">

    <!--------------------------- 중간배너 끝------------------------------------------------->


    

    <!--------------------------- MUSICAL & PLAY 시작------------------------------------------------->
     <style>
        #mpbanner {
            /* border: 1px solid black; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 440px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 8px;
        }

        .mpPicture {
            /* border: 1px solid red; */
            margin-left:15px;
            width : 230px;
            height : 340px;
            /* height : 100px; */
            float: left;
            background-color: black;
        }

        .mpPicture img {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        /* 이미지 내 수정 버튼 */
        .mpEditBtn {
            position : relative;
            /* border: 1px solid orange; */
            top : -180px;
            left : 0px;
        }
        .mpEditBtn button {
            width : 200px;
            height : 60px;
            margin-left: 14px;
            border: 1px solid #ddd;
            visibility: hidden;
        }
        /* 수정 버튼에 커서를 올렸을떄 */
        .mpEditBtn button:hover {
            background-color: #ddd;
            font-weight: bold;
        }
    </style>

    <div class = "titlebanner">MUSICAL & PLAY 배너 관리</div>    
    
    <div id = "mpbanner">
        <div class = "mpPicture" id = "mpOpen1">
            <img src="<%= request.getContextPath() %>/images/music1.jpeg" alt="">
            <div class = "mpEditBtn"><button id = "mpBtn1">수정하기</button></div>
        </div>
        <div class = "mpPicture" id = "mpOpen2">
            <img src="<%= request.getContextPath() %>/images/music2.jpeg" alt="">
            <div class = "mpEditBtn"><button id = "mpBtn2">수정하기</button></div>
        </div>
        <div class = "mpPicture" id = "mpOpen3">
            <img src="<%= request.getContextPath() %>/images/music3.jpeg" alt="">
            <div class = "mpEditBtn"><button id = "mpBtn3">수정하기</button></div>
        </div>
        <div class = "mpPicture" id = "mpOpen4">
            <img src="<%= request.getContextPath() %>/images/music4.jpeg" alt="">
            <div class = "mpEditBtn"><button id = "mpBtn4">수정하기</button></div>
        </div>
        <div class = "mpPicture" id = "mpOpen5">
            <img src="<%= request.getContextPath() %>/images/music5.jpeg" alt="">
            <div class = "mpEditBtn"><button id = "mpBtn5">수정하기</button></div>
        </div>
        <div class = "mpPicture" id = "mpOpen6">
            <img src="<%= request.getContextPath() %>/images/music6.jpeg" alt="">
            <div class = "mpEditBtn"><button id = "mpBtn6">수정하기</button></div>
        </div>
    </div>

    <!-- 이미지위에 올리면 수정버튼이 떠야한다 -->
    <script>
        
        for (var i = 1; i <= 6; i++) {
            //사진 영역 내에 마우스 커서를 올렸을 때
            //$(`#mpOpen${i}`).mouseenter(function(){
            $("#mpOpen"+i).mouseenter(function(){
                console.log($(this).context.id);
                // console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","visible")
                $("#" + $(this).context.id + " img").css("opacity",".2");

                console.log($(this).context.children[1].children[0].id);
            });

            // 수정 버튼을 클릭했을때
            //$(`#mpBtn${i}`).click(function(){
            $("#mpBtn" + i).click(function(){
                console.log($(this)[0].id);
            })
            //사진 영역 내에 마우스 커서를 똇을 때
            //$(`#mpOpen${i}`).mouseleave(function(){
            $("#mpOpen" + i).mouseleave(function(){
                console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","hidden");
                $("#" + $(this).context.id + " img").css("opacity","1");
            }); 
            

        }

    </script>

    <hr class = "splitHr">
    <!--------------------------- MUSICAL & PLAY 끝------------------------------------------------->
    
    
    
    
    
    
    <!--------------------------- CONCERT & CLASSIC 시작------------------------------------------------->
     <style>
        #ccbanner {
            /* border: 1px solid black; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 440px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 8px;
        }

        .ccPicture {
            /* border: 1px solid red; */
            margin-left:15px;
            width : 230px;
            height : 340px;
            /* height : 100px; */
            float: left;
            background-color: black;
        }

        .ccPicture img {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        /* 이미지 내 수정 버튼 */
        .ccEditBtn {
            position : relative;
            /* border: 1px solid orange; */
            top : -180px;
            left : 0px;
        }
        .ccEditBtn button {
            width : 200px;
            height : 60px;
            margin-left: 14px;
            border: 1px solid #ddd;
            visibility: hidden;
        }
        /* 수정 버튼에 커서를 올렸을떄 */
        .ccEditBtn button:hover {
            background-color: #ddd;
            font-weight: bold;
        }
    </style>  
    
    <div class = "titlebanner">CONCERT & CLASSIC 배너 관리</div>    
    
    <div id = "ccbanner">
        <div class = "ccPicture" id = "ccOpen1">
            <img src="<%= request.getContextPath() %>/images/consert1.jpeg" alt="">
            <div class = "ccEditBtn"><button id = "ccBtn1">수정하기</button></div>
        </div>
        <div class = "ccPicture" id = "ccOpen2">
            <img src="<%= request.getContextPath() %>/images/consert2.jpeg" alt="">
            <div class = "ccEditBtn"><button id = "ccBtn2">수정하기</button></div>
        </div>
        <div class = "ccPicture" id = "ccOpen3">
            <img src="<%= request.getContextPath() %>/images/consert3.jpeg" alt="">
            <div class = "ccEditBtn"><button id = "ccBtn3">수정하기</button></div>
        </div>
        <div class = "ccPicture" id = "ccOpen4">
            <img src="<%= request.getContextPath() %>/images/consert4.jpeg" alt="">
            <div class = "ccEditBtn"><button id = "ccBtn4">수정하기</button></div>
        </div>
        <div class = "ccPicture" id = "ccOpen5">
            <img src="<%= request.getContextPath() %>/images/consert5.jpeg" alt="">
            <div class = "ccEditBtn"><button id = "ccBtn5">수정하기</button></div>
        </div>
        <div class = "ccPicture" id = "ccOpen6">
            <img src="<%= request.getContextPath() %>/images/consert6.jpeg" alt="">
            <div class = "ccEditBtn"><button id = "ccBtn6">수정하기</button></div>
        </div>
    </div>
    
    
     <!-- 이미지위에 올리면 수정버튼이 떠야한다 -->
    <script>
        
        for (var i = 1; i <= 6; i++) {
            //사진 영역 내에 마우스 커서를 올렸을 때
            //$(`#ccOpen${i}`).mouseenter(function(){
            $("#ccOpen" + i).mouseenter(function(){
            	console.log($(this).context.id);
                // console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","visible")
                $("#" + $(this).context.id + " img").css("opacity",".2");

                console.log($(this).context.children[1].children[0].id);
            });

            // 수정 버튼을 클릭했을때
            //$(`#ccBtn${i}`).click(function(){
            $("#ccBtn" + i).click(function(){	
                console.log($(this)[0].id);
            })
            //사진 영역 내에 마우스 커서를 똇을 때
            //$(`#ccOpen${i}`).mouseleave(function(){
            $("#ccOpen" + i).mouseleave(function(){
                console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","hidden");
                $("#" + $(this).context.id + " img").css("opacity","1");
            }); 
            

        }

    </script>

    <hr class = "splitHr">   

    <!--------------------------- CONCERT & CLASSIC 끝------------------------------------------------->
    
    
    <!--------------------------- EXHIBITION 시작 ------------------------------------------------->
    
    <style>
        #ebbanner {
            /* border: 1px solid black; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 440px;
            background-color: #F0F0F0;
            padding-top: 50px;
            padding-left : 8px;
        }

        .ebPicture {
            /* border: 1px solid red; */
            margin-left:15px;
            width : 230px;
            height : 340px;
            /* height : 100px; */
            float: left;
            background-color: black;
        }

        .ebPicture img {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        /* 이미지 내 수정 버튼 */
        .ebEditBtn {
            position : relative;
            /* border: 1px solid orange; */
            top : -180px;
            left : 0px;
        }
        .ebEditBtn button {
            width : 200px;
            height : 60px;
            margin-left: 14px;
            border: 1px solid #ddd;
            visibility: hidden;
        }
        /* 수정 버튼에 커서를 올렸을떄 */
        .ebEditBtn button:hover {
            background-color: #ddd;
            font-weight: bold;
        }
    </style>  
    
    <div class = "titlebanner">EXHIBITION 배너 관리</div>    
    
    <div id = "ebbanner">
        <div class = "ebPicture" id = "ebOpen1">
            <img src="<%= request.getContextPath() %>/images/Exhibition1.jpeg" alt="">
            <div class = "ebEditBtn"><button id = "ebBtn1">수정하기</button></div>
        </div>
        <div class = "ebPicture" id = "ebOpen2">
            <img src="<%= request.getContextPath() %>/images/Exhibition2.jpeg" alt="">
            <div class = "ebEditBtn"><button id = "ebBtn2">수정하기</button></div>
        </div>
        <div class = "ebPicture" id = "ebOpen3">
            <img src="<%= request.getContextPath() %>/images/Exhibition3.jpeg" alt="">
            <div class = "ebEditBtn"><button id = "ebBtn3">수정하기</button></div>
        </div>
        <div class = "ebPicture" id = "ebOpen4">
            <img src="<%= request.getContextPath() %>/images/Exhibition4.jpeg" alt="">
            <div class = "ebEditBtn"><button id = "ebBtn4">수정하기</button></div>
        </div>
        <div class = "ebPicture" id = "ebOpen5">
            <img src="<%= request.getContextPath() %>/images/Exhibition5.jpeg" alt="">
            <div class = "ebEditBtn"><button id = "ebBtn5">수정하기</button></div>
        </div>
        <div class = "ebPicture" id = "ebOpen6">
            <img src="<%= request.getContextPath() %>/images/Exhibition6.jpeg" alt="">
            <div class = "ebEditBtn"><button id = "ebBtn6">수정하기</button></div>
        </div>
    </div>



     <!-- 이미지위에 올리면 수정버튼이 떠야한다 -->
    <script>
        
        for (var i = 1; i <= 6; i++) {
            //사진 영역 내에 마우스 커서를 올렸을 때
            //$(`#ebOpen${i}`).mouseenter(function(){
            $("#ebOpen" + i).mouseenter(function(){
                console.log($(this).context.id);
                // console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","visible")
                $("#" + $(this).context.id + " img").css("opacity",".2");

                console.log($(this).context.children[1].children[0].id);
            });

            // 수정 버튼을 클릭했을때
            //$(`#ebBtn${i}`).click(function(){
            $("#ebBtn" + i).click(function(){
                console.log($(this)[0].id);
            })
            //사진 영역 내에 마우스 커서를 똇을 때
            //$(`#ebOpen${i}`).mouseleave(function(){
            $("#ebOpen" + i).mouseleave(function(){
                console.log($(this).context.id);
                $("#" + $(this).context.id + " button").css("visibility","hidden");
                $("#" + $(this).context.id + " img").css("opacity","1");
            }); 
            

        }

    </script>

    <hr class = "splitHr"> 

    <!--------------------------- EXHIBITION 끝 ------------------------------------------------->
    
    
    
    
    

    
    
    
    <!--------------------------- 하단페이지 시작 ------------------------------------------------->
        
    <style>
        /* 하단페이지 컨테이너 */
        #btmBanner {
            /* border: 1px solid red; */
            margin-top : 20px;
            margin-left : 280px;
            width : 1500px;
            height : 850px;
            /* background-color: #F0F0F0; */
            padding-top: 20px;
            padding-left : 8px;
        }
        /* 소제목 배너 */
        .subtitlebanner {
            /* border-bottom: 2px solid #ddd; */
            height : 40px;
            width : 150px;
            font-size: 1.3em;
            margin-top : 20px;
        }
        /* bottom 배너 컨테이너 통일양식 */
        .intBtmBanner {
            /* border: 1px solid orange; */
            width : 1430px;
            margin: 0px auto;
            height : 300px;
        }

        /* 회사 로고변경 */
        #logoModify {
            /* border: 1px solid blue; */
            width : 300px;
            height : 300px;
            /* background-color: black; */
        }
        
        /* 회사 로고 이미지 컨테이너*/
        #innerLogo {
            /* border: 1px solid green; */
            width : 300px;
            height : 300px;
            /* background-color: black; */
            transition: all 1s;
        }
        /* 회사 로고 이미지*/
        #innerLogoImg {
            width : 100%;
            height : 100%;
            transition: all 1s;
        }
        /* 회사 로고 수정하기 버튼 */
        #compLogoBtn {
            
            border: 1px solid #ddd;
            width : 200px;
            height: 60px;
            visibility: hidden;
        }
        #compLogoBtns {
            position : relative;
            /* border: 1px solid red; */
            width : 202px;
            top : -180px;
            left : 50px;
        }
        #compLogoBtn:hover {
            background-color: #ddd;
            font-weight: bold;
        }


        /* 세부내용 */
        #compDetailTbl {
            /* border: 1px solid #D2D2D2; */
            width : 700px;
            height : 300px;
        }
        #compDetailTbl td{
            /* border: 1px solid red; */
        }
        #compDetailTbl td{
            /* border: 1px solid red; */
            border: 2px solid #D2D2D2;

        }
        #compDetailTbl td:nth-child(1){
            width : 200px;
            padding-left : 20px;
            background-color: #F0F0F0;
        }
        /* 세부내용 둘째 열 내부*/
        #compDetailTbl td:nth-child(2) input{
            border: 0px;
            margin-left : 20px;
            width : 90%;
            height : 60%;
        }
    </style>
    
    
    <div class = "titlebanner">BOTTOM 배너 관리</div>
    <div id = "btmBanner">
        <!-- 회사 로고 수정 -->
        <div class = "subtitlebanner">회사로고 수정</div>
        <div id = "logoModify" class = "intBtmBanner" style = "margin-left : 30px;">
            <div id = "innerLogo"><img src="<%= request.getContextPath() %>/images/title2.png" alt="" id = "innerLogoImg"></div>
            <div id = "compLogoBtns"><input type="button" value = "수정하기" id = "compLogoBtn"></div>
        </div>
        
        <!-- 세부내용 -->
        <div class = "subtitlebanner">세부내용</div>
        <div class = "intBtmBanner">
            <table id = "compDetailTbl" >
                <tr>
                    <td>회사명</td>
                    <td><input type="text" id = "compName" value = "AT-Ticket(주)"></td>
                </tr>
                <tr>
                    <td>회사 주소</td>
                    <td><input type="text" id = "compAddress" value = "서울시 강남구 역삼동 한독빌딩 8층"></td>
                </tr>
                <tr>
                    <td>대표자</td>
                    <td><input type="text" id = "compCeo" value = "한시연"></td>
                </tr>
                <tr>
                    <td>개인정보 보호 책임자</td>
                    <td><input type="text" id = "compResp" value = "한시연"></td>
                </tr>
                <tr>
                    <td>회사 이메일</td>
                    <td><input type="text" id = "compEmail" value = "it1234@atticket.com"></td>
                </tr>
                <tr>
                    <td>사업자 등록번호</td>
                    <td><input type="text" id = "compCode" value = "229-81-37000"></td>
                </tr>
            </table>
        </div>
    </div>

    <script>
        // 이미지 수정 버튼 관련 이벤트
        
        //로고에 커서를 가져다 대면 변한다
        $("#logoModify").mouseenter(function(){
            $("#innerLogo").css("background-color","black");
            $("#innerLogoImg").css("opacity",".2");
            $("#compLogoBtn").css("visibility","visible");
        });

        // 로고에서 커서를 뗏을 떄
        $("#logoModify").mouseleave(function(){
            $("#innerLogo").css("background-color","#fff");
            $("#innerLogoImg").css("opacity","1");
            $("#compLogoBtn").css("visibility","hidden");
        });


        
    </script>
    <hr class = "splitHr"> 

    
    <!---------------------------하단페이지 끝 ------------------------------------------------->
    
    
    <!---------------------------내용 저장하기 시작------------------------------------------------->
    <style>
        #saveBtn {
            margin-top : 30px;
            margin-left : 930px;
            width : 200px;
            height: 60px;
            font-size: 1.3em;
            border: 1px solid #ddd;
        }
        #saveBtn:hover {
            background-color: #ddd;
            font-weight: bold;
        }
    </style>
    
    
    <div><input type="button" value = "저장하기" id = "saveBtn"></div>

    <script>
        //저장하기 눌렀을때 이벤트
        $("#saveBtn").click(function(){
            if (confirm("해당 내용을 저장하시겠습니까?")) {
                alert("저장 완료.");

                location.href = "./adminMain.html";
            }    
        });

    </script>
    <!---------------------------내용 저장하기 끝------------------------------------------------->









	<%@include file="/WEB-INF/views/inc/menu.jsp" %>



	



<script>

	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>
	
</script>


</body>
</html>