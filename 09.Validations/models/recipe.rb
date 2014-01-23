class Recipe < ActiveRecord::Base
  belongs_to :user
  validates :name, uniqueness: true, presence: true
  
  # validation range for difficulty
  
end
