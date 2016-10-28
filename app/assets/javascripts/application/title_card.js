$(document).ready(function() {
  // Deduct body top+bottom margins from window height
  var navMargin = parseInt($('body').css('margin').slice(0, 2));
  var windowHeight = $(window).height();
  var windowWidth = $(window).width();

  // Set title card to full browser height
  $('.title-card').height(windowHeight);

  // Set main content min height to full window height
  $('#main-content').css('min-height', windowHeight);

  // Auto scroll to top of categories preview
  $('.title-card').on('click', 'a.scroll-down', function(e) {
    e.preventDefault();

    $('html, body').animate({
      scrollTop: $('#main-content').offset().top - navMargin
    }, 700);
  });
});
