$(function() {
  $('#smallimage').hover(function() {
    var smallsrc = $(this).attr("src");
    $('#bigimage').attr("src", smallsrc).hide().fadeIn();
  });
  // const bigPic = document.getElementById('bigimage');
  // const thumbs = document.getElementById('smallimage');

  // for(let smallimage of thumbs) {
  //   smallimage.addEventListener('mouseover', () => {
  //     bigPic.src = smallimage.src;
  //   })
  // };
})