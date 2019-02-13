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
    var vertical_displacement   = 0;
    var horizontal_displacement = 0;
    var movement_counter        = 1;
    // var movement_correction     = 2;
    var isAnimating             = 0;

    // mobile single carousel
    if ($(window).width() < 1024) {

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
                noMoreSlides(nextButton);
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
                noMoreSlides(prevButton);
            }
        })

    // desktop 3 item carousel        
    }else {
        
        var current_active_item = item.slice(0,3).addClass(active_class);
        var tile1 = item.slice(0,1).css("margin-top","30%");
        var tile2 = item.slice(1,2).css("margin-top","15%");
        var tile2 = item.slice(1,2).css("z-index","-1");
        var tile3 = item.slice(2,3).css("z-index",-2);
        console.log(tile1, tile2);
    }    

    function noMoreSlides(button){
        if(!isAnimating){
            isAnimating = 1;
            button.addClass('no-more-slide');
            timeout_ID = setTimeout(function() {
                button.removeClass("no-more-slide"); 
                isAnimating = 0;
            }, 500);
        }
    }

}