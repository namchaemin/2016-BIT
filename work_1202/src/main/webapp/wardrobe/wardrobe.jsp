<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="node_modules/bootflat/bootflat/css/bootflat.css">

<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="fonts.css">
<link rel="stylesheet" href="wardrobe.css">
<link rel="stylesheet" href="hover-min.css">

<script src="node_modules/jquery/dist/jquery.js"></script>
<script src="wardrobe.js"></script>

<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

<title> My Wardrobe </title>
</head>

<body>

<div id="wardrobeContainer">
  
  <div id="wardrobeUser">
    <img class="wardrobeUserImg" src="images/user01.png" alt="" />
  </div><!-- wardrobeUser -->
  
  <div class="wardrobeUserInfo">
      <h4 class="userId"> yourCracker </h4>
      <ul class="follow">
        <li class="wardrobePosts"> 
          <h5> FOLLOWERS </h5>
          <p class="posts"> 21,321 </p>
        </li>
        <li class="wardrobeFollowers"> 
            <h5> FOLLOWINGS </h5>
            <p class="followers"> 1,834 </p>
        </li>
      </ul>
  </div><!-- // wardrobeUserInfo -->
  <div class="wardrobeSetting">
	  <ul>
	    <li>
	        <a href="#"> 옷장만들기 </a>
	    </li>
	    <li>
	        <a href="#"> 내 정보 수정 </a>
	    </li>
	    <li>
	        <a href="#"> 설정 </a>
	    </li>
	  </ul>
  </div>
    <div class="wardrobeList"> 
	  <ul class="postList">
	    <li>
		  <div class="postBox" >
			  <div class="postGrid">
			    <div class="wardrobeThumb"></div>
			    <div class="wardrobeThumb"></div>
			    <div class="wardrobeThumb"></div>
			    <div class="wardrobeThumb"></div>
			    <div class="wardrobeThumb"></div>
			    <div class="wardrobeThumb"></div>
			  </div> <!-- //postGrid -->
			  <a href="#"> Wardrobe01 </a>
		      <p>10 POSTS</p>
		    </div> <!-- // postBox -->
	    </li>
	    <li>
			<div class="postBox">
			    <div class="postGrid">
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			    </div> <!-- //postGrid -->
			    <a href="#"> Wardrobe02 </a>
			    <p>1 POSTS</p>
			  </div> <!-- // postBox -->
	      </li>
	    <li>
			<div class="postBox">
			    <div class="postGrid">
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			    </div> <!-- //postGrid -->
			    <a href="#"> Wardrobe03 </a>
			    <p>0 POSTS</p>
			  </div> <!-- // postBox -->
	      </li>
	    <li>
			<div class="postBox">
			    <div class="postGrid">
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			      <div class="wardrobeThumb"></div>
			    </div> <!-- //postGrid -->
			    <a href="#"> Wardrobe04 </a>
			    <p>10 POSTS</p>
			  </div> <!-- // postBox -->
	      </li>
	   </ul>
   </div><!-- wardorobeList --> 
</div> <!-- //wardrobeContainer -->

</body>
</html>