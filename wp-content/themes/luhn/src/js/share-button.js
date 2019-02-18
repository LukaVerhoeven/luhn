var isSinglePage = document.querySelector('.single') !== null;
// load this script on a project page
if(isSinglePage) {
   const shareButton = document.querySelectorAll("a.shareButton")

   shareButton[0].addEventListener("click", (e) => {
      for( let i=0; i < shareButton.length; i++ ) {
         shareButton[i].classList.toggle("open")
         shareButton[0].classList.remove("sent")
      }
   })

   for( let i=1; i < shareButton.length; i++ ) {
      
      shareButton[i].addEventListener("click", (e) => {
         
      for( let i=0; i < shareButton.length; i++ ) {
         shareButton[i].classList.toggle("open")
      }
      shareButton[0].classList.toggle("sent")
      })
   }
}