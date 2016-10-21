var NewAnswer = {
  bindListeners: function() {
    $('#main-content').on('click', 'a.new-answer', this.toggleAnswerForm);
    $('#main-content').on('click', 'a.cancel-answer', this.toggleAnswerForm);
  },
  
  scrollBody: function(e) {
    var target = $(e.target).attr('class');
    if (target === 'btn btn-default new-answer hidden') {
      console.log('open');
      $('body').animate({
        scrollTop: $('form#new_answer').offset().top
      }, 700);
    } else {
      console.log(target);
      $('body').animate({
        scrollTop: $('.question').offset().top - 60
      }, 700);
    }
  },

  toggleAnswerForm: function(e) {
    e.preventDefault();
    $('form#new_answer').toggleClass('hidden');
    $('a.new-answer').toggleClass('hidden');
    $('.error-messages').empty();
    NewAnswer.scrollBody(e);
    return false;
  }
}

$(document).ready(function() {
  NewAnswer.bindListeners();
});
