var clear = 'rgba(0,0,0,0)';
var dark = 'rgba(0,0,0,0.7)';

showImage = function(answer, url) {
    $(answer).css({
      'background': 'linear-gradient('+clear+', '+clear+'),' +url,
      'color': clear
    });
};

darkenImage = function(answer, url) {
    $(answer).css({
      'background': 'linear-gradient('+dark+', '+dark+'),' +url,
      'color': 'white'
    });
};

$(document).ready(function() {
  // Target full-answer
  $('#main-content').on('click', '.full-answer', function(e) {
    // Get background image url
    var background = $(this).css('background').split(' ');
    console.log(background);
    var url = background[20];

    // Toggle image visibility
    if (background[3] === '0),') {
      darkenImage(this, url);
    } else {
      showImage(this, url);
    }
  });
});
