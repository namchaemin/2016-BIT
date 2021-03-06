<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>


<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">

<link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="node_modules/bootflat/bootflat/css/bootflat.css">
<link rel="stylesheet" href="item.css">

<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="fonts.css">
<link rel="stylesheet" href="wardrobe.css">

<script src="node_modules/jquery/dist/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/egjs/1.3.0/pkgd/eg.pkgd.min.js"></script>

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
	        <a href="#"> 내 정보 수정 </a>
	    </li>
	    <li>
	        <a href="#"> 설정 </a>
	    </li>
	  </ul>
  </div>
  <div class="container">
  <div id="grid" class="row" style="opacity:0.01">
  </div>
    </div>
</div> <!-- //wardrobeContainer -->
<div class="container">
  <div id="grid" class="row" style="opacity:0.01">
  </div>
</div>

<script>
//서버로 붙일 데이터 가져오기
function getData(currentPageNo, groupNo, type) {
    $.ajax({      
        type:"POST",  
        url:"data.jsp",  //데이터를 내려주는 page URL    
        data:"pageNo="+currentPageNo,   
        dataType: "json",   
        success:function(list){   
          //서버에서 응답받으면 화면처리 메소드 호출
      var retHtml = '';
      $.each(list, function(i, obj){
        retHtml += '<div class="item"><div class="thumbnail"><a href="detailpage.jsp"><span class="img-box"></span><img class="img-rounded" src="'+obj.imgSrc+'"/></a><div class="caption">'+
        '<img class="profile" src="images/'+obj.profile+'"><p class="desc"><a href="'+obj.href+'">'+obj.desc+'</a></p><div class="text"><img class="iconLike" src="images/'+obj.iconLike+'">'+obj.text+'</div></div></div></div>';
      });
      console.log(groupNo); 
      if (type == 'append') { 
        ig.append(retHtml, groupNo);
      } else { 
        ig.prepend(retHtml, groupNo);
      }
        },   
        error:function(e){  
            alert(e.responseText);  
        }  
    });  
}

var ig;
$(function() {
  var $grid = $("#grid");

  ig = new eg.InfiniteGrid("#grid", {
    count : 80  //pagePerCnt 배수로 가야함 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  })
  .on({
    "append" : function(e) {
      var gk = this.getGroupKeys();
      var lastGk = gk[gk.length-1];
      lastGk++;
      getData(lastGk, lastGk, 'append');
    },
    "prepend" : function(e) {
      var firstGk = this.getGroupKeys()[0];
      firstGk--;
      if(firstGk >= 0) {
        getData(firstGk, firstGk, 'prepend');
      }
    },
    "layoutComplete" : function(e) {
      $grid.css("opacity", 1);
    }
  });

  //이 아래는 링크 눌러서 다른 화면갔다가 다시 돌아왔을때 위치를 가지고 있도록 하는 부분
  if ("scrollRestoration" in history) {
    history.scrollRestoration = "manual";
  }
  $grid.on("click", "a", function(e) {
    $.persist("GRID_PERSIST", {
      "scrollPos": $(document).scrollTop(),
      "grid": ig.getStatus()
    });
  });
  var persistData = $.persist("GRID_PERSIST");
  if($.isEmptyObject(persistData)) {
    getData(0, 0, 'append');
  } else {
    ig.setStatus(persistData.grid);
    window.scrollTo(0, persistData.scrollPos);
  }
});

$(".img-link").mouseover(function(){
      $(this).css("background","#fee707");
});

</script>

</body>
</html>