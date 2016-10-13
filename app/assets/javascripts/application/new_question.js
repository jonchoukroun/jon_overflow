var NewQuestion = {
  bindListeners: function() {
    $('#main-content').on('click', 'a.new-question',
      this.toggleQuestionForm);
    $('#main-content').on('click', 'a.cancel-question',
      this.toggleQuestionForm);
  },

  toggleQuestionForm: function(e) {
    e.preventDefault();
    $('form#new_question').toggleClass('hidden');
    $('a.new-question').toggleClass('hidden');
    $('.error-messages').empty();
    $('body').animate({
      scrollTop: $('form#new_question').offset().top
    }, 700);
    return false;
  }
}

$(document).ready(function() {
  NewQuestion.bindListeners();
});
