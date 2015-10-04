class Course < ActiveRecord::Base
  has_many   :lessons
  belongs_to :user
  
   validates  :title, presence: true
   validates  :title, length: { minimum: 5  maximum: 30 }
end
