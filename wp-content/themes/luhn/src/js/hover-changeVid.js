var isHome = document.querySelector('.home') !== null;
if(isDesktop && isHome){
    var video = document.querySelector('#logo video');
    var overlay = document.querySelector('#logo .logo-overlay');
    var changers = document.querySelectorAll('.js-change_gif a');
    
    for(var i=0 ; i< changers.length; i++) {
        changers[i].addEventListener('mouseenter', function() {
            // show the animation
            overlay.classList.add("active");
            var x = this.parentElement.dataset.category*(video.videoWidth/4);
            
            // move image to correct letter
            overlay.style.transform = "translate("+x+"px,0)";
            // console.log(this.parentElement.dataset.category,image.offsetWidth, );
            
            video.style.transform = "translate(-"+x+"px,0)";
            
            // reset video
            BrowserDetect.browser == 'Explorer';
            var playPromise = video.play();
            if (playPromise !== null){
                playPromise.catch(() => { video.play(); })
            }
        });
        changers[i].addEventListener('mouseleave', function() {
            // hide animation
            overlay.classList.remove("active");
            video.currentTime = 0;
            video.pause();
        });        
    }	    
}
