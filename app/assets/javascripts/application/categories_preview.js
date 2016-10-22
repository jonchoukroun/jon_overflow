$(document).ready(function() {
  var navMargins = $('body').css('margin').slice(0, 2) * 2;
  var windowHeight = $(window).height() - navMargins;

  var containerHeight = $('.category-preview').height();
  var containerMargin = (windowHeight / 2) - (containerHeight / 2);

  if (window.matchMedia('(min-width: 768px)').matches) {
    $('.category-preview').css('padding-top', containerMargin)
  }
});
