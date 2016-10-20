var QuestionForm = {
  bindListeners: function() {
    $('#main-content').on('click', 'a.new-question',
      this.toggleQuestionForm);
    $('#main-content').on('click', 'a.question-edit',
      this.toggleQuestionForm);
    $('#main-content').on('click', 'a.cancel-question',
      this.toggleQuestionForm);
  },

  toggleQuestionForm: function(e) {
    e.preventDefault();
    $('form.question-form').toggleClass('hidden');
    $('a.new-question').toggleClass('hidden');
    $('a.question-edit').toggleClass('hidden');
    $('.error-messages').empty();
    $('body').animate({
      scrollTop: $('form.question-form').offset().top - 50
    }, 700);
    return false;
  }
}

$(document).ready(function() {
  QuestionForm.bindListeners();
});
