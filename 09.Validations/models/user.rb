class User < ActiveRecord::Base
  has_many :recipes
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  
  # regex validation for email
  
end