$(function() {
  // $('#smallimage').hover(function() {
  //   var smallsrc = $(this).attr("src");
  //   $('#bigimage').attr("src", smallsrc).hide().fadeIn();
  // });
  
  const bigPic = document.getElementById('bigimage');
  const smallimages = document.getElementById('smallimage');

  for(let smallimage of smallimages) {
    smallimage.addEventListener('mouseover', () => {
      console.log("yaa");
      bigPic.src = smallimage.src;
    })
  };
})