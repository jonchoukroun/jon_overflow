class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers, dependent: :destroy
  # validates_associated :user

  validates_presence_of :title, :content, :user_id

  # Eventually count array of user_ids
  # def count_votes
    # self.up_votes - self.down_votes
  # end

  # Return 1st 3 words of content and ellipsis
  def preview
    self.content.split(' ')[0...3].join(' ') + '...'
  end
end
