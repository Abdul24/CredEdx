class Course < ActiveRecord::Base
  has_many   :lessons
  belongs_to :user
  
   validates  :title, presence: true
   
end
