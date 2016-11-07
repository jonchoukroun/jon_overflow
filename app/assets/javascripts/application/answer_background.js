// Globals for background image settings
var clear = 'rgba(0,0,0,0)';
var dark = 'rgba(0,0,0,0.7)';

// lighten background filter and hide text
showImage = function(answer, url) {
    $(answer).css({
      'background': 'linear-gradient('+clear+', '+clear+'),' +url,
      'background-size': 'cover',
      'background-repeat': 'no-repeat',
      'color': clear
    });
};

// Return to default, obstruct image & show text
darkenImage = function(answer, url) {
    $(answer).css({
      'background': 'linear-gradient('+dark+', '+dark+'),' +url,
      'background-size': 'cover',
      'background-repeat': 'no-repeat',
      'color': 'white'
    });
};

$(document).ready(function() {
  // Target full-answer
  $('#main-content').on('click', '.full-answer', function(e) {
    // Get background image url
    var background = $(this).css('background').split(' ');
    var url = background[20];

    // Toggle image visibility
    if (background[3] === '0),') {
      darkenImage(this, url);
    } else {
      showImage(this, url);
    }
  });
});
