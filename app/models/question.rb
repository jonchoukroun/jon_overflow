class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers, dependent: :destroy
  # validates_associated :user

  validates_presence_of :title, :content, :user_id

  # Return 1st 3 words of content and ellipsis
  def preview
    self.content.split(' ')[0...3].join(' ') + '...'
  end

  def count_answers
    self.answers.count
  end

end
