var QuestionForm = {
  bindListeners: function() {
    $('#main-content').on('click', 'a.new-question',
      this.openForm);
    $('#main-content').on('click', 'a.question-edit',
      this.openForm);
    $('#main-content').on('click', 'a.cancel-question',
      this.closeForm);
  },

  toggleForm: function(e) {
    $('form.question-form').toggleClass('hidden');
    $('a.new-question').toggleClass('hidden');
    $('a.question-edit').toggleClass('hidden');
    $('.error-messages').empty();
    return false;
  },

  openForm: function(e) {
    e.preventDefault();
    QuestionForm.toggleForm();

    $('body').animate({
      scrollTop: $('form.question-form').offset().top - 50
    }, 700);
  },

  closeForm: function(e) {
    e.preventDefault();
    QuestionForm.toggleForm();

    $('body').animate({
      scrollTop: $('#main-content').offset().top - 50
    }, 700);
  }
}

$(document).ready(function() {
  QuestionForm.bindListeners();
});
