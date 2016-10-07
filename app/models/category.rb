class Category < ActiveRecord::Base
  has_many :questions
  # May not work
  validates_associated :questions

  def get_questions
    Category.joins(:questions)
  end

  def count_questions
    get_questions.count
  end
end
