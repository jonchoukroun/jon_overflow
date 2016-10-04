var Vote = {
  init: function() {
    var upVote = $('a.btn.btn-default.vote-up');
    var downVote = $('a.btn.btn-default.vote-up');
    var voteCount = $('h4.vote-count');
    this.bindUpVote();
    // this.bindDownVote();
  },

  bindUpVote: function() {
    $(upVote).on('click', function(e) {
      e.preventDefault();
      console.log('up');
    })
  }

}
