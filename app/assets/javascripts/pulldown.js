$(function(){
  $('#user-name').click(function() {
    $('#pulldown').slideDown();
    $('#user-name').click(function() {
      $('#pulldown').slideUp();
    });
  });
})