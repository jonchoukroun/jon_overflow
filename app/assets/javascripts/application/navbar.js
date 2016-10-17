$(document).ready(function() {
  // Target all links in navbar except categories dropdown
  var closeLinks = $('#navigation-menu a').not('a.dropdown-toggle');

  // Collapse navbar on link click (bypass Bootstrap default)
  $(closeLinks).on('click', function() {
    $('.navbar-collapse').collapse('hide');
    $('li.dropdown').toggleClass('open');
  });
});
