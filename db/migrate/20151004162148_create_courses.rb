class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :desciption
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
