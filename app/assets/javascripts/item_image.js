$(function() {
  const bigPic = document.getElementById('bigPic');
  const thumbs = document.getElementsById('thumb');

  for(let thumb of thumbs) {
    thumb.addEventListener('mouseover', () => {
      bigPic.src = thumb.src;
    })
  }
})

// $(function() {
//   $('#smallimage').hover(function() {
//     var index = $('#smallimage').index(this);
//     var smallsrc = $(this).eq(index).find('img').attr("src");
//     className = $(this).parent().attr('class')
//     $('#bigimage').attr("src", smallsrc).hide().fadeIn();
//   });
// })