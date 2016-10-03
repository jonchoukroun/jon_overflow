class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  validates_associated :answers

  validates_presence_of :title, :content

  def count_votes
    self.up_votes - self.down_votes
  end

  # Return 1st 3 words of content and ellipsis
  def preview
    self.content.split(' ')[0...3].join(' ') + '...'
  end
end
