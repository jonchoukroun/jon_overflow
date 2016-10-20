class Question < ActiveRecord::Base
  belongs_to :user
  delegate :name, to: :user
  has_many :answers, dependent: :destroy
  
  # validates_associated :user
  validates_presence_of :title, :content, :user_id

  # Query DB on user search parameters
  def self.search(search, category)
    where("title ILIKE ? OR content ILIKE ?", "%#{search}%", "%#{search}%")
      .where("category_id = ?", category)
  end
  
  # Return 1st 3 words of content and ellipsis
  def preview
    self.content.split(' ')[0...5].join(' ') + '...'
  end

  def count_answers
    self.answers.count
  end

end
