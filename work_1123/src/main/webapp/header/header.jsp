<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>

  <link rel="stylesheet" href="reset.css">
  <link rel="stylesheet" href="fonts.css">
  <link rel="stylesheet" href="header.css">
  
  <script src="node_modules/jquery/dist/jquery.js"></script>
  <script src="header.js"></script>

</head>

<body>
    
<div id="headerWrap">
            <header id="header">
                <h1>
                    <a href="index.jsp">
                        <!--<img src="" alt="logo">-->
                        <!--<p>옷</p>-->
                        <p> MY<br/> CLOSET </p>
                    </a>
                </h1>
                <div class="search">
                    <img src="images/search.png" class="searchImg">
                   <!--  <p class="searchImg"></p> -->
                    <input type="text" class="searchBox" />
                </div>
                <nav id="nav">
                    <h2 class="hide">메인메뉴</h2>
                    <ul id="gnb">
                        <li>
                            <a href="#">
                                <!-- <img src="" alt="menu01"> -->
                                upload
                            </a>
                            
                            
                            <ul class="sub">
                                <li><a href="#"> 사진 업로드 </a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <!-- <img src="" alt="menu02"> -->
                                <p>wardrobe</p>
                            </a>
                            <ul class="sub">
                                <li><a href="#"> 내 옷장 </a></li>
                                <li><a href="#"> 내 정보 수정 </a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <!-- <img src="" alt="menu02"> -->
                                <p>message</p>
                            </a>
                            <ul class="sub msg">
                                <li>
                                    <a href="#"> MessageBox </a>
                                    <hr/>
                                    <div class="msgList firstMsgList">
                                        <img class="msgUserPic" src="images/profile01.png" alt="msgUser"/>
                                        <!--   <p class="msgUserPic"></p> -->
                                        <span class="msgUserId"> PopEye00 </span>
                                        <span class="userMsg"> 안녕하세요. </span>
                                    </div>
                                    <div class="msgList">
                                        <img class="msgUserPic" src="images/profile00.png" alt="msgUser"/>
                                        <!--  <p class="msgUserPic"></p> -->
                                        <span class="msgUserId"> Blueblue </span>
                                        <span class="userMsg"> 신발은 어디껀가요? </span>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    
                </nav>
                
            </header>
        </div><!-- //headerWrap -->
        
        </body>
</html>
    
