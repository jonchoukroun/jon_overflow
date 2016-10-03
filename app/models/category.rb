class Category < ActiveRecord::Base
  has_many :questions
  validates_associated :questions
end
