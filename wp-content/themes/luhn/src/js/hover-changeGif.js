var isHome = document.querySelector('.home') !== null;

if(isDesktop && isHome){
    var image = document.querySelector('#logo img');
    var changers = document.getElementsByClassName('js-change_gif');
    
    for(var i=0 ; i< changers.length; i++) {
        changers[i].addEventListener('mouseenter', function() {
            getIdAndLoadGif(this,"new");
        });
        changers[i].addEventListener('mouseleave', function() {
            getIdAndLoadGif(this,"reset");
        });        
    }	
    
    function getIdAndLoadGif(changer, action) {		
        loadGif(parseInt(changer.dataset.category), action);
    }
    
    function loadGif(GifId,action) {		
        image.classList.add("js-fade_out");
        setTimeout(function() {
            image.classList.remove("js-fade_out");
            if(action=="new"){
                image.src= arrayOfImages[GifId];
            }else if(action=="reset"){
                image.src= arrayOfImages[0];
            }
        }, 300);
    }

    
    var arrayOfImages = [
        image.src,
        image.dataset.gif1,
        image.dataset.gif2,
        image.dataset.gif3,
        image.dataset.gif4
    ];
}