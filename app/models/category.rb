class Category < ActiveRecord::Base
  has_many :questions
  # May not work
  validates_associated :questions

  def count_questions
    p self.questions.count
  end
end
