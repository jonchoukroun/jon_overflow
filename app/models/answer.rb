class Answer < ActiveRecord::Base
  belongs_to :user
  delegate :name, to: :user

  belongs_to :question
  delegate :vote_score, to: :question

  acts_as_votable

  validates_presence_of :content, :user_id, :question_id

  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => /^image\/(png|gif|jpeg|jpg)/

  def vote_score
    self.get_upvotes.size - self.get_downvotes.size
  end

end
