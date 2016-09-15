class Answer < ActiveRecord::Base
  belongs_to :question
  
  validates_presence_of :title, :content

  def count_votes
    self.up_votes + self.down_votes
  end
end
