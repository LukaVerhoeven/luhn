var isSinglePage = document.querySelector('.single') !== null;
// load this script on a project page
if(isSinglePage) {
    // parameters
    var carousel        = ".js-carousel";
    var next            = ".js-next";
    var prev            = ".js-prev";
    var active_class    = "active";
    var active_item     = $("."+ active_class);
    var item            = $(carousel + " li");
    var item_amount     = item.length;
    var item_width      = item.width();
    var item_height     = item.height();
    
    // variables
    var animationTime           = 300;
    var vertical_displacement   = 0;
    var horizontal_displacement = 0;
    var movement_counter        = 1;
    var isAnimating             = 0;

    // mobile single carousel
    if (!isDesktop) {

        // Add active class to first elemnt
        var current_active_item = item.first().addClass(active_class);
        
        $(next).on( "click", function(e) {
            e.preventDefault();
            var nextButton = $(this);
            if(movement_counter>-(item_amount-2)){
                // translate position
                movement_counter -= 1;
                vertical_displacement -= item_width;
                item.css("transform", "translate("+ vertical_displacement+"px, 0)");
                
                // toggle opacity to next element
                current_active_item.removeClass(active_class);
                current_active_item = current_active_item.next().addClass(active_class);
            }else{
                noMoreSlides(nextButton,"next");
            }
        });
        
        
        $(prev).click(function(e){
            e.preventDefault();
            var prevButton = $(this);
            if(movement_counter<1){
                // translate position
                movement_counter += 1;
                vertical_displacement += item_width;
                item.css("transform", "translate("+ vertical_displacement+"px, 0)");
                
                // toggle opacity to prev element
                current_active_item.removeClass(active_class);
                current_active_item = current_active_item.prev().addClass(active_class);        
            }else{
                noMoreSlides(prevButton,"prev");
            }
        })
        
    // desktop 3 item carousel        
    }else {
        var tile_prev = 0;
        var tile1 = item.slice(0,1).addClass("js-active1");
        var tile2 = item.slice(1,2).addClass("js-active2");
        var tile3 = item.slice(2,3).addClass("js-active3");
        var tile_next = item.slice(3,4).addClass("js-active-next");
        var SlidingAnimation = 0;

        $(prev).on( "click", function(e) {
            fixedHeight();
            e.preventDefault();
            SlidingAnimation= 1;
            setTimeout(function() { SlidingAnimation =0; }, animationTime);
            console.log("next");
            
            var nextButton = $(this);
            if(movement_counter>-(item_amount-4)){
                // translate position
                movement_counter -= 1;
                vertical_displacement -= item_width;
                item.css("transform", "translate("+ vertical_displacement+"px, 0) scale(1.2)");
                
                // toggle opacity to next element
                tile_prev   = tile1.removeClass("js-active1").addClass("js-active-prev");
                tile1       = tile2.removeClass("js-active2").addClass("js-active1");
                tile2       = tile3.removeClass("js-active3").addClass("js-active2");
                tile3       = tile_next.removeClass("js-active-next").addClass("js-active3");
                tile_next   = tile_next.next().addClass("js-active-next");
            }else{
                noMoreSlides(nextButton, "next");
            }
        });        

        $(next).click(function(e){
            e.preventDefault();
            SlidingAnimation= 1;
            setTimeout(function() { SlidingAnimation =0; }, animationTime);
            var prevButton = $(this);
            if(movement_counter<1){
                // translate position
                movement_counter += 1;
                vertical_displacement += item_width;
                item.css("transform", "translate("+ vertical_displacement+"px, 0) scale(1.2)");
                
                // toggle opacity to prev element
                tile_next.removeClass("js-active-next");
                tile_next   = tile3.removeClass("js-active3").addClass("js-active-next");
                tile3       = tile2.removeClass("js-active2").addClass("js-active3");
                tile2       = tile1.removeClass("js-active1").addClass("js-active2");
                tile1       = tile_prev.removeClass("js-active-prev").addClass("js-active1");
                tile_prev   = tile1.prev().addClass("js-active-prev");   
            }else{
                noMoreSlides(prevButton,"prev");
            }
        })

        // scale item on hover
        var translateX;
        item.mouseover(function(){
            if(!SlidingAnimation && !isAnimatingLastSlide){
                translateX = getTranslateX($(this));
                $(this).css("transform", "translate("+ translateX+"px, 0) scale(1.3)")
            }
            
        })
        item.mouseleave(function(){
            if(!SlidingAnimation && !isAnimatingLastSlide){
                translateX = getTranslateX($(this));
                $(this).css("transform", "translate("+ translateX+"px, 0) scale(1.2)")
            }
            
        })        

    }    

    // animation when reaching the last slide

    var isAnimatingLastSlide=0;
    function noMoreSlides(button,direction){
        if(!isAnimating){
            isAnimating = 1;
            button.addClass('no-more-slide');
            timeout_ID = setTimeout(function() {
                button.removeClass("no-more-slide"); 
                isAnimating = 0;
            }, 500);
        }
        if(isDesktop){
            if(!isAnimatingLastSlide){
                isAnimatingLastSlide = 1;
                var currentTranslateX = parseInt(getTranslateX(item),10);
                setTimeout(function() { isAnimatingLastSlide =0; }, animationTime*2);
                if(direction=="next"){
                    var movementX = (-item_width/3) + currentTranslateX;
                    var movementY = "15%";
                } else if(direction=="prev"){
                    var movementX = (item_width/3) + currentTranslateX;
                    var movementY = "-15%";
                }
    
                item.css("transform", "translate("+ movementX+"px, "+ movementY+") scale(1.2)");
                setTimeout(function() {
                    item.css("transform", "translate("+ currentTranslateX+"px,0) scale(1.2)");
                }, animationTime);
             
            }
        }
    }

    // the height of the ul changes => this makes it fixed
    var fixHeight = 0;
    function fixedHeight(){
        if(!fixHeight){
            var heightFix = $(carousel).outerHeight();
            $(carousel).css("max-height", heightFix);
            fixHeight = 1;
        }
    }

    // Obtain the translateX of the transform property of an item
    function getTranslateX(obj){
        var transformMatrix = obj.css("-webkit-transform") ||
          obj.css("-moz-transform")    ||
          obj.css("-ms-transform")     ||
          obj.css("-o-transform")      ||
          obj.css("transform");
        var matrix = transformMatrix.replace(/[^0-9\-.,]/g, '').split(',');
        var x = matrix[12] || matrix[4];//translate x
        // var y = matrix[13] || matrix[5];//translate y
        return x;
    }
}