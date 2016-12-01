$(function(){
	wardrobe();
})

function wardrobe() {
	
	$(".wardrobeThumb").hover(function(){
		$(this).stop().animate({backgroundSize: "130%"}, 300);
	});
	
	$(".wardrobeThumb").mouseleave(function(){
		$(this).stop().animate({backgroundSize: "120%"}, 300);
	});
	
}
