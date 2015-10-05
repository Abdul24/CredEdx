class Lesson < ActiveRecord::Base
  extend FriendlyId
  friendly_id :lesson_title, use: :slugged
  
  belongs_to :course 
  
  validates :lesson_title, presence: true
  validates :lesson_title, length: { minimum: 5,  maximum: 30 }
end
