$(function() {
  $('#smallimage').hover(function() {
    var smallsrc = $(this).attr("src");
    $('#bigimage').attr("src", smallsrc).hide().fadeIn();
  });
})