var NewQuestion = {
  bindListeners: function() {
    $('a.new-question').on('click', this.toggleQuestionForm)
                      .on('click', this.toggleLinkText);
  },

  toggleQuestionForm: function(e) {
    e.preventDefault();
    $('form#new_question').toggleClass('hidden');
  },

  toggleLinkText: function() {
    var linkText = $(this);
    var formStatus = $('form#new_question').attr('class');
    if (formStatus === 'hidden') {
      linkText.text('New Question');
    } else {
      linkText.text('Back');
    }
  }
}

$(document).ready(function() {
  NewQuestion.bindListeners();
})
