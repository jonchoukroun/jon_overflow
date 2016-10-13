class Answer < ActiveRecord::Base
  belongs_to :user
  delegate :name, to: :user

  belongs_to :question
  delegate :vote_score, to: :question

  acts_as_votable

  # Based on questions, this won't work
  # validates_associated :user
  # validates_associated :question
  validates_presence_of :content, :user_id, :question_id

  def vote_score
    self.get_upvotes.size - self.get_downvotes.size
  end

end
