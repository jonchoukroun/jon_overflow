var NewQuestion = {
  bindListeners: function() {
    $('a.new-question').on('click', this.toggleQuestionForm);
  },

  toggleQuestionForm: function(e) {
    e.preventDefault();
    $('form#new_question').toggleClass('hidden');
    $(this).html('<p>').append('Back');
  }
}

$(document).ready(function() {
  NewQuestion.bindListeners();
})
