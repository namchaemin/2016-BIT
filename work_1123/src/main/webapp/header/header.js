$(function(){

	gnb()
	web()
	
})




function gnb(){
    
    var $list = $(".sub")
	var th = $list.height()
	var isPlay = false
    
    $list.hide();
	
	$("#gnb>li>a").click(function(){
        
		if(!isPlay){
			$(this).next().slideDown().show();
		}else{
			$list.slideUp();
		}
        
		isPlay = !isPlay
		
		return false;
	
    });
	
	$("#gnb>li>a").mouseover(function(){
		$(this).css("background","#fee707")
	});
	
	$("#gnb>li>a").mouseleave(function(){
		$(this).css("background","none")
	});

}


function web() {

	
}	