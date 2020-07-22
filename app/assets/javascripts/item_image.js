$(function() {
  $('#smallimage').hover(function() {
    var index = $('#smallimage').index(this);
    var smallsrc = $(this).eq(index).find('img').attr("src");
    className = $(this).parent().attr('class')
    $('#bigimage').attr("src", smallsrc).hide().fadeIn();
  });
})