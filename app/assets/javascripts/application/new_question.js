var NewQuestion = {
  bindListeners: function() {
    $('#main-content').on('click', 'a.new-question', this.toggleQuestionForm);
    $('#main-content').on('click', 'a.cancel-question', this.toggleQuestionForm);
  },

  toggleQuestionForm: function(e) {
    e.preventDefault();
    $('form#new_question').toggleClass('hidden');
    $('a.new-question').toggleClass('hidden');
    $('.container.error-messages').empty();
  }

}

$(document).ready(function() {
  NewQuestion.bindListeners();
});
