// it contains some jquery / change this selectors to your selectors ( be sure to add a Row-number to the iframe id and js-play-youtube)
var js_video = ".js-video";


var isSinglePage = document.querySelector('.single') !== null;
// load this script on a project page
if(isSinglePage) {
    $(js_video).click(function(){
        var videoID = this.getAttribute("data-video-id")
        var video = $("#video"+videoID)[0];
        var videoOverlay = $(this);
        
        if(video.paused == true){
            console.log(videoOverlay);
            video.play();
            // zie YT-iframe voor hideoverlay
            hideOverlay(videoOverlay);
        }

         video.addEventListener('pause', function(){
             // zie YT-iframe voor showOverlay
            showOverlay(videoOverlay);
        })
        
    });
   
}