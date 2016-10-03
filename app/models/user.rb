class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  validates_associated :questions
  validates_associated :answers

  # User bcrypt for authentication
  has_secure_password
end
