$(document).ready(function() {
  // Deduct body top+bottom margins from window height
  var margins = $('body').css('margin').slice(0, 2) * 2;
  var windowHeight = $(window).height() - margins;

  // Set title card to full browser height
  $('.title-card').height(windowHeight);

  // Set main content min height to full browser height
  $('#main-content').css('min-height', windowHeight);
});
