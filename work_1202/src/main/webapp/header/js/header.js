$(function () {
    headerGnb()
})



// navigation show & hide
function headerGnb() {
    
    var $list = $(".hd-gnb-sub")
    var th = $list.height()
    var isPlay = false

    $list.hide();
    
    $("#hd-gnb>li>a").click(function () {

        if (!isPlay) {
            $(this).next().slideDown().show();
        } else {
            $list.slideUp();
        }

        isPlay = !isPlay

    });
    
}
