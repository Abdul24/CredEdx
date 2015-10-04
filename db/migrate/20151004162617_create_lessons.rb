class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :desciption
      t.string :lesson_title
      t.integer :course_id
      t.string :video_id

      t.timestamps null: false
    end
  end
end
