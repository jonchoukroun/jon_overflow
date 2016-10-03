class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates_presence_of :content

  def count_votes
    self.up_votes - self.down_votes
  end
end
