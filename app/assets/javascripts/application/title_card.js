$(document).ready(function() {
  // Deduct body top+bottom margins from window height
  var navMargin = $('body').css('margin').slice(0, 2);
  var windowHeight = $(window).height() - navMargin;
  var windowWidth = $(window).width();

  // Sum height of all county boxes
  var countyHeights = function() {
    $('.category-box').each(function() {
      var sum = 0;
      return sum += $(this).height();
    });
  };

  // Set title card to full browser height
  $('.title-card').height(windowHeight);

  // Set main content min height to full browser height
  $('#main-content').css('min-height', countyHeights + navMargin);

  // Auto scroll to top of categories preview
  $('.title-card').on('click', 'a.scroll-down', function(e) {
    e.preventDefault();
    $('html, body').animate({
      scrollTop: $('#main-content').offset().top - navMargin
    }, 700);
  });
});
