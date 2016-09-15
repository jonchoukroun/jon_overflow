class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy

  validates_presence_of :title, :content
  validates_associated :answers

  def count_votes
    self.up_votes + self.down_votes
  end
end