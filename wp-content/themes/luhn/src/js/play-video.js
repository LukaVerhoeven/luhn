var isSinglePage = document.querySelector('.single') !== null;
// load this script on a project page
if(isSinglePage) {
    

    
    $('#playvideo').on( "click", function() {
        console.log($(this).prev().find("iframe"));
        var playvideo = $(this);
        playvideo.prev().find("iframe")[0].src += "?autoplay=1";
        playvideo.addClass("hide-overlay");
        
        setTimeout(function() {
            playvideo.addClass("hide");
        }, 1000);
    });
    

    

}
