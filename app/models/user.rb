class User < ActiveRecord::Base
  # Ensure email uniqueness with case insensitivity
  before_save { self.email = email.downcase }
  
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  acts_as_voter

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,     presence: true, length: { maximum: 50 },
                       uniqueness: true
  validates :email,    presence: true, format: { with: VALID_EMAIL_REGEX },
                       uniqueness: { case_sensitive: false } 
  validates :password, presence: true, length: { minimum: 6 }

  # Use bcrypt for authentication
  has_secure_password

end
