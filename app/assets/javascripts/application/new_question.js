var NewQuestion = {
  bindListeners: function() {
    $('a.new-question').on('click', this.toggleQuestionForm);
    $('a.cancel-question').on('click', this.toggleQuestionForm);
  },

  toggleQuestionForm: function(e) {
    e.preventDefault();
    console.log('fuck');
    $('form#new_question').toggleClass('hidden');
    $('a.new-question').toggleClass('hidden');
    $('.container.error-messages').empty();
  }

}

$(document).ready(function() {
  NewQuestion.bindListeners();
});
