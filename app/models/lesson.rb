class Lesson < ActiveRecord::Base
  belongs_to :course 
  
  validates :lesson_title, presence: true
  validates :lesson_title, length: { minimum: 5  maximum: 30 }
end
