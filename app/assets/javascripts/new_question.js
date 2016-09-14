// Toggle new question form visibility on questions index
$(document).ready(function() {
  $('a.new_question').on('click', function(e) {
    e.preventDefault();
    $('#new_question_form').toggleClass('hidden');
  });
})