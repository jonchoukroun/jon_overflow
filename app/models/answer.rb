class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  acts_as_votable

  # Based on questions, this won't work
  # validates_associated :user
  # validates_associated :question
  validates_presence_of :content, :user_id, :question_id

  def responder
    User.find_by(id: self.user_id).name
  end

  def agreement_rating
    self.get_upvotes.size - self.get_downvotes.size
  end

end
