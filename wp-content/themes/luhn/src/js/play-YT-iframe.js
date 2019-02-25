// it contains some jquery / change this selectors to your selectors ( be sure to add a Row-number to the iframe id and js-play-youtube)
var js_iframe_class = "js-player";
var js_play         = "js-play";
var js_play_button  = "js-play-youtube" // selector with id

var isSinglePage = document.querySelector('.single') !== null;
// load this script on a project page
if(isSinglePage) {
    
    // 2. This code loads the IFrame Player API code asynchronously.
    var tag = document.createElement('script');
    tag.src = "https://www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);


    var jsplayer = $('.'+js_iframe_class+' iframe');
    var playerIDs = [];
    var allplayers = [];
    
    // console.log(jsplayer);
    for (var index = 0; index < jsplayer.length; index++) {
        playerIDs.push(jsplayer[index].id);
        
    }

    // 3. init player api on iframe (gets called if (2.) script is loaded)
    var player;
    function onYouTubeIframeAPIReady() {
        if(playerIDs.length){
            for(var i = 0; i < playerIDs.length;i++) {
                // get the number of the iframe id / ex: id="player1" => returns 1
                var index = playerIDs[i].substr(playerIDs[i].length - 1);
                // create a player for the iframe with the given ID and pass the index for play button
                createPlayer(playerIDs[i], index)
            }

        }
    }

    function createPlayer(id, index){
        allplayers[index] = new YT.Player(id, {
            // playerVars: { 'controls': 0 }, // zie functions.php
            events: {
              'onReady': onPlayerReady(index),
              'onStateChange': onPlayerStateChange
            }
          });
    }

    // iframe is ready to play
    function onPlayerReady(index) {
        // Add onclick event to play button for correct player
        document.querySelector('.'+ js_play_button + index).onclick = function() { 
            playvideo = this;
            allplayers[index].playVideo();

            // ↓↓↓↓↓ CUSTOMIZE THIS ↓↓↓↓↓
            playvideo.classList.add("hide-overlay");
            setTimeout(function() {playvideo.classList.add("hide"); }, 1000);
        }      
    }

    // activated when state of video is changed
    function onPlayerStateChange(e) {
        // if video is paused
        var playerID = $(e.target)[0]["a"].id;
        var playbutton = $("#"+playerID).parent().siblings(".js-play");
        var playerstate = e.target.getPlayerState();
        
        switch(playerstate) {
            case 0 :
                // video ended
                showOverlay(playbutton);
                // console.log(playerstate, "ended");
                break;
            case 1:
                // video playing
                hideOverlay(playbutton);
                // console.log(playerstate, "playing");
                break;
            case 2:
                // video paused
                showOverlay(playbutton);
                // console.log(playerstate, "paused");
                break;
            case 3:
                // video buffering
                hideOverlay(playbutton);
                // console.log(playerstate, "buffering");
                break;                 
              break;
            default:
          }  
    }

    // ↓↓↓↓↓ CUSTOMIZE THIS ↓↓↓↓↓
var timeout_ID = 0;
    function hideOverlay(playbutton){
        // Clear settimout of showOverlay( when quickly switching between pause and play ) 
        window.clearTimeout(timeout_ID); 
        // add hide classes
        if(!playbutton.hasClass("hide-overlay")){
            playbutton.addClass("hide-overlay");
        }
        if(!playbutton.hasClass("hide")){
            timeout_ID = setTimeout(function() {playbutton.addClass("hide"); }, 1000);
        }        
    }

    function showOverlay(playbutton){
        // Clear settimout of showOverlay( when quickly switching between pause and play ) 
        window.clearTimeout(timeout_ID);
        // remoive hide classes
        if(playbutton.hasClass("hide")){
            timeout_ID = playbutton.removeClass("hide");
        }
        if(playbutton.hasClass("hide-overlay")){
            timeout_ID = setTimeout(function() {playbutton.removeClass("hide-overlay"); }, 100);
        }        
    }

}
