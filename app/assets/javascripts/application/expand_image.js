var ExpandImage = {
  bindListeners: function() {
    $('#main-content').on('click', 'a.expand-image'
      , this.buildLightbox);
    $('#main-content').on('click', 'a.close-lightbox'
      , this.closeLightbox);
  },

  focusLightbox: function() {
    $('html, body').animate({
      scrollTop: $('#main-content .imageLightbox').offset().top - 50
    }, 700);
  },

  toggleAnswers: function() {
    $('#main-content').find('.answers-index').toggleClass('hidden');
  },

  buildLightbox: function(e) {
    e.preventDefault();
    // Find lightbox and answer background url
    var lightbox = $('#main-content').find('.imageLightbox');
    var background = $(this).closest('.full-answer')
      .css('background-image').split(' ');

    var imageUrl = background[8].replace('url(', '');


    // Add image and close link to lightbox
    lightbox.append(
      '<div class="close-lightbox">' +
        '<a class="close-lightbox">' +
          '<span class="glyphicon glyphicon-remove-circle"></span>' +
        '</a><br>' +
      '</div><!-- /.close-lightbox -->'
    )
    lightbox.append('<img src=' +imageUrl+ '>')

    // Scroll to lightbox
    ExpandImage.focusLightbox();

    // Hide answers
    ExpandImage.toggleAnswers();
    return false;
  },

  closeLightbox: function(e) {
    $('#main-content').find('.imageLightbox').empty();
    ExpandImage.toggleAnswers();
  }
}

$(document).ready(function() {
  ExpandImage.bindListeners();
});
