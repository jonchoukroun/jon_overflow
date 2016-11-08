$(document).ready(function() {
  var navTop = 50;
  var navBottom = 56;
  var windowHeight = parseInt($(window).height()) + navTop + navBottom;

  // Set title card to full browser height
  $('.title-card').height(windowHeight);

  // Auto scroll to top of categories preview
  $('.title-card').on('click', 'a.scroll-down', function(e) {
    e.preventDefault();

    $('html, body').animate({
      scrollTop: $('#main-content').offset().top - 50
    }, 700);
  });
});
