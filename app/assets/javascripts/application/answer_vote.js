var AnswerVote = {
  bindListeners: function() {
    $('#main-content').on('ajax:success', 'a.agree', this.increaseCount);
    $('#main-content').on('ajax:success', 'a.disagree', this.decreaseCount);
  },

  increaseCount: function(e) {
    e.preventDefault();
    var rating = $(this).closest('.vote-count');
    console.log(rating);
    var num = parseInt(rating.text());
    rating.text(num + 1);
  },

  decreaseCount: function(e) {
    e.preventDefault();
    var rating = $(this).closest('.vote-count');
    console.log(rating);
    var num = parseInt(rating.text());
    rating.text(num - 1);
  }
}

$(document).ready(function() {
  AnswerVote.bindListeners();
});
