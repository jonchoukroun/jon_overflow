var UserLightbox = {
  bindListeners: function() {
    // Lightbox with login form
    $('body').on('click', 'a.user-login', this.toggleLightbox);

    // Lightbox with signup form
    $('body').on('click', 'a.user-signup', this.toggleLightbox);

    // Close lightbox
    $('body').on('click', 'a.close-lightbox', this.closeLightbox);

    // Change from login to signup
    $('body').on('click', 'a.convert-form', this.convertForm)
  },

  toggleLightbox: function() {
    $('#content').toggleClass('hidden');
    $('#lightbox-container').toggleClass('hidden');
    $('.intro-buttons').toggleClass('hidden');
    $('.footer').toggleClass('hidden');
  },

  closeLightbox: function(e) {
    e.preventDefault();
    $('#lightbox-container').empty();
    UserLightbox.toggleLightbox();
  },

  convertForm: function() {
    $('#lightbox-container').empty();
    UserLightbox.toggleLightbox();
    UserLightbox.toggleLightbox();
  }
}

$(document).ready(function() {
  UserLightbox.bindListeners();
});
