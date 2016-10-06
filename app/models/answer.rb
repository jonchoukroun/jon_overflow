class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates_associated :user
  validates_associated :question
  validates_presence_of :content, :user_id, :question_id

  def count_votes
    self.up_votes - self.down_votes
  end
end
