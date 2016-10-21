var PageTop = {
  bindListeners: function() {
    $('#main-content').on('click', 'a.top',
      this.scrollUp);
  },

  scrollUp: function(e) {
    e.preventDefault();
    $('body').animate({
      scrollTop: $('#main-content').offset().top - 60
    }, 500)
    return false;
  }
};

$(document).ready(function() {
  PageTop.bindListeners();
});
