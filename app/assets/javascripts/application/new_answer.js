var NewAnswer = {
  bindListeners: function() {
    $('#main-content').on('click', 'a.new-answer', this.toggleAnswerForm);
    $('#main-content').on('click', 'a.cancel-answer', this.toggleAnswerForm);
  },

  toggleAnswerForm: function(e) {
    e.preventDefault();
    $('form#new_answer').toggleClass('hidden');
    $('a.new-answer').toggleClass('hidden');
    $('.error-messages').empty();
  }
}

$(document).ready(function() {
  NewAnswer.bindListeners();
});
