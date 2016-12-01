$(function(){

	gnb()
	web()
	
})




function gnb(){
	
	$("#header>h1>a").mouseover(function(){
		$(this).child('img').attr('src','images/logo_gr.svg');
	});
    
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
	
    });
}

