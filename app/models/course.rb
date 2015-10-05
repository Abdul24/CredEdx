class Course < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many   :lessons
  belongs_to :user
  
  validates  :title, presence: true
  validates  :title, length: { minimum: 5,  maximum: 30 }
end
