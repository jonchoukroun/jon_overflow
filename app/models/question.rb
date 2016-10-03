class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  validates_associated :answers

  validates_presence_of :title, :content

  def count_votes
    self.up_votes - self.down_votes
  end
end
