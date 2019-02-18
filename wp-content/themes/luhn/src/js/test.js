// var PreviousScroll = $(window).scrollTop();
// var isAnimating= false;
// var elemntTop =  $(".intro-block").offset()["top"];
// $(window).scroll(function () {
//     $('.intro-block').css({"transition":"transfrom"});​
//     $('.intro-block').css({"transform":"translate(100px,100px)"});​
// //     var currentScroll = $(this).scrollTop()+1;




//     var ScrollAmount = currentScroll-PreviousScroll;
    
//     var margin = (elemntTop/currentScroll)*ScrollAmount
//     console.log( currentScroll ,(elemntTop/currentScroll));
//     $(".intro-block").animate({ "margin-top": margin+"px" },0,function(){});
//     // $('.intro-block').animate({
//     //     step: function(now,fx) {
//     //       $(this).css('-webkit-transform','translateX('+margin+'deg)'); 
//     //     },
//     //     duration: 200 
//     // },'ease');    

//     if(!isAnimating){
//         isAnimating = true;
//     setTimeout(function() { 
//             console.log(isAnimating);
//             $(".intro-block").animate({ "margin-top": 0+"px" },200,function(){
//                 isAnimating = false;
//                 console.log(isAnimating);
//             });
//         }, 200);
//     }
 
// });